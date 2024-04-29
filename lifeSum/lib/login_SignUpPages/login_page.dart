import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/SettingUpPages/setting_up.dart';
import 'package:life_sum/colorsandfonts/colors_fonts.dart';
import 'package:life_sum/login_SignUpPages/login_fields.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FocusNode _nameFocus = FocusNode();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passFocus = FocusNode();
  bool visibillity = true;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                    print("object");
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 20,
                  ),
                ),
                SizedBox(
                  width: size.width >= 170 ? (size.width - 170) / 2 : 0,
                ),
                const Text(
                  "Create account",
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  Focus(
                    // focusNode: _nameFocus,
                    child: LoginField(
                      focus: _nameFocus,
                      labelText: "First name",
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Focus(
                    // focusNode: _emailFocus,
                    child: LoginField(
                      focus: _emailFocus,
                      labelText: "Email",
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Focus(
                    // focusNode: _passFocus,
                    child: LoginField.withObsecureText(
                      true,
                      focus: _passFocus,
                      labelText: "Password",
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "By continuing, you agree to LifeSum's Terms & conditions and Privacy Policy",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.height <= 580 ? 15.h : 12),
          ),
          SizedBox(
            height: 20.h,
          ),
          Visibility(
            visible: !(_passFocus.hasFocus ||
                _nameFocus.hasFocus ||
                _emailFocus.hasFocus),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: SizedBox(
                  width: double.infinity,
                  height: 35,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SettingUpPage();
                          },
                        ));
                      },
                      child: const Text("Create"))),
            ),
          ),
          SizedBox(
            height: _passFocus.hasFocus ||
                    _nameFocus.hasFocus ||
                    _emailFocus.hasFocus
                ? 0
                : 20.h,
          ),
        ]),
      ),
    );
  }
}
