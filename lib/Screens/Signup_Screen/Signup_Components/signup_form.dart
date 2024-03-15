// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social/Screens/HomeScreen/home_screen.dart';
import 'package:social/Screens/Login_Screen/login_screen.dart';
import 'package:social/Shared_Components/field_label.dart';

class SignupForm extends StatefulWidget {
  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  var formKey = GlobalKey<FormState>();

  var userNameController = TextEditingController();

  var emailController = TextEditingController();

  var phoneController = TextEditingController();

  var passwordController = TextEditingController();

  bool hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2.sh,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Signup"),
                SizedBox(
                  height: 0.03.sh,
                ),
                TextFormField(
                  controller: userNameController,
                  validator: (value) {
                    if (value == null || value == "") {
                      return "this field is required";
                    }
                  },
                  keyboardType: TextInputType.name,
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                  decoration: InputDecoration(
                    label: FieldLabel(title: "Username"),
                    isDense: true,
                    errorStyle: TextStyle(color: Colors.red, fontSize: 9.sp),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value == "") {
                      return "this field is required";
                    }
                  },
                  controller: emailController,
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.red, fontSize: 9.sp),
                    label: FieldLabel(title: "Email"),
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                TextFormField(
                  controller: phoneController,
                  validator: (value) {
                    if (value == null || value == "") {
                      return "this field is required";
                    }
                  },
                  keyboardType: TextInputType.number,
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color: Colors.red, fontSize: 9.sp),
                    label: FieldLabel(title: "Phone"),
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                TextFormField(
                  obscureText: hidePassword,
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value == "") {
                      return "this field is required";
                    }
                  },
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(hidePassword
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded),
                      onPressed: () {
                        hidePassword = !hidePassword;
                        setState(() {});
                      },
                    ),
                    errorStyle: TextStyle(color: Colors.red, fontSize: 9.sp),
                    label: FieldLabel(title: "Password"),
                    isDense: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                  ),
                ),
                SizedBox(
                  height: 0.03.sh,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) =>
                          HomeScreen(),));
                      }
                    },
                    child: Text(
                      "Signup",
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.routeName);
                    },
                    child: Text("Already Have Account?",
                        style: TextStyle(
                            color: Colors.blue.shade800, fontSize: 9.sp))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
