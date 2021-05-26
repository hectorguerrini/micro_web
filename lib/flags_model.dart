class FlagsModel {
  final int lampada;
  final int arcondicionado;

  FlagsModel({required this.lampada, required this.arcondicionado});

  factory FlagsModel.fromJson(Map<String, dynamic> json) {
    return FlagsModel(
      lampada: int.parse(json['lampada']),
      arcondicionado: int.parse(json['arCondicionado']),
    );
  }
}
