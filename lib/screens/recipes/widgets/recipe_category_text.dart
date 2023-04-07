import 'package:flutter/material.dart';

class RecipeCategoryText extends StatelessWidget {
  String text;
  RecipeCategoryText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 8,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
      ),
    );
  }
}
