import 'package:micro_web/estado_model.dart';
import 'package:micro_web/flags_model.dart';
import 'package:micro_web/log_model.dart';

abstract class IHomeRepository {
  Future<EstadoModel> ligarLampada();
  Future<EstadoModel> desligarLampada();
  Future<EstadoModel> toggleLampada();

  Future<EstadoModel> ligarAC();
  Future<EstadoModel> desligarAC();
  Future<EstadoModel> toggleAC();

  Future<FlagsModel> getFlags();
  Future<FlagsModel> putFlags(String dispositivo, int flag);

  Future<LogModel> getLog();
}
