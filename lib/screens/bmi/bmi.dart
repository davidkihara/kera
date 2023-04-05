import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:kera/models/bmi/bmi.dart';
import 'package:kera/screens/widgets/card_main.dart';
import 'package:kera/screens/widgets/card_results.dart';
import 'package:kera/screens/widgets/custom_clipper.dart';
import 'package:kera/screens/widgets/drawer.dart';
import 'package:kera/utils/app_apis.dart';
import 'package:kera/utils/app_colors.dart';
import 'package:kera/utils/app_globals.dart';
import 'package:http/http.dart' as http;

class BMI extends StatefulWidget {
  BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  bool isLoading = false;
  int weight = 0;
  int height = 0;

  Map<String, dynamic> BMI = {};
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
        drawer: AppDrawer(),
        body: Stack(
          children: [
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
            Padding(
              padding: EdgeInsets.all(AppGlobals.paddingSide),
              child: ListView(
                children: <Widget>[
                  // Header - Greetings and Avatar
                  Row(
                    children: const <Widget>[
                      Expanded(
                        child: Text(
                          "BMI",
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
                  Column(
                    children: [
                      Container(
                        height: 140,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            CardMain(
                              image: const AssetImage(
                                  'assets/icons/heartbeat.png'),
                              title: "Height",
                              value: isLoading ? "..." : "$height",
                              unit: "cm",
                              color: AppColors.lightGreen,
                            ),
                            CardMain(
                                image: const AssetImage(
                                    'assets/icons/blooddrop.png'),
                                title: "Weight",
                                value: isLoading ? "..." : "$weight",
                                unit: "kg",
                                color: AppColors.lightYellow)
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CardResults(
                        image: const AssetImage('assets/icons/blooddrop.png'),
                        title: "Body Mass Index",
                        value: "0",
                        unit: "0",
                        color: AppColors.lightYellow,
                      ),
                    ],
                  ),

                  // Section Cards - Daily Medication
                  const SizedBox(height: 50),

                  Text(
                    "Calculate your BMI by filling the fields below.",
                    style: TextStyle(
                      color: AppColors.textPrimary,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),
                  Column(
                    children: [
                      TextFormField(
                        controller: weightController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Weight(Kgs)',
                          labelText: 'Weight In Kgs',
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: 5), // add padding to adjust icon
                            child: Icon(Icons.scale),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your weight';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        controller: heightController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Height(cm)',
                          labelText: 'Height in Centimeters',
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(
                                left: 5), // add padding to adjust icon
                            child: Icon(Icons.height),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your height';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              isLoading = true;
                            });
                            _calculateBMI();
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //       builder: (context) => const ForgotPassword()),
                            // );
                          },
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                AppColors.lightGreen),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(14.0),
                            child: Text(
                              "Calculate BMI",
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            )
          ],
        ));
  }

  void _calculateBMI() async {
    setState(() {
      isLoading = true;
    });

    final height = heightController.text.trim();
    final weight = weightController.text.trim();
    const system = 'metric';

    String url =
        "${AppApi.BMI_URL}?height=${height}&weight=${weight}&system=${system}";

    var res = await http.get(
      Uri.parse(url),
      headers: AppApi().setBMIHeaders(),
    );
    var body = json.decode(res.body);

    Map<String, dynamic> BMIData = json.decode(res.body);
    var data = Bmi.fromJson(BMIData);
    setState(() {
      BMI = data as Map<String, dynamic>;
    });
    setState(() {
      isLoading = false;
    });
  }
}
