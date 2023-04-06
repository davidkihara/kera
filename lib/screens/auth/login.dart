import 'package:flutter/material.dart';
import 'package:kera/screens/auth/register.dart';
import 'package:kera/screens/auth/widgets/auth_text_input.dart';
import 'package:kera/screens/homepage/dashboard.dart';
import 'package:kera/screens/homepage/homepage.dart';
import 'package:kera/screens/widgets/app_button.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
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
            const Text("Fill the fields to log into your account."),
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
            AppButton(
              text: "Log in",
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
                    builder: (context) => Register(),
                  ),
                );
              },
              child: const Text(
                "I don't have an account.",
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
