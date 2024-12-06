import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen6.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Screenpage2 extends StatefulWidget {
  const Screenpage2({super.key});

  @override
  State<Screenpage2> createState() => _Screenpage2State();
}

class _Screenpage2State extends State<Screenpage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      appBar: backbuttonAppbar(),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w, top: 100.h),
            child: Text(
              "Rise above",
              style: TextStyle(color: iconSelectColor, fontSize: 80.sp),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 60.w),
            child: Text(
              "Addiction !",
              style: TextStyle(
                  color: iconSelectColor,
                  fontSize: 150.sp,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Center(
            child: Text(
              "one step  closer to a healthier life",
              style: TextStyle(color: textColorpurple, fontSize: 50.sp),
            ),
          ),

          // box1======
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Screen6()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(80.w),
              child: Container(
                height: 600.h,
                decoration: BoxDecoration(
                  color: Color(0xffE9E1FF),
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
                        "I want to Quit", // First text widget
                        style: TextStyle(
                          color: toggleButtonTextColor,
                          fontSize: 80.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h), // Spacing between the texts
                      SizedBox(
                        height: 400.h,
                        child: Image.asset(drinkspng),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // box 2========
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NavBarScreen()),
              );
            },
            child: Padding(
              padding: EdgeInsets.all(80.w),
              child: Container(
                height: 600.h,
                decoration: BoxDecoration(
                  color: Color(0xffFFE1E6),
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
                        "I am A Well Wisher", // First text widget
                        style: TextStyle(
                          color: Color(0xffFB7185),
                          fontSize: 80.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10.h), // Spacing between the texts
                      SizedBox(
                        height: 400.h,
                        child: Image.asset(couplepng),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
