import 'package:flutter/material.dart';
import 'package:kera/screens/preferences/widgets.dart/preference_card.dart';

class Preferences extends StatefulWidget {
  const Preferences({Key? key}) : super(key: key);

  @override
  State<Preferences> createState() => _PreferencesState();
}

class _PreferencesState extends State<Preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose your preferences'),
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PreferenceCard(
              text: "Cuisines",
            ),
          ],
        ),
      ),
    );
  }
}
