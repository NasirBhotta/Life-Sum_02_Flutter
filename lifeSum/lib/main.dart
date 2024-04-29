import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:life_sum/SplashScreen/splashScreen.dart';
import 'package:life_sum/Tablet/tabhome.dart';
import 'package:life_sum/imagePicker.dart';
import 'package:life_sum/landingpage/landing_page.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(ChangeNotifierProvider(
    create: (context) {},
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LayoutBuilder(
            builder: (context, constraints) {
              if (size.width <= 480) {
                return const MyHomePage();
              } else {
                return const TabletHome();
              }
            },
          ),
        );
      },
    );
  }
}
