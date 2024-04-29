import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class LoginField extends StatelessWidget {
  final String labelText;
  final FocusNode focus;
  bool? obsecureText;
  LoginField({
    super.key,
    required this.labelText,
    required this.focus,
  });

  LoginField.withObsecureText(this.obsecureText,
      {required this.labelText, required this.focus});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecureText != null ? true : true,
      focusNode: focus,
      decoration: InputDecoration(
          label: Text(labelText),
          labelStyle: TextStyle(color: Colors.grey, fontSize: 17.h),
          fillColor: Colors.transparent,
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.green)),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 215, 214, 214)),
          )),
    );
  }
}
