import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double heightS = MediaQuery.of(context).size.height;
    double widthS = MediaQuery.of(context).size.width;

    return Container(
      height: heightS / 2.3, // Height of the container
      width: widthS / 2.2, // Width of the container
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border.all(color: Colors.pink, width: 2), // Border color and width
        borderRadius: BorderRadius.circular(16), // Optional: Rounded corners
      ),
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image
            Center(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 16.h,
                ),
                child: Image.asset(
                  productpng, // Replace with your image asset path
                  height: 450.h,
                  width: 450.w,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Heading text
            Padding(
              padding: EdgeInsets.only(top: 16.h, left: 20.w),
              child: Text(
                "TMB Nicotine Shot",
                style: TextStyle(
                  fontSize: 60.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff191970),
                ),
              ),
            ),

            // Description text
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 26.w),
              child: Text(
                "70VG : 30PG : 18MG",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 36.sp,
                  color: Colors.grey[700],
                ),
              ),
            ),

            // Row with three texts
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // First Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "₹270",
                      style: TextStyle(
                        fontSize: 44.sp,
                        color: Color(0xffFBBF24),
                      ),
                    ),
                  ),

                  // Second Text with cut line
                  Text(
                    "₹324",
                    style: TextStyle(
                      fontSize: 44.sp,
                      color: Colors.grey,
                      decoration: TextDecoration.lineThrough, // Strikethrough
                    ),
                  ),

                  // Third Text
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Text(
                      "20% Off",
                      style: TextStyle(
                        fontSize: 30.sp,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffEB5067),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Centered text at the bottom
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: Text(
                  "Nicotine Replacement ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 46.sp,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff9D4EDD),
                  ),
                ),
              ),
            ),
            //=========== Button======
            Padding(
              padding: EdgeInsets.only(top: 60.h),
              child: Center(
                child: SizedBox(
                  height: 105.h,
                  width: (widthS / 2.2) / 1.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00D4AA), // Background color
                      foregroundColor: Colors.white, // Text/Icon color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.r), // Rounded corners
                      ),
                      // padding: EdgeInsets.symmetric(
                      //     horizontal: 160.w, vertical: 16.h), // Button padding
                    ),
                    onPressed: () {
                      // Button action
                      print("Button Pressed!");
                    },
                    child: Text(
                      "Click Me", // Button text
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: 30.h,
          right: 30.w,
          child: Container(
            height: 100.h,
            // width: 100.w,
            decoration: BoxDecoration(
              color: Color(0xFFFFEEC2), // Background color
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.0.w, horizontal: 20.w),
              child: Row(
                mainAxisSize: MainAxisSize.min, // Adjust size to content
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFFBBF24), // Icon color
                    size: 54.h,
                  ),
                  SizedBox(width: 8.w), // Space between icon and text
                  Text(
                    "5.0",
                    style: TextStyle(
                      color: Color(0xFFFBBF24), // Text color
                      fontSize: 44.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
