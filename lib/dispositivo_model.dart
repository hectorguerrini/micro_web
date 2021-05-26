class DispositivoModel {
  final int estado;
  final int controleAutomatico;

  DispositivoModel({required this.estado, required this.controleAutomatico});
  factory DispositivoModel.fromJson(Map<String, dynamic> json) {
    return DispositivoModel(
        estado: int.parse(json['estado']),
        controleAutomatico: int.parse(json['controleAutomatico']));
  }
}
