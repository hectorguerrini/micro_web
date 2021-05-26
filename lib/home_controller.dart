import 'dart:async';
import 'package:micro_web/estado_model.dart';
import 'package:micro_web/flags_model.dart';
import 'package:mobx/mobx.dart';
import 'home_repository_interface.dart';
import 'log_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final IHomeRepository repository;

  _HomeControllerBase({required this.repository}) {
    getFlags();
    getLogs();
  }

  @observable
  FlagsModel? flags;
  @observable
  LogModel? log;

  @observable
  EstadoModel lampada = EstadoModel(estado: 0);

  @observable
  EstadoModel arcondicionado = EstadoModel(estado: 0);

  @computed
  bool get stateLampada => lampada.ligado;

  @computed
  bool get stateAC => arcondicionado.ligado;

  @action
  Future<void> getFlags() async {
    flags = await repository.getFlags();
  }

  @action
  Future<void> getLogs() async {
    log = await repository.getLog();
    Timer.periodic(Duration(seconds: 5), (timer) async {
      try {
        log = await repository.getLog();
      } catch (e) {
        log = null;
        print(e);
      }
    });
  }

  @action
  Future<void> buttomAC(bool toggle, bool ligar) async {
    if (toggle) {
      arcondicionado = await repository.toggleAC();
    } else if (ligar) {
      arcondicionado = await repository.ligarAC();
    } else {
      arcondicionado = await repository.desligarAC();
    }
    flags = await repository.putFlags('arCondicionado', 0);
  }

  @action
  Future<void> buttomLampada(bool toggle, bool ligar) async {
    if (toggle) {
      lampada = await repository.toggleLampada();
    } else if (ligar) {
      lampada = await repository.ligarLampada();
    } else {
      lampada = await repository.desligarLampada();
    }
    flags = await repository.putFlags('lampada', 0);
  }

  @action
  Future<void> changeStatusLampadaAutomatico() async {
    if (flags != null) {
      var status = flags!.lampada == 1 ? 0 : 1;
      flags = await repository.putFlags('lampada', status);
    }
  }

  @action
  Future<void> changeStatusACAutomatico() async {
    if (flags != null) {
      var status = flags!.arcondicionado == 1 ? 0 : 1;
      flags = await repository.putFlags('arCondicionado', status);
    }
  }
}
