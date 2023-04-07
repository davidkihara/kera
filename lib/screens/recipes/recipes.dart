import 'package:flutter/material.dart';
import 'package:kera/screens/recipes/widgets/recipe_card.dart';
import 'package:kera/screens/recipes/widgets/recipe_category_text.dart';
import 'package:kera/screens/recipes/widgets/recipe_recommended.dart';
import 'package:kera/screens/recipes/widgets/recipe_search.dart';
import 'package:kera/screens/recipes/widgets/recipe_tags.dart';

class Recipes extends StatefulWidget {
  const Recipes({Key? key}) : super(key: key);

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  TextEditingController recipeSearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("David Kihara"),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RecipeSearch(
                hintText: "Search meal or ingredient",
                obscureText: false,
                textEditingController: recipeSearchController,
                icon: const Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
              ),
              RecipeCategoryText(text: "Categories"),
              RecipeTags(),
              RecipeCategoryText(text: "Trending Recipes"),
              RecipeCard(),
              RecipeCategoryText(text: "Recommended Recipes"),
              RecipeRecommended(),
            ],
          ),
        ));
  }
}
