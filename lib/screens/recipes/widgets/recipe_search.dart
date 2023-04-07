import 'package:flutter/material.dart';

class RecipeSearch extends StatelessWidget {
  String hintText;
  bool obscureText;
  TextEditingController textEditingController;
  Icon icon;
  RecipeSearch({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.textEditingController,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5.0),
        ),
        border: const OutlineInputBorder(),
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5), // add padding to adjust icon
          child: icon,
        ),
      ),
    );
  }
}
