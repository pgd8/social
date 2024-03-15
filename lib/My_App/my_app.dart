import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social/Screens/HomeScreen/home_screen.dart';
import 'package:social/Screens/Login_Screen/login_screen.dart';
import 'package:social/Screens/Signup_Screen/register_screen.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      ensureScreenSize: true,
      designSize: const Size(390, 844),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Social",
          initialRoute: SignupScreen.routeName,
          routes: {
            SignupScreen.routeName: (context) => SignupScreen(),
            LoginScreen.routeName : (context) => LoginScreen(),
            HomeScreen.routeName : (context) => HomeScreen(),
          },
        );
      },
    );
  }

}