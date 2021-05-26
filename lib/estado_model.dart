class EstadoModel {
  final int estado;

  EstadoModel({required this.estado});

  bool get ligado => estado == 1;

  factory EstadoModel.fromJson(Map<String, dynamic> json) {
    return EstadoModel(
      estado: json['estado'],
    );
  }
}
