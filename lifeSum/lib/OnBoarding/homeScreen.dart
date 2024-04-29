import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/OnBoarding/onboarding.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
            height: double.infinity,
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                "assets/background.jpg",
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.luminosity,
              ),
            )),
        Column(children: [
          Expanded(
            child: Align(
              alignment: const FractionalOffset(0.5, 0.24),
              child: Text(
                "Lifesum",
                style: TextStyle(
                  color: senColor,
                  fontSize: 40.sp,
                ),
              ),
            ),
          ),
          Center(
            child: Text(
              "Healthy eating simplified",
              style: TextStyle(
                color: senColor,
                fontSize: 35.sp,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40.sp,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(buttonColor)),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const Onboarding(),
                    ));
                  },
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: senColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          Text(
            "Already have a Account? Log In",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: senColor,
              fontSize: 15.sp,
            ),
          ),
          SizedBox(
            height: 20.sp,
          )
        ]),
      ]),
    );
  }
}
