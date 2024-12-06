import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PsychiatristScreen extends StatefulWidget {
  const PsychiatristScreen({super.key});

  @override
  State<PsychiatristScreen> createState() => _PsychiatristScreenState();
}

class _PsychiatristScreenState extends State<PsychiatristScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 150.h),
          child: Center(
              child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(8.0.w),
                child: Container(
                  height: 1100.h, // Adjust height as per requirement
                  width: double.infinity, // Full width
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(22.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.3), // Shadow color
                        blurRadius: 8.r,
                        offset: Offset(0, 4), // Shadow position
                      ),
                    ],
                  ),
                  padding: EdgeInsets.only(
                      left: 16.w), // Padding inside the container
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Image on the left
                          Padding(
                            padding: EdgeInsets.only(top: 50.h, left: 20.w),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.r),
                              child: Image.asset(
                                drjpg,
                                height: 400.h,
                                width: 200.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // Column with three Text widgets
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 50.w, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr.  Meera Krishnan',
                                    style: TextStyle(
                                      fontSize: 66.sp,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    "MBBS, MD Psychiatry, Certified Addiction Counselor",
                                    style: TextStyle(
                                      fontSize: 64.sp,
                                      color: textcolorblue,
                                    ),
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    "MBBS,DDVL",
                                    style: TextStyle(
                                      fontSize: 62.sp,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // ElevatedButton at the end
                          Padding(
                            padding: EdgeInsets.only(top: 20.h, right: 30.w),
                            child: ElevatedButton(
                              onPressed: () {
                                print("Button pressed!");
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                foregroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80.r),
                                ),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.w, vertical: 12.h),
                              ),
                              child: Text(
                                "Online",
                                style: TextStyle(fontSize: 54.sp),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          height: 100.h,
                          width: 450.w,
                          color: Color(0xFfFBBF24),
                          child: Center(child: Text("Bill @ \$28/min"))),
                      Divider(),
                      SizedBox(height: 20.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "6 years Experience",
                            style: TextStyle(
                              fontSize: 62.sp,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "412 Consultantions",
                            style: TextStyle(
                              fontSize: 62.sp,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.grey[200],
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            "Languages Spoken: English, Hindi, Tamil",
                            style: TextStyle(
                              fontSize: 62.sp,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 200.h,
                            width: 600.w,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    textcolorblue, // Background color
                                foregroundColor: Colors.white, // Text color
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.h,
                                    horizontal: 30.w), // Button height
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.r), // Rounded corners
                                ),
                              ),
                              child: Text(
                                "Talk Now",
                                style: TextStyle(
                                    fontSize: 60.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 200.h,
                            width: 600.w,
                            // Takes the full width of the parent
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Colors.grey[300], // Background color
                                foregroundColor: Colors.black, // Text color
                                padding: EdgeInsets.symmetric(
                                    vertical: 16.h,
                                    horizontal: 30.w), // Button height
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      30.r), // Rounded corners
                                ),
                              ),
                              child: Text(
                                "View Profile",
                                style: TextStyle(
                                    fontSize: 60.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          )),
        ),
      ),
    );
  }
}
