import 'dht_model.dart';
import 'dispositivo_model.dart';
import 'flags_model.dart';
import 'ldr_model.dart';

class LogModel {
  final DateTime dateTime;
  final DispositivoModel ac;
  final DispositivoModel lampada;
  final DhtModel dht;
  final LdrModel ldr;
  final FlagsModel flags;

  LogModel(
      {required this.dateTime,
      required this.ac,
      required this.lampada,
      required this.dht,
      required this.ldr,
      required this.flags});

  factory LogModel.fromJson(Map<String, dynamic> json) {
    return LogModel(
      dateTime: DateTime.parse(json['datetime']),
      ac: DispositivoModel.fromJson(json['arCondicionado']),
      lampada: DispositivoModel.fromJson(json['lampada']),
      dht: DhtModel.fromJson(json['dht']),
      ldr: LdrModel.fromJson(json['ldr']),
      flags: FlagsModel.fromJson(json['flagsControleAutomatico']),
    );
  }
}
