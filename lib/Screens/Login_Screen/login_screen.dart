// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social/Screens/Login_Screen/login_form.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = "LopginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Center(
        child: Container(
          width: 0.8.sw,
          height: 0.55.sh,
          child: LoginForm(),
        ),
      ),
    );;
  }
}
