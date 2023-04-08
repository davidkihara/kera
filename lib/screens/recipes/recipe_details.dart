import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kera/models/recipes/food_recipe.dart';
import 'package:kera/models/recipes/foods.dart';
import 'package:kera/utils/app_apis.dart';
import 'package:http/http.dart' as http;

class RecipeDetails extends StatefulWidget {
  final Food myCurrentFood;
  // FoodRecipe foodRecipe;

  RecipeDetails({
    Key? key,
    required this.myCurrentFood,
    // required this.foodRecipe,
  }) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  bool isLoading = false;
  late Map<String, dynamic> foodRecipe = {};

  var thisFoodRecipe;
  @override
  void initState() {
    super.initState();
    _fetchRecipe();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _fetchRecipe();
            },
            icon: const Icon(
              Icons.refresh,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Image.network(
                      widget.myCurrentFood.image,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Center(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * .09,
                      decoration: const BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          widget.myCurrentFood.title,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Ingredients",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  thisFoodRecipe.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _fetchRecipe() async {
    setState(() {
      isLoading = true;
    });

    String recipeUrl = AppApi.RECIPE_URL + widget.myCurrentFood.id;

    var res = await http.get(
      Uri.parse(recipeUrl),
      headers: AppApi().setRecipeHeaders(),
    );
    var body = json.decode(res.body);

    print(body);

    // Map<String, dynamic> foodRecipeData = json.decode(res.body);
    // var data = FoodRecipe.fromJson(foodRecipeData);

    thisFoodRecipe = json.decode(res.body);

    // print(data);
    // setState(() {
    //   var thisFoodRecipe = body;
    // });

    setState(() {
      isLoading = false;
    });
  }
}
