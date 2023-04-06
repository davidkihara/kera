import 'package:flutter/material.dart';
import 'package:kera/screens/appointments/appointments.dart';
import 'package:kera/screens/homepage/dashboard.dart';
import 'package:kera/screens/notifications/notifications.dart';
import 'package:kera/screens/nutrition/nutrition.dart';
import 'package:kera/screens/settings/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? token;
  int _selectedIndex = 0;
  PageController pageController = PageController();
  bool isLoading = false;

  void onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
    // pageController.animateToPage(
    //   index,
    //   duration: Duration(milliseconds: 1000),
    //   curve: Curves.easeIn,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Dashboard(),
          const Appointments(),
          const Nutrition(),
          const Notifications(),
          const Settings(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        // fixedColor: Colors.green,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day),
            label: "Appointments",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.upload),
            label: "Upload",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.brown,
        onTap: onTapped,
        backgroundColor: Colors.teal[200],
      ),
    );
  }
}
