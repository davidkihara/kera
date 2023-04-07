import 'package:flutter/material.dart';

class PreferenceCard extends StatelessWidget {
  String text;
  PreferenceCard({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Text(text),
        GridView.count(
          crossAxisCount: 4,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(
            10,
            (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
