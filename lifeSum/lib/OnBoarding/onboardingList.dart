import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/OnBoarding/date_selector.dart';
import 'package:life_sum/OnBoarding/height_selector.dart';
import 'package:life_sum/OnBoarding/weight_selector.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';

class OnboardingPages extends StatefulWidget {
  final String? s1;
  final String? s2;
  final String? s3;
  final String? s4;
  final int? index;
  final String? mode;
  const OnboardingPages({
    super.key,
    this.s1,
    this.s2,
    this.s3,
    this.s4,
    this.index,
    this.mode,
  });

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  List<bool> isSelected = [false, false, false];
  @override
  Widget build(BuildContext context) {
    // var model = Provider.of<SelectModel>(context);
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(children: [
            Expanded(
              child: Column(
                mainAxisAlignment: widget.mode == "date"
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    widget.s1!,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: size.width <= 480 ? 25.sp : 30,
                    ),
                  ),
                  SizedBox(
                    height: widget.mode == "date" ||
                            widget.mode == "height" ||
                            widget.mode == "weightSelector"
                        ? 0
                        : 20.h,
                  ),
                  Visibility(
                    visible: widget.mode == "weight" || widget.mode == "Gender"
                        ? true
                        : false,
                    child: TextButton(
                      onPressed: () {
                        if (isSelected[0] == true) {
                          isSelected[0] = false;
                          setState(() {});
                        } else {
                          isSelected[0] = true;
                          for (var i = 0; i < isSelected.length; i++) {
                            if (i == 0) {
                            } else {
                              isSelected[i] = false;
                            }
                          }
                        }
                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: size.width <= 480
                              ? size.height <= 515
                                  ? 30.h
                                  : 35.h
                              : 40,
                          bottom: size.width <= 480
                              ? size.height <= 515
                                  ? 30.h
                                  : 35.h
                              : 40,
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset(0, 0))
                            ],
                            color: isSelected[0] == true
                                ? buttonColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          widget.s2!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width <= 480 ? 13.sp : 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widget.mode == "date" ? 0 : 18.h,
                  ),
                  Visibility(
                    maintainSize: false,
                    visible: widget.mode == "weight" || widget.mode == "Gender"
                        ? true
                        : false,
                    child: TextButton(
                      style: const ButtonStyle(
                          overlayColor:
                              MaterialStatePropertyAll(Colors.transparent)),
                      onPressed: () {
                        if (isSelected[1] == true) {
                          isSelected[1] = false;
                          setState(() {});
                        } else {
                          isSelected[1] = true;
                          for (var i = 0; i < isSelected.length; i++) {
                            if (i == 1) {
                            } else {
                              isSelected[i] = false;
                            }
                          }
                        }
                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: size.width <= 480
                              ? size.height <= 515
                                  ? 30.h
                                  : 35.h
                              : 40,
                          bottom: size.width <= 480
                              ? size.height <= 515
                                  ? 30.h
                                  : 35.h
                              : 40,
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset(0, 0))
                            ],
                            color: isSelected[1] == true
                                ? buttonColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          widget.s3!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width <= 480 ? 13.sp : 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: widget.mode == "date" ? 0 : 18.h,
                  ),
                  Visibility(
                    visible: widget.mode == 'weight' ? true : false,
                    maintainSize: false,
                    child: TextButton(
                      style: const ButtonStyle(
                          overlayColor:
                              MaterialStatePropertyAll(Colors.transparent)),
                      onPressed: () {
                        if (isSelected[2] == true) {
                          isSelected[2] = false;
                          setState(() {});
                        } else {
                          isSelected[2] = true;
                          for (var i = 0; i < isSelected.length; i++) {
                            if (i == 2) {
                            } else {
                              isSelected[i] = false;
                            }
                          }
                        }
                        setState(() {});
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.only(
                          top: size.width <= 480
                              ? size.height <= 515
                                  ? 30.h
                                  : 35.h
                              : 40,
                          bottom: size.width <= 480
                              ? size.height <= 515
                                  ? 30.h
                                  : 35.h
                              : 40,
                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 5,
                                  spreadRadius: 2,
                                  color: Colors.grey.withOpacity(0.3),
                                  offset: Offset(0, 0))
                            ],
                            color: isSelected[2] == true
                                ? buttonColor
                                : Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          widget.s4!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: size.width <= 480 ? 13.sp : 20,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: widget.mode == "date" ? 1 : 0,
                    child: Visibility(
                      maintainSize: false,
                      visible: widget.mode == "date" ? true : false,
                      child: ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 400),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxHeight: 50, maxWidth: 80),
                                  child: DateSelector(
                                    controller: TextEditingController(),
                                    hintext: 'DD',
                                    contentPading: 20,
                                  )),
                              ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxHeight: 50, maxWidth: 80),
                                  child: DateSelector(
                                    controller: TextEditingController(),
                                    hintext: 'MM',
                                    contentPading: 10,
                                  )),
                              ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxHeight: 50, maxWidth: 80),
                                  child: DateSelector(
                                    controller: TextEditingController(),
                                    hintext: 'YYYY',
                                    contentPading: 20,
                                  )),
                            ]),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: widget.mode == "height" ? 1 : 0,
                    child: Visibility(
                      visible: widget.mode == "height" ? true : false,
                      child: HeightSelector(),
                    ),
                  ),
                  Expanded(
                    flex: widget.mode == "weightSelector" ? 1 : 0,
                    child: Visibility(
                      visible: widget.mode == "weightSelector" ? true : false,
                      child: WeightSelector(),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Text(
                "We use this information to calculate and provide you with the daily personalized recommendations",
                style: TextStyle(fontSize: size.width <= 480 ? 10.sp : 15),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 18.h,
            ),
          ]),
        ),
      ),
    );
  }
}
