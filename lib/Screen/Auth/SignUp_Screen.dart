import 'package:dash_board/Screen/Auth/Login_Screen.dart';
import 'package:dash_board/Screen/Auth/Sign_In_screen.dart';

import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      body: Stack(
        children: [
          // Main Column (Existing UI)
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(80.w),
                  child: Container(
                    height: 600.h,
                    decoration: BoxDecoration(
                      color: toggleButtonBackgroundColor,
                      borderRadius: BorderRadius.circular(50.r),
                      border: Border.all(
                        width: 4.w,
                        color: Colors.white,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Congratulations !",
                            style: TextStyle(
                              color: const Color(0xff191970),
                              fontSize: 80.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 10.h),
                          SizedBox(
                            width: 900.w,
                            child: Text(
                              "Starting your smoke-free journey is the best gift you’ve given yourself.",
                              style: TextStyle(
                                color: toggleButtonTextColor,
                                fontSize: 60.sp,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Center(
                  child: SizedBox(
                    height: 150.h,
                    width: 500.w,
                    child: CustomButton(
                      text: 'Sign Up',
                      onToggle: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Image at the bottom
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              personpng, // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),

          // Text above the image
          Positioned(
            bottom: 260.h, // Adjust this value to control text position
            left: 0,
            right: 0,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignInScreen(),
                      ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account ?", // Replace with your desired text
                      style: TextStyle(
                        color: iconSelectColor,
                        fontSize: 60.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Sign in", // Replace with your desired text
                      style: TextStyle(
                        color: Color(0xffEF0000),
                        fontSize: 60.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
