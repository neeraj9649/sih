import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:dash_board/Util/Style/Text_Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "My Entries",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: appbarColor,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(builder: (context) => NavBarScreen()),
                (route) =>
                    false, // This ensures all previous routes are removed.
              );
            },
            icon: SvgPicture.asset(backSVG)),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                        Text(
                          "19 Nov",
                          style: TextStyle(
                              color: textcolorblue,
                              fontSize: 80.sp,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Image.asset(cigpng),
                    ),
                    Expanded(
                      child: Material(
                        elevation: 12.h, // Adds elevation (shadow effect)
                        borderRadius: BorderRadius.circular(
                            32.r), // Optional: rounded corners
                        child: Container(
                          height: 200.h,
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Color(0xffE9E1FF), // Background color
                            borderRadius: BorderRadius.circular(
                                32.r), // Matches Material borderRadius
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Cigarettes Smoked: 2',
                                style: TextStyle(
                                    fontSize: 58.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.h), // Space between the texts
                              Text(
                                '"I was with smokers"',
                                style: TextStyle(
                                    fontSize: 46.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //===============

              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                        Text(
                          "19 Nov",
                          style: TextStyle(
                              color: textcolorblue,
                              fontSize: 80.sp,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Image.asset(cigpng),
                    ),
                    Expanded(
                      child: Material(
                        elevation: 12.h, // Adds elevation (shadow effect)
                        borderRadius: BorderRadius.circular(
                            32.r), // Optional: rounded corners
                        child: Container(
                          height: 200.h,
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Color(0xffFFE1E6), // Background color
                            borderRadius: BorderRadius.circular(
                                32.r), // Matches Material borderRadius
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Cigarettes Smoked: 2',
                                style: TextStyle(
                                    fontSize: 58.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.h), // Space between the texts
                              Text(
                                '"I was with smokers"',
                                style: TextStyle(
                                    fontSize: 46.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //==================

              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                        Text(
                          "19 Nov",
                          style: TextStyle(
                              color: textcolorblue,
                              fontSize: 80.sp,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Image.asset(cigpng),
                    ),
                    Expanded(
                      child: Material(
                        elevation: 12.h, // Adds elevation (shadow effect)
                        borderRadius: BorderRadius.circular(
                            32.r), // Optional: rounded corners
                        child: Container(
                          height: 200.h,
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Color(0xffFFEEC2), // Background color
                            borderRadius: BorderRadius.circular(
                                32.r), // Matches Material borderRadius
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Cigarettes Smoked: 2',
                                style: TextStyle(
                                    fontSize: 58.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.h), // Space between the texts
                              Text(
                                '"I was with smokers"',
                                style: TextStyle(
                                    fontSize: 46.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //==================
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                        Text(
                          "19 Nov",
                          style: TextStyle(
                              color: textcolorblue,
                              fontSize: 80.sp,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Image.asset(cigpng),
                    ),
                    Expanded(
                      child: Material(
                        elevation: 12.h, // Adds elevation (shadow effect)
                        borderRadius: BorderRadius.circular(
                            32.r), // Optional: rounded corners
                        child: Container(
                          height: 200.h,
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Color(0xffE9E1FF), // Background color
                            borderRadius: BorderRadius.circular(
                                32.r), // Matches Material borderRadius
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Cigarettes Smoked: 2',
                                style: TextStyle(
                                    fontSize: 58.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.h), // Space between the texts
                              Text(
                                '"I was with smokers"',
                                style: TextStyle(
                                    fontSize: 46.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //===============

              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                        Text(
                          "19 Nov",
                          style: TextStyle(
                              color: textcolorblue,
                              fontSize: 80.sp,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Image.asset(cigpng),
                    ),
                    Expanded(
                      child: Material(
                        elevation: 12.h, // Adds elevation (shadow effect)
                        borderRadius: BorderRadius.circular(
                            32.r), // Optional: rounded corners
                        child: Container(
                          height: 200.h,
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Color(0xffFFE1E6), // Background color
                            borderRadius: BorderRadius.circular(
                                32.r), // Matches Material borderRadius
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Cigarettes Smoked: 2',
                                style: TextStyle(
                                    fontSize: 58.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.h), // Space between the texts
                              Text(
                                '"I was with smokers"',
                                style: TextStyle(
                                    fontSize: 46.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //==================
              SizedBox(
                height: 100.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                        Text(
                          "19 Nov",
                          style: TextStyle(
                              color: textcolorblue,
                              fontSize: 80.sp,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "2024",
                          style: TextStyle(color: textcolorblue),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40.w),
                      child: Image.asset(cigpng),
                    ),
                    Expanded(
                      child: Material(
                        elevation: 12.h, // Adds elevation (shadow effect)
                        borderRadius: BorderRadius.circular(
                            32.r), // Optional: rounded corners
                        child: Container(
                          height: 200.h,
                          padding: EdgeInsets.all(16.w),
                          decoration: BoxDecoration(
                            color: Color(0xffFFEEC2), // Background color
                            borderRadius: BorderRadius.circular(
                                32.r), // Matches Material borderRadius
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Cigarettes Smoked: 2',
                                style: TextStyle(
                                    fontSize: 58.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 8.h), // Space between the texts
                              Text(
                                '"I was with smokers"',
                                style: TextStyle(
                                    fontSize: 46.sp, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //==================
            ],
          ),
        ),
      ),
    );
  }
}
