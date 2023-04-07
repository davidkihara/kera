// // To parse this JSON data, do
// //
// //     final foods = foodsFromJson(jsonString);

// import 'dart:convert';

// List<Foods> foodsFromJson(String str) =>
//     List<Foods>.from(json.decode(str).map((x) => Foods.fromJson(x)));

// String foodsToJson(List<Foods> data) =>
//     json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class Foods {
//   Foods({
//     required this.id,
//     required this.title,
//     required this.difficulty,
//     required this.image,
//   });

//   String id;
//   String title;
//   Difficulty difficulty;
//   String image;

//   factory Foods.fromJson(Map<String, dynamic> json) => Foods(
//         id: json["id"],
//         title: json["title"],
//         difficulty: difficultyValues.map[json["difficulty"]]!,
//         image: json["image"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "title": title,
//         "difficulty": difficultyValues.reverse[difficulty],
//         "image": image,
//       };
// }

// enum Difficulty { EASY, MEDIUM }

// final difficultyValues =
//     EnumValues({"Easy": Difficulty.EASY, "Medium": Difficulty.MEDIUM});

// class EnumValues<T> {
//   Map<String, T> map;
//   late Map<T, String> reverseMap;

//   EnumValues(this.map);

//   Map<T, String> get reverse {
//     reverseMap = map.map((k, v) => MapEntry(v, k));
//     return reverseMap;
//   }
// }

// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);

import 'dart:convert';

Food foodFromJson(String str) => Food.fromJson(json.decode(str));

String foodToJson(Food data) => json.encode(data.toJson());

class Food {
  Food({
    required this.id,
    required this.title,
    required this.difficulty,
    required this.image,
  });

  String id;
  String title;
  String difficulty;
  String image;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        title: json["title"],
        difficulty: json["difficulty"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "difficulty": difficulty,
        "image": image,
      };
}
