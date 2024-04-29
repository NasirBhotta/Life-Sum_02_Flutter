import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/Purchases/startup.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';

class InitialPurchases extends StatefulWidget {
  const InitialPurchases({super.key});

  @override
  State<InitialPurchases> createState() => _InitialPurchasesState();
}

class _InitialPurchasesState extends State<InitialPurchases> {
  int dotValue = 0;
  List<bool> traceList = [false, true, false];
  late List<Widget> cardList;
  List<Widget> newCard = [];
  @override
  void initState() {
    super.initState();
    cardList = [
      cardBuilder(1, "Month", 5.99, 9.99, 5.99, traceList[0], 140, 120),
      cardBuilder(3, "Months", 14.99, 24.99, 5, traceList[1], 140, 120),
      cardBuilder(12, "Months", 49.99, 149.99, 4.17, traceList[2], 140, 120)
    ];
  }

  void setInCenter(int index) {
    if (traceList[index] == false) {
      for (var i = 0; i < traceList.length; i++) {
        if (traceList[i] == true) {
          traceList[i] = false;
        }
      }
      traceList[index] = true;
    }
    // get the center of the cardList
    // int center = (cardList.length / 2).floor();
    // var ele = cardList[center];
    // if (index > center) {
    //   cardList[center] = cardList[index];
    //   cardList.add(ele);
    //   cardList.removeAt(index);
    // } else if (index < center) {
    //   cardList[center] = cardList[index];
    //   cardList.insert(index, ele);
    //   cardList.removeAt(index + 1);
    // }
    cardList = [
      cardBuilder(1, "Month", 5.99, 9.99, 5.99, traceList[0], 140, 120),
      cardBuilder(3, "Months", 14.99, 24.99, 5, traceList[1], 140, 120),
      cardBuilder(12, "Months", 49.99, 149.99, 4.17, traceList[2], 140, 120)
    ];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (value) {
                    setState(() {
                      dotValue = value;
                    });
                  },
                  children: [
                    Stack(
                      children: [
                        Image.asset(
                          "girl.jpg",
                          fit: BoxFit.cover,
                          height: double.infinity,
                          width: double.infinity,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 30.h),
                            child: Text(
                              "Jane, be 5x more likely to succeed with premium",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width <= 480 ? 18.sp : 22),
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "berries.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 80.h,
                              ),
                              RatingBar.builder(
                                initialRating: 5,
                                itemCount: 5,
                                ignoreGestures: true,
                                itemSize: 12,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 0.5),
                                itemBuilder: (context, index) {
                                  return const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  );
                                },
                                onRatingUpdate: (value) {},
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Text(
                                  "This is my all time favorite. its so easy to use and i love that i can eat what i want but within reason",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.width <= 480 ? 13.sp : 15),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Text("by Anabelle, US",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            size.width <= 480 ? 10.sp : 13)),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 35.h),
                            child: Text(
                              "Join 55+ million success stories",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: size.width <= 480 ? 18.sp : 22),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Image.asset(
                          "green.jpg",
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: double.infinity,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 12, right: 12),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.check,
                                      color: Colors.green, size: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Access our Meal Plan and Diets and find what works for you",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.check,
                                      color: Colors.green, size: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Access our Meal Plan and Diets and find what works for you",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.check,
                                      color: Colors.green, size: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Access our Meal Plan and Diets and find what works for you",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(Icons.check,
                                      color: Colors.green, size: 20),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Access our Meal Plan and Diets and find what works for you",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Positioned(
                  width: size.width,
                  top: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(child: SizedBox()),
                      SizedBox(
                        width: 50.w,
                      ),
                      Text(
                        "LifeSum",
                        style: TextStyle(fontSize: 20.sp, color: Colors.white),
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: size.width >= 300 && size.width <= 480
                            ? 60 + (size.width * 0.012)
                            : 65,
                        height: size.width >= 300 && size.width <= 480
                            ? 20 + (size.width * 0.012)
                            : 25,
                        decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "Premium",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: size.width <= 300
                                    ? 11
                                    : size.width <= 480
                                        ? 12.sp
                                        : 15,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      Expanded(child: SizedBox()),
                      IconButton(
                          onPressed: () {
                            print("object");
                          },
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          )),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment(0, 0.90),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: index == 1 || index == 2
                                  ? EdgeInsets.only(left: 5)
                                  : EdgeInsets.all(0),
                              child: Container(
                                height: 5,
                                width: dotValue == index ? 14 : 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white,
                                ),
                              ),
                            )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: buttonColor,
            width: double.infinity,
            padding: EdgeInsets.only(top: 7, bottom: 7, left: 13),
            child: const Text(
              "50% OFF PREMIUM",
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 140,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              controller: ScrollController(
                initialScrollOffset:
                    size.width * 0.04, // adjust according to your item size
              ),
              children: [
                ToggleButtons(
                    selectedBorderColor: Colors.transparent,
                    borderColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    fillColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: (index) {
                      setInCenter(index);
                      setState(() {});
                      print(traceList);
                    },
                    isSelected: traceList,
                    children: newCard.isEmpty ? cardList : newCard),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              width: double.infinity,
              child: ElevatedButton(
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.green)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomePage(),
                        ));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Continue"),
                  ))),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Secured with google play. Auto renewable billing cancel anytime",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 10),
          ),
          SizedBox(
            height: 18.h,
          ),
          const Text(
            "Privacy Policy & Terms of Use",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 9),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  Widget cardBuilder(
      int months,
      String month,
      double price,
      double canceledPrice,
      double billPerTimeSpan,
      bool value,
      double height,
      double width) {
    print(value);
    return Container(
      width: width,
      height: height,
      padding: months == 3 ? EdgeInsets.all(0) : EdgeInsets.only(top: 20),
      child: Card(
        color: value ? buttonColor : Colors.white,
        child: Column(
          children: [
            months == 3
                ? Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5)),
                      color: value
                          ? const Color.fromARGB(255, 103, 218, 107)
                          : const Color.fromARGB(255, 191, 191, 191),
                    ),
                    height: 15,
                    width: double.infinity,
                    child: const Center(
                      child: Text(
                        "MOST POPULAR",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                      ),
                    ),
                  )
                : SizedBox(),
            const SizedBox(
              height: 20,
            ),
            Text(
              months.toString(),
              style: TextStyle(
                  color: value
                      ? Colors.white
                      : Color.fromARGB(255, 121, 121, 121)),
            ),
            Text(
              month,
              style: TextStyle(
                  color: value
                      ? Colors.white
                      : const Color.fromARGB(255, 121, 121, 121),
                  fontSize: 10),
            ),
            Text(
              "${price}",
              style: TextStyle(
                  color:
                      value ? Colors.white : Color.fromARGB(255, 121, 121, 121),
                  fontSize: 10),
            ),
            Text(
              canceledPrice.toString(),
              style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color:
                      value ? Colors.white : Color.fromARGB(255, 194, 194, 194),
                  fontSize: 10),
            ),
            Text(
              "${billPerTimeSpan}/ ${month}",
              style: TextStyle(
                  color:
                      value ? Colors.white : Color.fromARGB(255, 121, 121, 121),
                  fontSize: 10),
            ),
          ],
        ),
      ),
    );
  }
}
