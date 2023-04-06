import 'package:flutter/material.dart';
import 'package:kera/screens/bmi/bmi.dart';
import 'package:kera/screens/homepage/dashboard.dart';

class AppDrawer extends StatefulWidget {
  AppDrawer({Key? key}) : super(key: key);

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('KERA'),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('Home'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Dashboard(),
                ),
              );
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
            ),
            title: const Text('BMI'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BMI(),
                ),
              );
              // Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Calories'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Blood Pressure'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Blood Sugar'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Nutrition'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.train,
            ),
            title: const Text('Workout Planner'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
