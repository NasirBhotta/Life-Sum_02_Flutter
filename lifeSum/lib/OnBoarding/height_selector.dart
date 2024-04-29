import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/OnBoarding/Text_fields.dart';

class HeightSelector extends StatefulWidget {
  const HeightSelector({super.key});

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        value == false
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 110,
                    child: TextFields(
                      hintText: 'Feet',
                    ),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    height: 70,
                    width: 110,
                    child: TextFields(
                      hintText: 'inches',
                    ),
                  ),
                ],
              )
            : SizedBox(
                height: 70,
                width: 150,
                child: TextFields(
                  hintText: 'cm',
                ),
              ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: value == false
                        ? const MaterialStatePropertyAll(Colors.green)
                        : const MaterialStatePropertyAll(Colors.grey)),
                onPressed: () {
                  setState(() {
                    value = false;
                  });
                },
                child: const Text(
                  "ft/in",
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: value == true
                        ? const MaterialStatePropertyAll(Colors.green)
                        : const MaterialStatePropertyAll(Colors.grey)),
                onPressed: () {
                  setState(() {
                    value = true;
                  });
                },
                child: const Text(
                  "cm",
                  textAlign: TextAlign.center,
                ))
          ],
        )
      ],
    );
  }
}
