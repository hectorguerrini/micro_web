class LdrModel {
  final double luminosidade;

  LdrModel({required this.luminosidade});

  String get getPercentLuminosidade => (luminosidade * 100).toStringAsFixed(2);

  factory LdrModel.fromJson(Map<String, dynamic> json) {
    return LdrModel(
      luminosidade: double.parse(json['luminosidade']),
    );
  }
}
