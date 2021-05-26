import 'package:flutter_test/flutter_test.dart';

import 'package:micro_web/home_repository_interface.dart';
import 'package:micro_web/log_model.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter/services.dart' show rootBundle;

class HomeRepositoryMock extends Mock implements IHomeRepository {
  @override
  getLog() async {
    var value = await rootBundle.loadString('assets/test.json');
    return LogModel.fromJson(value as Map<String, dynamic>);
  }
}

void main() {
  var repository = HomeRepositoryMock();
  // var controller = HomeController(repository: HomeRepositoryMock());

  test('get log', () async {
    var response = await repository.getLog();
    expect(response.ac.estado, 0);
  });
}
