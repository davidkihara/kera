import 'package:flutter/material.dart';
import 'package:kera/screens/favorites/widgets/favorite_card.dart';
import 'package:kera/screens/recipes/widgets/recipe_recommended.dart';
import 'package:kera/utils/app_colors.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Favorites",
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.delete,
              color: Colors.red,
            ),
          ),
        ],
        backgroundColor: AppColors.lightPrimary,
        foregroundColor: AppColors.darkPrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            FavoriteRecipe(),
            FavoriteRecipe(),
            FavoriteRecipe(),
            FavoriteRecipe(),
          ],
        )),
      ),
    );
  }
}
