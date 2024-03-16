import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme{
    static Color primaryColor = Colors.blue.shade900;
    static ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0.02.sh,
          shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45.r),
                  bottomRight: Radius.circular(45.r))),
        backgroundColor: primaryColor,
          toolbarHeight: 0.07.sh,
          iconTheme: IconThemeData(
          color: Colors.white,
            size: 60.sp,
        )
      )
    );
}