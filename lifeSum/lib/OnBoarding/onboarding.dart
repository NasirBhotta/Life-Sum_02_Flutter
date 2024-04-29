import 'package:flutter/material.dart';
import 'package:life_sum/OnBoarding/onboardingList.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/login_SignUpPages/signUp_options.dart';

// class SelectModel extends ChangeNotifier {
//   List<bool> isSelected = [false, false, false];
// }

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController _controller;
  final List<bool> _listBool = [true, false, false, false, false, false];
  int currentIndex = 0;
  bool match = false;
  final List<int> _indexTrace = [];
  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  // void selected() {
  //   bool value = false;
  //   for (var i = 0;
  //       i < Provider.of<SelectModel>(context, listen: false).isSelected.length;
  //       i++) {
  //     if (Provider.of<SelectModel>(context, listen: false).isSelected[i] ==
  //         true) {
  //       value = true;
  //       break;
  //     }
  //   }
  //   if (value) {
  //     _controller.nextPage(
  //         duration: const Duration(milliseconds: 150),
  //         curve: Curves.bounceInOut);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(children: [
          const SizedBox(
            height: 70,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            IconButton(
                onPressed: () {
                  _controller.previousPage(
                      duration: const Duration(milliseconds: 150),
                      curve: Curves.bounceInOut);
                },
                icon: const Icon(
                  Icons.arrow_back,
                  size: 20,
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 40),
                child: Align(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        6,
                        (index) => Padding(
                              padding: (index == 1 ||
                                      index == 2 ||
                                      index == 3 ||
                                      index == 4 ||
                                      index == 5)
                                  ? const EdgeInsets.only(left: 7)
                                  : const EdgeInsets.only(left: 0),
                              child: Container(
                                color: _listBool[index] == true
                                    ? buttonColor
                                    : Colors.grey[400],
                                height: 3,
                                width: 30,
                              ),
                            )),
                  ),
                ),
              ),
            ),
          ]),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller,
              onPageChanged: (int index) {
                setState(() {
                  if (_indexTrace.isEmpty) {
                    _indexTrace.add(currentIndex);
                    _listBool[index] = true;
                  } else {
                    for (var i = 0; i < _indexTrace.length; i++) {
                      if (_indexTrace[i] == index) {
                        _listBool[index + 1] = false;
                        match = true;

                        break;
                      }
                      match = false;
                    }
                    if (match == false) {
                      _indexTrace.add(currentIndex);
                      _listBool[index] = true;
                    } else {
                      _indexTrace.removeAt(index);
                    }
                  }
                  currentIndex = index;
                });
              },
              children: [
                OnboardingPages(
                  s1: "What goal do you have in mind?",
                  s2: "${(size.width / 2) - 50}",
                  s3: "Maintain Weight",
                  s4: "gain weight",
                  index: currentIndex,
                  mode: "weight",
                ),
                OnboardingPages(
                  s1: "What sex should we use to calculate your recommendations?",
                  s2: "Male",
                  s3: "Female",
                  s4: "s4",
                  index: currentIndex,
                  mode: "Gender",
                ),
                OnboardingPages(
                  s1: "What's your date of birth?",
                  s2: "s2",
                  s3: "s3",
                  s4: "s4",
                  index: currentIndex,
                  mode: "date",
                ),
                OnboardingPages(
                  s1: "What's your Height?",
                  s2: "s2",
                  s3: "s3",
                  s4: "s4",
                  index: currentIndex,
                  mode: "height",
                ),
                OnboardingPages(
                  s1: "What's your Height?",
                  s2: "s2",
                  s3: "s3",
                  s4: "s4",
                  index: currentIndex,
                  mode: "weightSelector",
                ),
                SignUpOptions()
              ],
            ),
          ),
          Visibility(
            visible: _listBool.last == true ? false : true,
            child: Padding(
              padding: EdgeInsets.only(left: 5.sp, right: 5.sp, bottom: 10.sp),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(buttonColor)),
                    onPressed: () {
                      _controller.nextPage(
                          duration: const Duration(milliseconds: 150),
                          curve: Curves.bounceInOut);
                    },
                    child: Text(
                      "Next",
                      style:
                          TextStyle(fontSize: size.width <= 480 ? 13.sp : 17),
                    )),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
