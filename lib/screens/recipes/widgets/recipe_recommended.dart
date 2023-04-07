import 'package:flutter/material.dart';
import 'package:kera/models/data.dart';
import 'package:kera/screens/widgets/widgets/recommend_item.dart';

class RecipeRecommended extends StatefulWidget {
  const RecipeRecommended({Key? key}) : super(key: key);

  @override
  State<RecipeRecommended> createState() => _RecipeRecommendedState();
}

class _RecipeRecommendedState extends State<RecipeRecommended> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
      scrollDirection: Axis.horizontal,
      child: Row(
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
