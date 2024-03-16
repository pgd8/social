import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme {
  static Color primaryColor = Colors.blue.shade900;
  static Color secondaryColor = Colors.white;
  static ThemeData lightTheme = ThemeData(
    appBarTheme: AppBarTheme(
        elevation: 0.03.sh,
        shadowColor: Colors.grey,
        // shape: ContinuousRectangleBorder(
        //     borderRadius: BorderRadius.only(
        //         bottomLeft: Radius.circular(130.r),
        //         bottomRight: Radius.circular(130.r))),
        backgroundColor: primaryColor,
        toolbarHeight: 0.06.sh,
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 50.sp,
        )),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: secondaryColor,
      elevation: 0.03.sh,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      unselectedItemColor: Colors.grey,
    ),
  );
}
