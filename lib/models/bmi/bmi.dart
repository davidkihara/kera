import 'dart:convert';

Bmi bmiFromJson(String str) => Bmi.fromJson(json.decode(str));

String bmiToJson(Bmi data) => json.encode(data.toJson());

class Bmi {
  Bmi({
    required this.bmi,
    required this.bmiClass,
  });

  double bmi;
  String bmiClass;

  factory Bmi.fromJson(Map<String, dynamic> json) => Bmi(
        bmi: json["BMI"]?.toDouble(),
        bmiClass: json["Class"],
      );

  Map<String, dynamic> toJson() => {
        "BMI": bmi,
        "Class": bmiClass,
      };
}
