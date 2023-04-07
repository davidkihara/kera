import 'package:flutter/material.dart';

class AppColors {
  static Color lightPrimary = const Color(0xfffcfcff);
  static Color lightAccent = const Color(0xFF3B72FF);
  static Color lightBackground = const Color(0xfffcfcff);

  static Color darkPrimary = Colors.black;
  static Color darkAccent = const Color(0xFF3B72FF);
  static Color darkBackground = Colors.black;

  static Color grey = const Color(0xff707070);
  static Color textPrimary = const Color(0xFF486581);
  static Color textDark = const Color(0xFF102A43);

  static Color backgroundColor = const Color(0xFFF5F5F7);

  // Green
  static Color darkGreen = const Color(0xFF3ABD6F);
  static Color lightGreen = const Color(0xFFA1ECBF);

  // Yellow
  static Color darkYellow = const Color(0xFF3ABD6F);
  static Color lightYellow = const Color(0xFFFFDA7A);

  // Blue
  static Color darkBlue = const Color(0xFF3B72FF);
  static Color lightBlue = const Color(0xFF3EC6FF);

  // Orange
  static Color darkOrange = const Color(0xFFFFB74D);

  static LinearGradient linearGradientColor = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    stops: [
      0.1,
      // 0.4,
      0.6,
      // 0.9,
    ],
    colors: [
      Colors.purple,
      // Colors.red,
      Colors.indigo,
      // Colors.teal,
    ],
  );
}

const primary = Color(0xFFf9c920);
const secondary = Color(0xFFe96561);

const mainColor = Color(0xFF000000);
const darker = Color(0xFF3E4249);
const appBgColor = Color(0xFFF7F7F7);
const appBarColor = Color(0xFFF7F7F7);
const bottomBarColor = Colors.white;
const inActiveColor = Colors.grey;
const shadowColor = Colors.black87;
const textBoxColor = Colors.white;
const textColor = Color(0xFF333333);
const labelColor = Color(0xFF8A8989);

const actionColor = Color(0xFFe54140);
const buttonColor = Color(0xFFcdacf9);
const cardColor = Colors.white;

const yellow = Color(0xFFffcb66);
const green = Color(0xFFa2e1a6);
const pink = Color(0xFFf5bde8);
const purple = Color(0xFFcdacf9);
const red = Color(0xFFf77080);
const orange = Color(0xFFf5ba92);
const sky = Color(0xFFABDEE6);
const blue = Color(0xFF509BE4);
const cyan = Color(0xFF4ac2dc);
const darkerGreen = Color(0xFFb0d96d);

const listColors = [
  green,
  purple,
  yellow,
  orange,
  sky,
  secondary,
  red,
  blue,
  pink,
  yellow,
];

Color kPrimaryColor = Color(0xFF27AE60);

BoxShadow kBoxShadow = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 2,
  blurRadius: 8,
  offset: Offset(0, 0),
);
