import 'package:flutter/material.dart';
import 'package:kera/models/data.dart';
import 'package:kera/screens/widgets/widgets/recommend_item.dart';

class FavoriteRecipe extends StatefulWidget {
  FavoriteRecipe({Key? key}) : super(key: key);

  @override
  State<FavoriteRecipe> createState() => _FavoriteRecipeState();
}

class _FavoriteRecipeState extends State<FavoriteRecipe> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(15, 0, 0, 15),
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          recommends.length,
          (index) => Container(
            margin: const EdgeInsets.only(right: 15),
            child: RecommendItem(
              data: recommends[index],
              onTap: () {},
              onFavoriteTap: () {
                setState(() {
                  recommends[index]["is_favorited"] =
                      !recommends[index]["is_favorited"];
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
