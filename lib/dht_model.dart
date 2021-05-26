class DhtModel {
  final double umidade;
  final double temperatura;

  DhtModel({required this.umidade, required this.temperatura});
  factory DhtModel.fromJson(Map<String, dynamic> json) {
    return DhtModel(
        umidade: double.parse(json['umidade']),
        temperatura: double.parse(json['temperatura']));
  }
}
