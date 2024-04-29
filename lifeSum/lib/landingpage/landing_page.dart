import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';
import 'package:life_sum/landingpage/days_track.dart';
import 'package:percent_indicator/percent_indicator.dart';

List<Widget> _list = [
  OwnList(),
  SliverList.builder(
    itemCount: 10,
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text("${index + 1}"),
        ),
      ),
    ),
  ),
  SliverList.builder(
    itemCount: 10,
    itemBuilder: (context, index) => Padding(
      padding: const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text("${index + 2}"),
        ),
      ),
    ),
  ),
];

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage>
    with TickerProviderStateMixin {
  // late AnimationController _animation;
  late ScrollController _scrollController;
  double opacity = 1;
  double value = 1;
  double scrollOffsetValue = 0;
  bool _visible = true;
  late double height;
  int current = 0;
  @override
  void initState() {
    height = 200;
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        if (_scrollController.offset >= 125) {
          _visible = false;
        } else {
          _visible = true;
        }
        opacity = _scrollController.offset <= 125
            ? 1 - (_scrollController.offset * 0.008)
            : 0;
        value = _scrollController.offset * 0.1;
        scrollOffsetValue = _scrollController.offset;

        height = _scrollController.offset <= 100
            ? 200 - (scrollOffsetValue * 0.9)
            : 0;
        setState(() {});
        print(_scrollController.offset);
        print(1 - (_scrollController.offset * 0.008));
      });

    // _animation = AnimationController(
    //     vsync: this, duration: const Duration(milliseconds: 150))
    //   ..forward()
    //   ..addListener(() {});
    addAfter24Hours();
  }

  addAfter24Hours() {
    Timer.periodic(const Duration(hours: 24), (timer) {
      _list.add(
        SliverList.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Padding(
            padding:
                const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
            child: Container(
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("${index + 1}${timer.tick}"),
              ),
            ),
          ),
        ),
      );
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 400.h,
            centerTitle: true,
            title: Column(
              children: [
                Text(
                  "L I F E S U M",
                  style: TextStyle(
                      color: scrollOffsetValue >= 250
                          ? Colors.black
                          : Colors.white,
                      fontSize: 25),
                ),
                Text(
                  "Keto Maintain",
                  style: TextStyle(
                      color: scrollOffsetValue >= 250
                          ? Colors.black
                          : Colors.white,
                      fontSize: 15),
                )
              ],
            ),
            actions: [
              Icon(
                Icons.person,
                color: scrollOffsetValue >= 250 ? Colors.black : Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(Icons.notifications,
                  color:
                      scrollOffsetValue >= 250 ? Colors.black : Colors.white),
              const SizedBox(
                width: 10,
              ),
            ],
            pinned: true,
            elevation: 2,
            backgroundColor: scrollOffsetValue >= 100
                ? const Color.fromRGBO(245, 244, 241, 1)
                : backgroundColor,
            toolbarHeight: 100,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Stack(children: [
                SizedBox(
                  height: 340.h,
                  width: double.infinity,
                  child: Image.asset('blur.jpg', fit: BoxFit.cover),
                ),
                Positioned.fill(
                  bottom: 0,
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: Colors.transparent,
                      ),
                    ),
                  ),
                ),
              ]),
              titlePadding: const EdgeInsets.all(0),
              title: Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(
                      top: scrollOffsetValue <= 0
                          ? 200.h
                          : (200 - scrollOffsetValue) >= 0
                              ? (200 - scrollOffsetValue).h
                              : 0),
                  child: Stack(
                    children: [
                      // Visibility(
                      //   visible: _visible,
                      //   child: SizedBox(
                      //     height: 170 - value,
                      //   ),
                      // ),
                      Visibility(
                        visible: _visible,
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Opacity(
                            opacity: opacity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxHeight: 100),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text("0", style: TextStyle(fontSize: 10)),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("EATEN  ",
                                          style: TextStyle(fontSize: 8))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: scrollOffsetValue <= 0
                                      ? 25.w
                                      : 25 - (scrollOffsetValue * 0.1) > 0
                                          ? 25 - (scrollOffsetValue * 0.1).w
                                          : 0,
                                ),
                                CircularPercentIndicator(
                                    center: const Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text("0",
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  254, 255, 255, 255),
                                            )),
                                        Text(
                                          "KCAL LEFT",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  254, 255, 255, 255),
                                              fontSize: 8),
                                        )
                                      ],
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(0, 255, 255, 255),
                                    radius: 50.h,
                                    lineWidth: 2,

                                    // progressColor: Colors.grey,
                                    percent: 1,
                                    linearGradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color.fromARGB(254, 255, 255, 255),
                                          Color.fromARGB(254, 255, 255, 255),
                                          Color.fromARGB(158, 255, 255, 255),
                                        ])),
                                SizedBox(
                                  width: scrollOffsetValue <= 0
                                      ? 25.w
                                      : 25 - (scrollOffsetValue * 0.1) >= 0
                                          ? 25 - (scrollOffsetValue * 0.1)
                                          : 0,
                                ),
                                ConstrainedBox(
                                  constraints:
                                      const BoxConstraints(maxHeight: 100),
                                  child: const Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "0",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("BURNED",
                                          style: TextStyle(fontSize: 10))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: _visible,
                        child: Center(
                          child: Opacity(
                            opacity: opacity,
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, bottom: 10, top: 130.h),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: const Color.fromRGBO(245, 244, 241, 1),
                                  width: scrollOffsetValue < 0
                                      ? double.infinity
                                      : 235 - (scrollOffsetValue * 0.1),
                                  height: 50,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: caloriesTrack(
                                                "Carbs", Colors.orange)),
                                      ),
                                      Expanded(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: caloriesTrack(
                                                "Proteins",
                                                const Color.fromARGB(
                                                    255, 255, 0, 174))),
                                      ),
                                      Expanded(
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: caloriesTrack(
                                                "Fats",
                                                const Color.fromARGB(
                                                    255, 144, 0, 255))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          scrollOffsetValue >= 65
              ? const SliverToBoxAdapter(
                  child: SizedBox(height: 10),
                )
              : const SliverToBoxAdapter(child: SizedBox()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        if (current >= 1) {
                          current--;
                        }

                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 15,
                      )),
                  const Text("Date Here"),
                  IconButton(
                      onPressed: () {
                        if (current < _list.length - 1) {
                          current++;
                        }

                        setState(() {});
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ))
                ],
              ),
            ),
          ),
          _list[current]
        ],
      ),
    );
  }

  List<Widget> caloriesTrack(String text, Color color) {
    return [
      Text(
        text,
        style: const TextStyle(fontSize: 5, color: Colors.black),
      ),
      const SizedBox(
        height: 5,
      ),
      LinearPercentIndicator(
        animation: true,
        animationDuration: 700,
        backgroundColor: backgroundColor,
        progressColor: color,
        percent: 0.8,
        lineHeight: 2,
      ),
      const SizedBox(
        height: 5,
      ),
      const Text(
        "0/50",
        style: TextStyle(fontSize: 5, color: Colors.black),
      ),
    ];
  }
}
