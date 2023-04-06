import 'package:flutter/material.dart';
import 'package:kera/utils/app_colors.dart';

class AppButton extends StatelessWidget {
  String text;
  final VoidCallback onPress;

  AppButton({Key? key, required this.text, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(AppColors.lightGreen),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
