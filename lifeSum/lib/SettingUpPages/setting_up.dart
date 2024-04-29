import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/SettingUpPages/startpage1.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';

class SettingUpPage extends StatefulWidget {
  const SettingUpPage({super.key});

  @override
  State<SettingUpPage> createState() => _SettingUpPageState();
}

class _SettingUpPageState extends State<SettingUpPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _progressValue = 0.0;
  Future<void> fetchdata(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 3));

    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => StarterPage1(),
        ));
  }

  void startProgress() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        if (_progressValue < 1.0) {
          _progressValue += 0.01;
          startProgress();
        }
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: const Duration(seconds: 1), vsync: this)
          ..forward()
          ..addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text("We're setting everthing up for you"),
            SizedBox(
              height: 10.h,
            ),
            const Text("Customizing your health plan..."),
            SizedBox(
              height: 40.h,
            ),
            FutureBuilder(
              future: fetchdata(context),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return AnimatedBuilder(
                    animation: _controller,
                    builder: (context, _) {
                      return const CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation(Colors.green),
                        strokeWidth: 1.5,
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                return const Text("Done...");
              },
            ),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
