import 'package:dash_board/Screen/DashBoard_Screen/DashBoard_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/BackButtonAppbart.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      appBar: backbuttonAppbar(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 600.h,
              width: double.infinity,
              child: CustomTopRow(textValue: 'Enter Your Details'),
            ),
            SizedBox(
              height: 200.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
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
                          hintText: "Enter Your Phone Number",
                          hintStyle: TextStyle(color: toggleButtonTextColor),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ),
            // =============
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
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
                          hintStyle: TextStyle(color: toggleButtonTextColor),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: Center(
                child: SizedBox(
                  height: 150.h,
                  width: 500.w,
                  child: CustomButton(
                      text: 'Submit',
                      onToggle: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NavBarScreen()),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
