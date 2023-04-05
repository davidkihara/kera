import 'package:flutter/material.dart';
import 'package:kera/utils/app_colors.dart';

class AppTheme {
  static ThemeData lighTheme(BuildContext context) {
    return ThemeData(
      backgroundColor: AppColors.lightBackground,
      primaryColor: AppColors.lightPrimary,
      accentColor: AppColors.lightAccent,
      cursorColor: AppColors.lightAccent,
      scaffoldBackgroundColor: AppColors.lightBackground,
      // textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      // appBarTheme: AppBarTheme(
      //   textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme),
      //   iconTheme: IconThemeData(
      //     color: lightAccent,
      //   ),
      // ),
    );
  }
}
