// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social/Screens/Signup_Screen/Signup_Components/signup_form.dart';

class SignupScreen extends StatelessWidget {
  static const String routeName = "Signup Screen";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child: Container(
          width: 0.8.sw,
          height: 0.78.sh,
          child: SignupForm(),
        ),
      ),
    );
  }
}
