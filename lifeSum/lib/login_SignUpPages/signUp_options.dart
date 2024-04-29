import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:life_sum/login_SignUpPages/login_page.dart';

class SignUpOptions extends StatelessWidget {
  const SignUpOptions({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Expanded(
              child: Container(
                  child: Text(
            "let's get your personalized health plan",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.width <= 480 ? 25.sp : 30),
          ))),
          Column(
            children: [
              _buttons("SIGN UP WITH GOOGLE", context, "assets/google.png"),
              SizedBox(
                height: 15.h,
              ),
              _buttons("SIGN UP WITH FACEBOOK", context, "assets/facebook.png"),
              SizedBox(
                height: 15.h,
              ),
              _buttons("EMAIL", context),
              SizedBox(
                height: 50.h,
              ),
              Text(
                "By continuing, you agree to LifeSum's Terms & conditions and Privacy Policy",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: size.height <= 580 ? 15.h : 12),
              ),
              SizedBox(
                height: 25.h,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buttons(String txt, BuildContext context, [String? img]) {
    if (img != null) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.only(bottom: 17.h, top: 17.h),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 20, height: 20, child: Image.asset(img)),
              SizedBox(
                width: 10,
              ),
              Text(
                txt,
                style: TextStyle(fontSize: 12.h),
              )
            ],
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        if (txt == 'EMAIL') {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return LoginPage();
            },
          ));
        }
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 17.h, top: 17.h),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              txt,
              style: TextStyle(fontSize: 12.h),
            )
          ],
        ),
      ),
    );
  }
}
