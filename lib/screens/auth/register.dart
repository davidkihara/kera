import 'package:flutter/material.dart';
import 'package:kera/screens/auth/login.dart';
import 'package:kera/screens/auth/widgets/auth_text_input.dart';
import 'package:kera/screens/homepage/dashboard.dart';
import 'package:kera/screens/homepage/homepage.dart';
import 'package:kera/screens/widgets/app_button.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final clinicNameController = TextEditingController();
  final intervalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Create Account"),
        centerTitle: true,
        automaticallyImplyLeading: false,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Wrap(
          runSpacing: 15,
          alignment: WrapAlignment.start,
          children: [
            const Text("Fill the fields to create your account."),
            AuthTextInput(
              hintText: "Username",
              labelText: "Username",
              textEditingController: usernameController,
              obscureText: false,
              icon: const Icon(Icons.person),
            ),
            AuthTextInput(
              hintText: "Password",
              labelText: "Password",
              textEditingController: passwordController,
              obscureText: true,
              icon: const Icon(Icons.lock),
            ),
            AuthTextInput(
              hintText: "First Name",
              labelText: "First Name",
              textEditingController: firstNameController,
              obscureText: false,
              icon: const Icon(Icons.person),
            ),
            AuthTextInput(
              hintText: "Last Name",
              labelText: "Last Name",
              textEditingController: lastNameController,
              obscureText: false,
              icon: const Icon(Icons.person),
            ),
            AuthTextInput(
              hintText: "Clinic",
              labelText: "Clinic",
              textEditingController: clinicNameController,
              obscureText: false,
              icon: const Icon(Icons.person),
            ),
            AppButton(
              text: "Create Account",
              onPress: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child: const Text(
                "Already have an account? Log in here",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
