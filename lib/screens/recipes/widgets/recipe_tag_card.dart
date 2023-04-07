import 'package:flutter/material.dart';
import 'package:kera/models/data.dart';
import 'package:kera/screens/widgets/widgets/category_item.dart';

class RecipeTagCard extends StatefulWidget {
  String text;

  RecipeTagCard({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<RecipeTagCard> createState() => _RecipeTagCardState();
}

class _RecipeTagCardState extends State<RecipeTagCard> {
  int selectedCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(0, 5, 7, 10),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CategoryItem(
              data: categories[index],
              isSelected: index == selectedCategoryIndex,
              onTap: () {
                setState(() {
                  selectedCategoryIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
