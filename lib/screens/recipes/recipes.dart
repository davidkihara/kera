import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kera/models/recipes/foods.dart';
import 'package:kera/screens/recipes/recipe_details.dart';
import 'package:kera/screens/widgets/widgets/custom_image.dart';
import 'package:kera/screens/widgets/widgets/favorite_box.dart';
import 'package:kera/utils/app_apis.dart';
import 'package:http/http.dart' as http;
import 'package:kera/utils/app_colors.dart';

class Recipes extends StatefulWidget {
  final Map data;
  final double width;
  final double height;
  final double radius;
  final GestureTapCallback? onTap;
  final GestureTapCallback? onFavoriteTap;
  const Recipes({
    Key? key,
    required this.data,
    this.width = 200,
    this.height = 220,
    this.radius = 5,
    this.onTap,
    this.onFavoriteTap,
  }) : super(key: key);

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  TextEditingController recipeSearchController = TextEditingController();
  bool isLoading = false;
  Map<String, dynamic> Foods = {};

  double width = 200;
  double height = 220;
  double radius = 5;
  @override
  void initState() {
    super.initState();
    _getRecipes();
  }

  List<Food> futureFood = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Kera Recipes",
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              _getRecipes();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: AppColors.darkPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
            itemCount: futureFood.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 4,
              crossAxisSpacing: 8,
              crossAxisCount: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              Food myCurrentFood = futureFood[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipeDetails(
                      myCurrentFood: futureFood[index],
                    ),
                  ),
                ),
                child: Container(
                  width: width,
                  height: height,
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(radius),
                    boxShadow: [
                      BoxShadow(
                        color: shadowColor.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset:
                            const Offset(1, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      // CustomImage(
                      //   "assets/images/pp.jpg",
                      //   borderRadius: BorderRadius.circular(radius),
                      //   isShadow: false,
                      //   width: width,
                      //   height: 350,
                      // ),
                      Container(
                        child: Image.network(myCurrentFood.image),
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: FavoriteBox(
                          size: 13,
                          padding: 5,
                          isFavorited: false,
                          onTap: () {},
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          width: width - 16,
                          height: 80,
                          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: shadowColor.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset: const Offset(
                                    0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                myCurrentFood.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: textColor,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  // CustomImage(
                                  //   myCurrentFood.image,
                                  //   width: 25,
                                  //   height: 25,
                                  // ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          "By David Kihara",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: textColor,
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "Nutrition",
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            color: labelColor,
                                            fontSize: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(5),
                                    decoration: BoxDecoration(
                                      color: primary,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      children: const [
                                        Icon(
                                          Icons.star,
                                          color: textColor,
                                          size: 14,
                                        ),
                                        Text(
                                          '${5}',
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  void _getRecipes() async {
    setState(() {
      isLoading = true;
    });

    String foodsUrl = AppApi.FOODS_URL;

    var res = await http.get(
      Uri.parse(foodsUrl),
      headers: AppApi().setRecipeHeaders(),
    );
    var body = json.decode(res.body);

    // Map<String, dynamic> FoodData = json.decode(res.body);
    // var data = Foods.fromJson(FoodData);
    // setState(() {
    //   Foods = data as Map<String, dynamic>;
    // });

    List<dynamic> foodsData = json.decode(res.body);
    List<Food> myFoods = [];
    // Map<String, dynamic> foods = {};
    for (var myFoodsMap in foodsData) {
      myFoods.add(Food.fromJson(myFoodsMap));
    }
    setState(() {
      futureFood = myFoods;
    });

    setState(() {
      isLoading = false;
    });
  }
}
