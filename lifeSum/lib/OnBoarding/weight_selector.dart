import 'package:flutter/material.dart';
import 'package:life_sum/OnBoarding/Text_fields.dart';

class WeightSelector extends StatefulWidget {
  const WeightSelector({super.key});

  @override
  State<WeightSelector> createState() => _WeightSelectorState();
}

class _WeightSelectorState extends State<WeightSelector> {
  String value = "1";
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 110,
              child: TextFields(
                hintText: value == "1"
                    ? 'lbs'
                    : value == "2"
                        ? 'kg'
                        : 'st',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: value == "1"
                        ? const MaterialStatePropertyAll(Colors.green)
                        : const MaterialStatePropertyAll(Colors.grey)),
                onPressed: () {
                  setState(() {
                    value = "1";
                  });
                },
                child: const Text(
                  "lbs",
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: value == "2"
                        ? const MaterialStatePropertyAll(Colors.green)
                        : const MaterialStatePropertyAll(Colors.grey)),
                onPressed: () {
                  setState(() {
                    value = "2";
                  });
                },
                child: const Text(
                  "kg",
                  textAlign: TextAlign.center,
                )),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: value == "3"
                        ? const MaterialStatePropertyAll(Colors.green)
                        : const MaterialStatePropertyAll(Colors.grey)),
                onPressed: () {
                  setState(() {
                    value = "3";
                  });
                },
                child: const Text(
                  "st",
                  textAlign: TextAlign.center,
                )),
          ],
        )
      ],
    );
  }
}
