import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Colors/List_of_colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Util/Style/Text_Style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MeditationScreen extends StatefulWidget {
  const MeditationScreen({super.key});

  @override
  State<MeditationScreen> createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color(0xff00D4AA),
        backgroundColor: Colors.transparent,
        title: Text(
          "Meditation",
          style: TextStyle(color: Color(0xff00D4AA)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: listofcolor[1],
              child: Center(
                  child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 200.w, vertical: 30.h),
                child: Text(
                  "Calm your mind, reduce cravings, and embrace a healthier you",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: listofTextcolor[1]),
                ),
              )),
            ),
            //========
            Padding(
              padding: EdgeInsets.all(30.w),
              child: Container(
                width: MediaQuery.of(context).size.width, // Set width
                // height: 200.h, // Set height
                padding: EdgeInsets.all(16), // Add padding
                decoration: BoxDecoration(
                  color: Colors.white, // Background color
                  borderRadius: BorderRadius.circular(16), // Rounded corners
                  border: Border.all(
                    color: Color(0xffFBBF24), // Border color
                    width: 2, // Border width
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // PNG Image
                    Image.asset(
                      "Assets/Png/medel.png", // Replace with your image path
                      width: 100.w, // Set image width
                      // height: 600.h, // Set image height
                    ),
                    SizedBox(width: 26.w), // Add spacing between image and text
                    // Text
                    Expanded(
                      child: Text(
                        "Mindful Starter - Earn this badge by completing your first session.",
                        style: TextStyle(
                          color: const Color.fromARGB(
                              255, 71, 71, 71), // Text color
                          fontSize: 16, // Text size
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis, // Handle long text
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //===========
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
              child: Text(
                "Guided Meditation Sessions",
                style: GoogleFonts.gabriela(
                    fontSize: 86.sp, fontWeight: FontWeight.w800),
              ),
            ),
            //=======
            SizedBox(
              height: 900.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(80.w),
                        child: Container(
                          // height: 600.h,
                          padding: EdgeInsets.all(30.w),
                          width: 650.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFEEC2),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0.w),
                                  child: Text(
                                    "5-Minute Quick Calm",
                                    style: TextStyle(
                                        color: listofTextcolor[2],
                                        fontSize: 80.sp,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0.w, right: 40.w),
                                  child: Text(
                                    "Perfect for when you need a quick reset to curb cravings.",
                                    style: TextStyle(
                                      color: textcolorblue,
                                      fontSize: 50.sp,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Slider(
                                  value: 20,
                                  min: 0,
                                  max: 50,
                                  activeColor: appbarColor,
                                  inactiveColor: Colors.grey.shade300,
                                  onChanged: (value) {},
                                  // Optional
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //=========
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 80.w),
                        child: Container(
                          // height: 600.h,
                          padding: EdgeInsets.all(30.w),
                          width: 650.w,
                          decoration: BoxDecoration(
                            color: Color(0xffFFEEC2),
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
                                Padding(
                                  padding: EdgeInsets.all(8.0.w),
                                  child: Text(
                                    "Craving Control",
                                    style: TextStyle(
                                        color: listofTextcolor[2],
                                        fontSize: 80.sp,
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20.0.w, right: 40.w),
                                  child: Text(
                                    "Learn to manage cigarette cravings with mindfulness.",
                                    style: TextStyle(
                                      color: textcolorblue,
                                      fontSize: 50.sp,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Duration : 10 min",
                                        style: TextStyle(fontSize: 40.sp),
                                      ),
                                      Icon(
                                        Icons.play_arrow,
                                        color: appbarColor,
                                        size: 100.h,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            //======
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
              child: Text(
                "Benefits of Meditation",
                style: GoogleFonts.gabriela(
                    fontSize: 86.sp, fontWeight: FontWeight.w800),
              ),
            ),
            //==
            Padding(
              padding: EdgeInsets.all(20.0.w),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: listofcolor[0], // Background color
                    borderRadius: BorderRadius.circular(
                        32.r), // Matches Material borderRadius
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // First container - takes 70% space
                      Expanded(
                        flex: 7,
                        child: Container(
                          child: Wrap(
                              spacing:
                                  30.0.w, // Spacing between images horizontally
                              runSpacing:
                                  5.h, // Spacing between rows vertically
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.w, top: 50.h),
                                  child: Text(
                                    "Benefits of Meditation",
                                    style: GoogleFonts.gabriela(
                                        fontSize: 46.sp,
                                        color: listofTextcolor[0],
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: Text(
                                    "Calm your mind and break free from triggers, reducing the urge to smoke.",
                                    style: GoogleFonts.gabriela(
                                      fontSize: 46.sp,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      // Second container - takes remaining 30% space
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "Assets/Png/stressp.png",
                          height: 500.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //======
            Padding(
              padding: EdgeInsets.all(20.0.w),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFEEC2), // Background color
                    borderRadius: BorderRadius.circular(
                        32.r), // Matches Material borderRadius
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // First container - takes 70% space
                      Expanded(
                        flex: 7,
                        child: Container(
                          child: Wrap(
                              spacing:
                                  30.0.w, // Spacing between images horizontally
                              runSpacing:
                                  5.h, // Spacing between rows vertically
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 30.w, top: 50.h),
                                  child: Text(
                                    "Enhance Relaxation",
                                    style: GoogleFonts.gabriela(
                                        fontSize: 46.sp,
                                        color: listofTextcolor[2],
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 30.w),
                                  child: Text(
                                    "Ease your anxiety, release tension, and discover a sense of inner peace through mindful meditation practices.",
                                    style: GoogleFonts.gabriela(
                                      fontSize: 46.sp,
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ),
                      // Second container - takes remaining 30% space
                      Expanded(
                        flex: 3,
                        child: Image.asset(
                          "Assets/Png/joyp.png",
                          height: 500.h,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
