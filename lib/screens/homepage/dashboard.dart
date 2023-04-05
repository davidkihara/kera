import 'package:flutter/material.dart';
import 'package:kera/screens/bmi/bmi.dart';
import 'package:kera/screens/widgets/card_items.dart';
import 'package:kera/screens/widgets/card_main.dart';
import 'package:kera/screens/widgets/card_section.dart';
import 'package:kera/screens/widgets/custom_clipper.dart';
import 'package:kera/screens/widgets/drawer.dart';
import 'package:kera/utils/app_colors.dart';
import 'package:kera/utils/app_globals.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      drawer: AppDrawer(),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyCustomClipper(clipType: ClipType.bottom),
            child: Container(
              color: Theme.of(context).accentColor,
              height: AppGlobals.headerHeight + statusBarHeight,
            ),
          ),
          Positioned(
            right: -45,
            top: -30,
            child: ClipOval(
              child: Container(
                color: Colors.black.withOpacity(0.05),
                height: 220,
                width: 220,
              ),
            ),
          ),

          // BODY
          Padding(
            padding: EdgeInsets.all(AppGlobals.paddingSide),
            child: ListView(
              children: <Widget>[
                // Header - Greetings and Avatar
                Row(
                  children: const <Widget>[
                    // Container(
                    //   decoration: const BoxDecoration(
                    //     color: Colors.white,
                    //   ),
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(Icons.menu),
                    //   ),
                    // ),
                    Expanded(
                      child: Text(
                        "Hi There! \nPatient",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w900,
                            color: Colors.white),
                      ),
                    ),
                    CircleAvatar(
                      radius: 26.0,
                      backgroundImage:
                          AssetImage('assets/icons/profile_picture.png'),
                    ),
                  ],
                ),

                const SizedBox(height: 50),

                // Main Cards - Heartbeat and Blood Pressure
                Container(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      CardMain(
                        image: const AssetImage('assets/icons/heartbeat.png'),
                        title: "Hearbeat",
                        value: "66",
                        unit: "bpm",
                        color: AppColors.lightGreen,
                      ),
                      CardMain(
                          image: const AssetImage('assets/icons/blooddrop.png'),
                          title: "Blood Pressure",
                          value: "66/123",
                          unit: "mmHg",
                          color: AppColors.lightYellow)
                    ],
                  ),
                ),

                // Section Cards - Daily Medication
                const SizedBox(height: 50),

                Text(
                  "YOUR DAILY MEDICATIONS",
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                Container(
                    height: 125,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        CardSection(
                          image: const AssetImage('assets/icons/capsule.png'),
                          title: "Metforminv",
                          value: "2",
                          unit: "pills",
                          time: "6-7AM",
                          isDone: false,
                        ),
                        CardSection(
                          image: const AssetImage('assets/icons/syringe.png'),
                          title: "Trulicity",
                          value: "1",
                          unit: "shot",
                          time: "8-9AM",
                          isDone: true,
                        )
                      ],
                    )),

                const SizedBox(height: 50),

                // Scheduled Activities
                Text(
                  "SCHEDULED ACTIVITIES",
                  style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 20),

                Container(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      CardItems(
                        image: Image.asset(
                          'assets/icons/Walking.png',
                        ),
                        title: "Walking",
                        value: "750",
                        unit: "steps",
                        color: AppColors.lightYellow,
                        progress: 30,
                      ),
                      CardItems(
                        image: Image.asset(
                          'assets/icons/Swimming.png',
                        ),
                        title: "Swimming",
                        value: "30",
                        unit: "mins",
                        color: AppColors.lightBlue,
                        progress: 0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
