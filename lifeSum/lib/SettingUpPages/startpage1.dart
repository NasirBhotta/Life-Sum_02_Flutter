import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/Purchases/initial_purchases.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

// ignore: must_be_immutable
class StarterPage1 extends StatelessWidget {
  ScrollController _scrollController = ScrollController();
  StarterPage1({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Scrollbar(
            thickness: 3,
            controller: _scrollController,
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 40.h),
                    Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: buttonColor,
                        ),
                        child: const Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 15,
                        )),
                    SizedBox(height: 10.h),
                    const Text(
                      "Jane your personalized health plan is ready!",
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10.h),
                    Card(
                      color: Color.fromRGBO(248, 247, 246, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            SizedBox(height: 10.h),
                            Text(
                              "Daily nutritional recommendations",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: size.width <= 480 ? 20.h : 13),
                            ),
                            SizedBox(height: 10.h),
                            Text(
                              "You can edit this any time in the app",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: size.width <= 480 ? 13.h : 13),
                            ),
                            SizedBox(height: 10.h),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Calories"), Text("2098 kcal")],
                              ),
                            ),
                            LinearPercentIndicator(
                              progressColor: buttonColor,
                              backgroundColor: backgroundColor,
                              animation: true,
                              animationDuration: 1500,
                              lineHeight: 5,
                              percent: 1,
                              barRadius: const Radius.circular(10),
                            ),
                            SizedBox(height: 10.h),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Carbs"), Text("50%")],
                              ),
                            ),
                            LinearPercentIndicator(
                              progressColor: Colors.orange,
                              backgroundColor: backgroundColor,
                              animation: true,
                              animationDuration: 1500,
                              lineHeight: 5,
                              percent: 0.5,
                              barRadius: const Radius.circular(10),
                            ),
                            SizedBox(height: 10.h),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Fat"), Text("30%")],
                              ),
                            ),
                            LinearPercentIndicator(
                              progressColor:
                                  const Color.fromARGB(255, 121, 33, 243),
                              backgroundColor: backgroundColor,
                              animation: true,
                              animationDuration: 1500,
                              lineHeight: 5,
                              percent: 0.3,
                              barRadius: const Radius.circular(10),
                            ),
                            SizedBox(height: 10.h),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text("Protein"), Text("20%")],
                              ),
                            ),
                            LinearPercentIndicator(
                              progressColor: Colors.pink,
                              backgroundColor: backgroundColor,
                              animation: true,
                              animationDuration: 1500,
                              lineHeight: 5,
                              percent: 0.2,
                              barRadius: const Radius.circular(10),
                            ),
                            SizedBox(height: 10.h),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 5),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Life Score"),
                                  Text("110 points")
                                ],
                              ),
                            ),
                            LinearPercentIndicator(
                              progressColor:
                                  const Color.fromARGB(255, 89, 12, 221),
                              backgroundColor: backgroundColor,
                              animation: true,
                              animationDuration: 1500,
                              lineHeight: 5,
                              percent: 0.8,
                              barRadius: Radius.circular(10),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Card(
                      color: Color.fromRGBO(248, 247, 246, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          children: [
                            Text(
                              "How to reach your goals",
                              style: TextStyle(
                                  fontSize: size.width <= 480 ? 20.h : 13,
                                  color: const Color.fromARGB(255, 35, 35, 35)),
                            ),
                            SizedBox(height: 10.h),
                            ListTile(
                              leading: Icon(Icons.forest),
                              title: Text(
                                "Get your weekly life score and personal advice to improve your nutrition benefits",
                                style: TextStyle(
                                    fontSize: size.width <= 480 ? 13.h : 13,
                                    color: Color.fromARGB(255, 35, 35, 35)),
                              ),
                            ),
                            const Divider(
                                color: Color.fromARGB(255, 213, 209, 209)),
                            ListTile(
                              leading: Icon(Icons.food_bank_outlined),
                              title: Text(
                                "Track your food",
                                style: TextStyle(
                                    fontSize: size.width <= 480 ? 13.h : 13,
                                    color: Colors.black),
                              ),
                            ),
                            const Divider(
                                color: Color.fromARGB(255, 213, 209, 209)),
                            ListTile(
                              leading: Icon(Icons.check_circle_outline_sharp),
                              title: Text(
                                "Follow your daily calorie recommendations",
                                style: TextStyle(
                                    fontSize: size.width <= 480 ? 13.h : 13,
                                    color: Colors.black),
                              ),
                            ),
                            const Divider(
                                color: Color.fromARGB(255, 213, 209, 209)),
                            ListTile(
                              leading: Icon(Icons.menu),
                              title: Text(
                                "Balance your intake of carbs, protein, fat and dietry fiber",
                                style: TextStyle(
                                    fontSize: size.width <= 480 ? 13.h : 13,
                                    color: Colors.black),
                              ),
                            ),
                            const Divider(
                                color: Color.fromARGB(255, 213, 209, 209)),
                            ListTile(
                              leading: Icon(Icons.water),
                              title: Text(
                                "Stay hydrated and track water intake",
                                style: TextStyle(
                                    fontSize: size.width <= 480 ? 13.h : 13,
                                    color: Colors.black),
                              ),
                            ),
                            const Divider(
                                color: Color.fromARGB(255, 213, 209, 209)),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                      colors: [
                    Color.fromRGBO(241, 237, 231, 0),
                    Color.fromRGBO(241, 237, 231, 1),
                    Color.fromRGBO(241, 237, 231, 1)
                  ])),
              child: FractionallySizedBox(
                  heightFactor: 0.4,
                  alignment: Alignment(0, 0.5),
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(buttonColor)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return InitialPurchases();
                          },
                        ));
                      },
                      child: Text("Get started"))),
            ),
          )
        ],
      ),
    );
  }
}
