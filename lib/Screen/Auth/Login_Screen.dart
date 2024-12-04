import 'package:dash_board/Screen/OnBoard_Screen/Age_confromation_Screen.dart';
import 'package:dash_board/Screen/OnBoard_Screen/blank_Screen1.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Widgets/BackButtonAppbart.dart';
import 'package:dash_board/Widgets/Check_Box_Dialoge.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Rounded_iconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: onBoardBackgroundColor,
        appBar: backbuttonAppbar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: Column(
                    children: [
                      Image.asset(
                        womenpng,
                        height: 400.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.w, vertical: 40.h),
                        child: Container(
                          height: 180.h,
                          // width: 600.w,
                          decoration: BoxDecoration(
                            color: toggleButtonBackgroundColor,
                            borderRadius: BorderRadius.circular(50.r),
                            border: Border.all(
                              width: 4.w,
                              color: Colors.white,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0.w),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter Your Name",
                                    hintStyle:
                                        TextStyle(color: toggleButtonTextColor),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.w, vertical: 40.h),
                        child: Container(
                          height: 180.h,
                          // width: 600.w,
                          decoration: BoxDecoration(
                            color: toggleButtonBackgroundColor,
                            borderRadius: BorderRadius.circular(50.r),
                            border: Border.all(
                              width: 4.w,
                              color: Colors.white,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0.w),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter Your Email",
                                    hintStyle:
                                        TextStyle(color: toggleButtonTextColor),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.w, vertical: 40.h),
                        child: Container(
                          height: 180.h,
                          // width: 600.w,
                          decoration: BoxDecoration(
                            color: toggleButtonBackgroundColor,
                            borderRadius: BorderRadius.circular(50.r),
                            border: Border.all(
                              width: 4.w,
                              color: Colors.white,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20.0.w),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter Phone Number",
                                    hintStyle:
                                        TextStyle(color: toggleButtonTextColor),
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                  child: Container(
                    height: 180.h,
                    // width: 600.w,
                    decoration: BoxDecoration(
                      color: toggleButtonBackgroundColor,
                      borderRadius: BorderRadius.circular(50.r),
                      border: Border.all(
                        width: 4.w,
                        color: Colors.white,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0.w),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Enter Your Password",
                              hintStyle:
                                  TextStyle(color: toggleButtonTextColor),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 150.h,
                    width: 500.w,
                    child: CustomButton(
                        text: 'Submit',
                        onToggle: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BlankScreen1()),
                          );
                        }),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, top: 80.h, bottom: 40.h),
                      child: RoundedIconButton(
                        imagePath: googleIcon,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BlankScreen1()),
                          );
                        },
                        text: "Sign up with Google",
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, right: 20.w, top: 10.h, bottom: 80.h),
                      child: RoundedIconButton(
                        imagePath: '',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BlankScreen1()),
                          );
                        },
                        text: "Other Sign up Methods",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}