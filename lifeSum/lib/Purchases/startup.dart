import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
                child: Text(
              "Your journey has begun!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: size.width <= 480 ? 23.sp : 30),
            )),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                "Lifesum premium activated",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: size.width <= 480 ? 12.sp : 15),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: Text(
                "You have made the right choice. Let's start working towards your goal and learn all about health and nutrition!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: size.width <= 480 ? 15.sp : 18),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Container(
                padding: const EdgeInsets.only(left: 10, right: 10),
                width: double.infinity,
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.green)),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("EXPLORE THE APP"),
                    ))),
            SizedBox(
              height: 40.h,
            ),
          ],
        ),
      ),
    );
  }
}
