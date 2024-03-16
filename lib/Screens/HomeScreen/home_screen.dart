// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "Home Screen";

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Social",
          style: TextStyle(color: Colors.white, fontSize: 22.sp),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("assets/images/notifications.png"),
              )),
          IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("assets/images/dm.png"),
              )),
        ],
      ),
    );
  }
}
