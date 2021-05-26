import 'package:dio/dio.dart';
import 'package:micro_web/estado_model.dart';
import 'package:micro_web/flags_model.dart';
import 'package:micro_web/home_repository_interface.dart';
import 'package:micro_web/log_model.dart';

class HomeRepository implements IHomeRepository {
  final Dio dio = Dio();
  final String _url = 'http://raspberrypi.local:8000/api';
  @override
  Future<EstadoModel> desligarAC() async {
    var response = await dio.get('$_url/arcondicionado/desligar');
    return EstadoModel.fromJson(response.data);
  }

  @override
  Future<EstadoModel> desligarLampada() async {
    var response = await dio.get('$_url/lampada/desligar');
    return EstadoModel.fromJson(response.data);
  }

  @override
  Future<FlagsModel> getFlags() async {
    var response = await dio.get('$_url/flags');
    return FlagsModel.fromJson(response.data);
  }

  @override
  Future<EstadoModel> ligarAC() async {
    var response = await dio.get('$_url/arcondicionado/ligar');
    return EstadoModel.fromJson(response.data);
  }

  @override
  Future<EstadoModel> ligarLampada() async {
    var response = await dio.get('$_url/lampada/ligar');
    return EstadoModel.fromJson(response.data);
  }

  @override
  Future<FlagsModel> putFlags(String dispositivo, int flag) async {
    var response = await dio.put('$_url/flags/$dispositivo/$flag');
    return FlagsModel.fromJson(response.data);
  }

  @override
  Future<EstadoModel> toggleAC() async {
    var response = await dio.get('$_url/arcondicionado/toggle');
    return EstadoModel.fromJson(response.data);
  }

  @override
  Future<EstadoModel> toggleLampada() async {
    var response = await dio.get('$_url/lampada/toggle');
    return EstadoModel.fromJson(response.data);
  }

  @override
  Future<LogModel> getLog() async {
    var response = await dio.get('$_url/log');
    return LogModel.fromJson(response.data);
  }
}
