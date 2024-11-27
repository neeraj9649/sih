import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appbarColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 200.h,
          ),
          Image.asset(womenpng),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 180.w),
            child: Container(
              // width: 250.w, // Set the width of the container
              height: 250.h, // Set the height of the container
              decoration: BoxDecoration(
                color:
                    Color(0xFFE9E1FF), // Background color inside the container
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 3, // Border width
                ),
                borderRadius:
                    BorderRadius.circular(10), // Optional: Rounded corners
              ),
              child: Center(
                child: Text(
                  "25 Nov 2024",
                  style: GoogleFonts.gabriela(
                      fontSize: 100.sp, color: iconSelectColor),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 180.w),
            child: Container(
              height: 250.h, // Set the height of the container
              decoration: BoxDecoration(
                color:
                    Color(0xFFE9E1FF), // Background color inside the container
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 3, // Border width
                ),
                borderRadius:
                    BorderRadius.circular(10), // Optional: Rounded corners
              ),
              child: Center(
                child: Text(
                  "3 : 45 pm",
                  style: GoogleFonts.gabriela(
                      fontSize: 100.sp, color: iconSelectColor),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: 480.w, right: 480.w, top: 150.h, bottom: 50.h),
            child: InkWell(
              onTap: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => NavBarScreen()));
              },
              child: Container(
                height: 170.h, // Set the height of the container
                decoration: BoxDecoration(
                  color: Color(
                      0xffFFB2BF), // Background color inside the container
                  border: Border.all(
                    color: Color(0xffEB5067), // Border color
                    width: 3, // Border width
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Optional: Rounded corners
                ),
                child: Center(
                  child: Text(
                    "Continue",
                    style: GoogleFonts.gabriela(
                        fontSize: 60.sp, color: Color(0xffEB5067)),
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
