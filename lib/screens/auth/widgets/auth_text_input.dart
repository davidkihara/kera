import 'package:flutter/material.dart';

class AuthTextInput extends StatelessWidget {
  String hintText;
  String labelText;
  bool obscureText;
  TextEditingController textEditingController;
  Icon icon;

  AuthTextInput({
    Key? key,
    required this.hintText,
    required this.labelText,
    required this.obscureText,
    required this.textEditingController,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: hintText,
        labelText: labelText,
        prefixIcon: Padding(
          padding: const EdgeInsets.only(left: 5), // add padding to adjust icon
          child: icon,
        ),
      ),
      // validator: (value) {
      //   if (value == null || value.isEmpty) {
      //     return 'Please enter your height';
      //   }
      //   return null;
      // },
    );
  }
}



    // username: 'DemoUser',
    // password: 'DemoPass',
    // clinicName: 'DemoClinic',
    // userFirstName: 'Appointment',
    // userLastName: 'System',
    // interval: '15'