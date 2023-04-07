import 'package:flutter/material.dart';
import 'package:kera/screens/favorites/favorites.dart';
import 'package:kera/screens/recipes/recipes.dart';
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
    //   duration: const Duration(milliseconds: 1000),
    //   curve: Curves.easeIn,
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          const Recipes(
            data: {},
          ),
          // const Nutrition(),
          const Favorites(),
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
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.food_bank),
          //   label: "Nutrition",
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.black,
        onTap: onTapped,
        backgroundColor: Colors.teal[200],
      ),
    );
  }
}
