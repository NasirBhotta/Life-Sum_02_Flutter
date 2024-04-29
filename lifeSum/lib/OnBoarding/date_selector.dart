import 'package:flutter/material.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';

class DateSelector extends StatefulWidget {
  final TextEditingController controller;
  final String hintext;
  final double contentPading;
  const DateSelector(
      {super.key,
      required this.controller,
      required this.hintext,
      required this.contentPading});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  Future<void> selectMonth(BuildContext context) async {
    List<String> monthList = [
      "JAN",
      "FEB",
      "MAR",
      "APR",
      "MAY",
      "JUN",
      "JUL",
      "AUG",
      "SEP",
      "OCT",
      "NOV",
      "DEC"
    ];
    String? selectedMonth = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return SimpleDialog(
          title: Text('Select Month'),
          children: List.generate(monthList.length, (int index) {
            final String month = monthList[index];
            return SingleChildScrollView(
              child: SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, month);
                },
                child: Text(month),
              ),
            );
          }),
        );
      },
    );

    if (selectedMonth != null) {
      setState(() {
        hintText = selectedMonth.toString();
      });
    }
  }

  Future<void> selectDay(BuildContext context) async {
    int? Day = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("Select Day"),
          children: List.generate(31, (index) {
            final int day = index + 1;
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, day);
              },
              child: Text("${day}"),
            );
          }),
        );
      },
    );
    if (Day != null) {
      setState(() {
        hintText = Day.toString();
      });
    }
  }

  Future<void> selectYear(BuildContext context) async {
    int? year = await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("Select Year"),
          children: List.generate(31, (index) {
            final int year = DateTime.now().year - index;
            return SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context, year);
              },
              child: Text("${year}"),
            );
          }),
        );
      },
    );
    if (year != null) {
      // widget.controller.text = year.toString();
      setState(() {
        hintText = year.toString();
      });
    }
  }

  String hintText = "";
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: TextAlign.center,
        controller: widget.controller,
        readOnly: true,
        onTap: widget.hintext == "MM"
            ? () => selectMonth(context)
            : widget.hintext == "DD"
                ? () => selectDay(context)
                : () => selectYear(context),
        decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green, width: 2),
          ),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                  color: Color.fromARGB(255, 222, 222, 222), width: 2)),
          fillColor: backgroundColor,
          hintText: hintText.isEmpty ? widget.hintext : hintText,
          hintStyle: const TextStyle(fontSize: 20),
        ));
  }
}
