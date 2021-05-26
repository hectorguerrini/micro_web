// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<bool>? _$stateLampadaComputed;

  @override
  bool get stateLampada =>
      (_$stateLampadaComputed ??= Computed<bool>(() => super.stateLampada,
              name: '_HomeControllerBase.stateLampada'))
          .value;
  Computed<bool>? _$stateACComputed;

  @override
  bool get stateAC => (_$stateACComputed ??= Computed<bool>(() => super.stateAC,
          name: '_HomeControllerBase.stateAC'))
      .value;

  final _$flagsAtom = Atom(name: '_HomeControllerBase.flags');

  @override
  FlagsModel? get flags {
    _$flagsAtom.reportRead();
    return super.flags;
  }

  @override
  set flags(FlagsModel? value) {
    _$flagsAtom.reportWrite(value, super.flags, () {
      super.flags = value;
    });
  }

  final _$logAtom = Atom(name: '_HomeControllerBase.log');

  @override
  LogModel? get log {
    _$logAtom.reportRead();
    return super.log;
  }

  @override
  set log(LogModel? value) {
    _$logAtom.reportWrite(value, super.log, () {
      super.log = value;
    });
  }

  final _$lampadaAtom = Atom(name: '_HomeControllerBase.lampada');

  @override
  EstadoModel get lampada {
    _$lampadaAtom.reportRead();
    return super.lampada;
  }

  @override
  set lampada(EstadoModel value) {
    _$lampadaAtom.reportWrite(value, super.lampada, () {
      super.lampada = value;
    });
  }

  final _$arcondicionadoAtom = Atom(name: '_HomeControllerBase.arcondicionado');

  @override
  EstadoModel get arcondicionado {
    _$arcondicionadoAtom.reportRead();
    return super.arcondicionado;
  }

  @override
  set arcondicionado(EstadoModel value) {
    _$arcondicionadoAtom.reportWrite(value, super.arcondicionado, () {
      super.arcondicionado = value;
    });
  }

  final _$getFlagsAsyncAction = AsyncAction('_HomeControllerBase.getFlags');

  @override
  Future<void> getFlags() {
    return _$getFlagsAsyncAction.run(() => super.getFlags());
  }

  final _$getLogsAsyncAction = AsyncAction('_HomeControllerBase.getLogs');

  @override
  Future<void> getLogs() {
    return _$getLogsAsyncAction.run(() => super.getLogs());
  }

  final _$buttomACAsyncAction = AsyncAction('_HomeControllerBase.buttomAC');

  @override
  Future<void> buttomAC(bool toggle, bool ligar) {
    return _$buttomACAsyncAction.run(() => super.buttomAC(toggle, ligar));
  }

  final _$buttomLampadaAsyncAction =
      AsyncAction('_HomeControllerBase.buttomLampada');

  @override
  Future<void> buttomLampada(bool toggle, bool ligar) {
    return _$buttomLampadaAsyncAction
        .run(() => super.buttomLampada(toggle, ligar));
  }

  final _$changeStatusLampadaAutomaticoAsyncAction =
      AsyncAction('_HomeControllerBase.changeStatusLampadaAutomatico');

  @override
  Future<void> changeStatusLampadaAutomatico() {
    return _$changeStatusLampadaAutomaticoAsyncAction
        .run(() => super.changeStatusLampadaAutomatico());
  }

  final _$changeStatusACAutomaticoAsyncAction =
      AsyncAction('_HomeControllerBase.changeStatusACAutomatico');

  @override
  Future<void> changeStatusACAutomatico() {
    return _$changeStatusACAutomaticoAsyncAction
        .run(() => super.changeStatusACAutomatico());
  }

  @override
  String toString() {
    return '''
flags: ${flags},
log: ${log},
lampada: ${lampada},
arcondicionado: ${arcondicionado},
stateLampada: ${stateLampada},
stateAC: ${stateAC}
    ''';
  }
}
