// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home Screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(390, 844));
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Social",
            style: TextStyle(color: Colors.white, fontSize: 22.sp),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage("assets/images/dm.png"),
                )),
          ],
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50.r),
            topLeft: Radius.circular(50.r),
          ),
          child: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ""),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage("assets/images/notifications.png")),
                  label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline_rounded), label: ""),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> tabs = [];
}
