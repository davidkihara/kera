import 'package:flutter/material.dart';
import 'package:kera/models/recipes/recipes.dart';
import 'package:kera/screens/recipes/widgets/recipe_details_titles.dart';
import 'package:kera/utils/app_colors.dart';

class RecipeDetails extends StatefulWidget {
  Recipe recipe;

  RecipeDetails({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  State<RecipeDetails> createState() => _RecipeDetailsState();
}

class _RecipeDetailsState extends State<RecipeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation1(widget.recipe.title),
                  buildTextSubTitleVariation1(widget.recipe.description),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 310,
              padding: EdgeInsets.only(left: 16),
              child: Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildTextTitleVariation2('Nutritions', false),
                      SizedBox(
                        height: 16,
                      ),
                      buildNutrition(
                          widget.recipe.calories, "Calories", "Kcal"),
                      SizedBox(
                        height: 16,
                      ),
                      buildNutrition(widget.recipe.carbo, "Carbo", "g"),
                      SizedBox(
                        height: 16,
                      ),
                      buildNutrition(widget.recipe.protein, "Protein", "g"),
                    ],
                  ),
                  Positioned(
                    right: -80,
                    child: Hero(
                      tag: widget.recipe.image,
                      child: Container(
                        height: 310,
                        width: 310,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(widget.recipe.image),
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildTextTitleVariation2('Ingredients', false),
                  buildTextSubTitleVariation1("2 cups pecans, divided"),
                  buildTextSubTitleVariation1(
                      "1 tablespoon unsalted butter, melted"),
                  buildTextSubTitleVariation1(
                      "1/4 teaspoon kosher salt, plus more"),
                  buildTextSubTitleVariation1(
                      "3 tablespoons fresh lemon juice"),
                  buildTextSubTitleVariation1("2 tablespoons olive oil"),
                  buildTextSubTitleVariation1("1/2 teaspoon honey"),
                  SizedBox(
                    height: 16,
                  ),
                  buildTextTitleVariation2('Recipe preparation', false),
                  buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1(
                      "In a medium bowl, mix all the marinade ingredients with some seasoning. Chop the chicken into bite-sized pieces and toss with the marinade. Cover and chill in the fridge for 1 hr or overnight."),
                  buildTextSubTitleVariation1("STEP 2"),
                  buildTextSubTitleVariation1(
                      "In a large, heavy saucepan, heat the oil. Add the onion, garlic, green chilli, ginger and some seasoning. Fry on a medium heat for 10 mins or until soft."),
                  buildTextSubTitleVariation1("STEP 3"),
                  buildTextSubTitleVariation1(
                      "Add the spices with the tomato purée, cook for a further 2 mins until fragrant, then add the stock and marinated chicken. Cook for 15 mins, then add any remaining marinade left in the bowl. Simmer for 5 mins, then sprinkle with the toasted almonds. Serve with rice, naan bread, chutney, coriander and lime wedges, if you like."),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: kPrimaryColor,
          icon: Icon(
            Icons.play_circle_fill,
            color: Colors.white,
            size: 32,
          ),
          label: Text(
            "Watch Video",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )),
    );
  }

  Widget buildNutrition(int value, String title, String subTitle) {
    return Container(
      height: 60,
      width: 150,
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.all(
          Radius.circular(50),
        ),
        boxShadow: [kBoxShadow],
      ),
      child: Row(
        children: [
          Container(
            height: 44,
            width: 44,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [kBoxShadow],
            ),
            child: Center(
              child: Text(
                value.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[400],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
