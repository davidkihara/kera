// To parse this JSON data, do
//
//     final foodRecipe = foodRecipeFromJson(jsonString);

import 'dart:convert';

FoodRecipe foodRecipeFromJson(String str) =>
    FoodRecipe.fromJson(json.decode(str));

String foodRecipeToJson(FoodRecipe data) => json.encode(data.toJson());

class FoodRecipe {
  FoodRecipe({
    required this.id,
    required this.title,
    required this.difficulty,
    required this.portion,
    required this.time,
    required this.description,
    required this.ingredients,
    required this.method,
    required this.image,
  });

  String id;
  String title;
  String difficulty;
  String portion;
  String time;
  String description;
  List<String> ingredients;
  List<Method> method;
  String image;

  factory FoodRecipe.fromJson(Map<String, dynamic> json) => FoodRecipe(
        id: json["id"],
        title: json["title"],
        difficulty: json["difficulty"],
        portion: json["portion"],
        time: json["time"],
        description: json["description"],
        ingredients: List<String>.from(json["ingredients"].map((x) => x)),
        method:
            List<Method>.from(json["method"].map((x) => Method.fromJson(x))),
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "difficulty": difficulty,
        "portion": portion,
        "time": time,
        "description": description,
        "ingredients": List<dynamic>.from(ingredients.map((x) => x)),
        "method": List<dynamic>.from(method.map((x) => x.toJson())),
        "image": image,
      };
}

class Method {
  Method({
    this.step1,
    this.step2,
  });

  String? step1;
  String? step2;

  factory Method.fromJson(Map<String, dynamic> json) => Method(
        step1: json["Step 1"],
        step2: json["Step 2"],
      );

  Map<String, dynamic> toJson() => {
        "Step 1": step1,
        "Step 2": step2,
      };
}
