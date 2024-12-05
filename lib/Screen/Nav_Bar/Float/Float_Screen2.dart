import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Shop_screen/Shop_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FloatScreen2 extends StatefulWidget {
  const FloatScreen2({super.key});

  @override
  State<FloatScreen2> createState() => _FloatScreen2State();
}

class _FloatScreen2State extends State<FloatScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h),
              child: Center(child: Image.asset(possiblepng)),
            ),
            Padding(
              padding: EdgeInsets.all(80.w),
              child: Container(
                // height: 600.h,
                decoration: BoxDecoration(
                  color: toggleButtonBackgroundColor,
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(
                    width: 4.w,
                    color: Colors.white,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Stay Strong !",
                          style: TextStyle(
                              color: const Color(0xff191970),
                              fontSize: 100.sp,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10.h),
                        SizedBox(
                          width: 900.w,
                          child: Text(
                            "Progress is not a straight path; it’s a series of twists, turns, and sometimes even pauses. What matters most is recognizing where you are and taking the next step forward.",
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
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Text(
                "We have updated your profile, your nicotine goals are restarted.",
                style: TextStyle(
                  color: Color(0xffFBBF24),
                  fontSize: 60.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 90.h),
              child: Center(
                child: SizedBox(
                  height: 150.h,
                  width: 500.w,
                  child: CustomButton(
                      text: 'Close',
                      onToggle: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBarScreen(),
                          ),
                        );
                      }),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
