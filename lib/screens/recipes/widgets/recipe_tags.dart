import 'package:flutter/material.dart';
import 'package:kera/screens/recipes/widgets/recipe_tag_card.dart';

class RecipeTags extends StatefulWidget {
  RecipeTags({Key? key}) : super(key: key);

  @override
  State<RecipeTags> createState() => _RecipeTagsState();
}

class _RecipeTagsState extends State<RecipeTags> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      height: MediaQuery.of(context).size.height * .1,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          RecipeTagCard(
            text: "Meal",
          ),
          RecipeTagCard(
            text: "Meal",
          ),
          RecipeTagCard(
            text: "Meal",
          ),
          RecipeTagCard(
            text: "Meal",
          ),
          RecipeTagCard(
            text: "Meal",
          ),
          RecipeTagCard(
            text: "Meal",
          ),
        ],
      ),
    );
  }
}
