import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabletHome extends StatelessWidget {
  const TabletHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          print('Device Size:${Size(1.sw, 1.sh)}');
          print('Device pixel density:${ScreenUtil().pixelRatio}');
          print(
              'Bottom safe zone distance dp:${ScreenUtil().bottomBarHeight}dp');
          print('Status bar height dp:${ScreenUtil().statusBarHeight}dp');
          print('The ratio of actual width to UI design:${ScreenUtil()}');
          print(
              'The ratio of actual height to UI design:${ScreenUtil().scaleHeight}');
          print('System font scaling:${ScreenUtil().textScaleFactor}');
          print('0.5 times the screen width:${0.5.dg}dp');
          print('0.5 times the screen height:${0.5.h}dp');
          print('Screen orientation:${ScreenUtil().orientation}');
        },
        child: Text("button"),
      ),
    );
  }
}
//  if (isSelected[0] == true) {
//                   isSelected[0] = false;
//                   setState(() {});
//                   print("made it false");
//                   print("${isSelected}");
//                 } else {
//                   isSelected[0] = true;
//                   for (var i = 0; i < isSelected.length; i++) {
//                     if (i == 0) {
//                       print("Dont do anything");
//                     } else {
//                       print("${isSelected}");
//                       isSelected[i] = false;
//                     }
//                   }
//                 }
//                 setState(() {});