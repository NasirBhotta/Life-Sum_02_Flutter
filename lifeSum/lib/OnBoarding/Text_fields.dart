import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  final String hintText;
  final TextEditingController _controller = TextEditingController();

  TextFields({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      TextFormField(
        style: const TextStyle(fontSize: 50),
        controller: _controller,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            suffixText: hintText == "Feet" ? " " : "  ",
            enabledBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                    color: Color.fromRGBO(223, 223, 223, 1), width: 2)),
            focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 2))),
      ),
      Positioned(right: 1.2, bottom: 2.6, child: Text("${hintText}"))
    ]);
  }
}
