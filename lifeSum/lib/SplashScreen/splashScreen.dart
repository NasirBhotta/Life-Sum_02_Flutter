import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';

import '../OnBoarding/homeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goingToHome();
  }

  _goingToHome() async {
    await Future.delayed(
      const Duration(
        milliseconds: 1500,
      ),
      () {},
    );
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return HomeScreen();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: splashColor,
      child: Center(
          child: Text(
        "LifeSum",
        style: TextStyle(
          color: Colors.white,
          fontSize: 35.h,
        ),
      )),
    ));
  }
}
