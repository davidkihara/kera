import 'package:flutter/material.dart';
import 'package:kera/models/data.dart';
import 'package:kera/screens/homepage/homepage.dart';
import 'package:kera/screens/recipes/recipe_details.dart';
import 'package:kera/screens/widgets/widgets/popular_item.dart';

class RecipeCard extends StatefulWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
        populars.length,
        (index) => Container(
          margin: const EdgeInsets.only(right: 15),
          child: PopularItem(
            data: populars[index],
            onFavoriteTap: () {
              setState(() {
                populars[index]["is_favorited"] =
                    !populars[index]["is_favorited"];
              });
            },
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(
                    // recipe: populars[index],
                    ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
