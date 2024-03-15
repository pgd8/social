// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:social/Screens/Signup_Screen/register_screen.dart';
import 'package:social/Shared_Components/field_label.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  bool visiblePassword = false;

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
                Text("Login"),
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
                SizedBox(
                  height: 0.03.sh,
                ),
                TextFormField(
                  obscureText: visiblePassword,
                  obscuringCharacter: "*",
                  controller: passwordController,
                  validator: (value) {
                    if (value == null || value == "") {
                      return "this field is required";
                    }
                  },
                  style: TextStyle(color: Colors.black, fontSize: 11.sp),
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(visiblePassword
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded),
                      onPressed: () {
                        visiblePassword = !visiblePassword;
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
                      if (formKey.currentState!.validate()) {}
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SignupScreen.routeName);
                    },
                    child: Text("Don't Have Account?",
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
