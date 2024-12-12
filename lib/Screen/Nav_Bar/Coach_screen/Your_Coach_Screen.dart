import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class YourCoachScreen extends StatefulWidget {
  const YourCoachScreen({super.key});

  @override
  State<YourCoachScreen> createState() => _YourCoachScreenState();
}

class _YourCoachScreenState extends State<YourCoachScreen> {
  final String googleMeetLink = "https://meet.google.com/mwj-zwea-sgj";

  Future<void> _launchGoogleMeetInChrome() async {
    final Uri url = Uri.parse(googleMeetLink);
    if (await canLaunchUrl(url)) {
      await launchUrl(
        url,
        mode: LaunchMode
            .externalNonBrowserApplication, // Ensures opening in Chrome
      );
    } else {
      throw 'Could not launch $googleMeetLink';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 150.h),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue, // Border color
                    width: 3.0, // Border width
                  ),
                  borderRadius:
                      BorderRadius.circular(10), // Optional rounded corners
                ),
                child: Image.asset(
                  dct1, // Replace with your image path
                  width: 150, // Set your desired width
                  height: 200, // Set your desired height
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Center(
              child: Text(
                'Dr.  Mahaveer ',
                style: TextStyle(
                    color: textcolorblue,
                    fontSize: 80.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Specialization: Addiction Recovery Specialist',
                style: TextStyle(
                  color: Color(0xff2296EE),
                  fontSize: 60.sp,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.w),
              child: Text(
                'Languages Spoken: English, Hindi, Tamil',
                style: TextStyle(
                  color: textColorpurple,
                  fontSize: 60.sp,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 300.h, // Height as per screen size
                  width: 900.w, // Width as per screen size
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(
                          0xFFFB7185), // Hex color converted to Flutter Color
                      width: 2.0, // Border thickness
                    ),
                    borderRadius:
                        BorderRadius.circular(20.r), // Optional rounded corners
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.w, top: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // Center the texts vertically
                      children: [
                        Text(
                          "Qualifications",
                          style: TextStyle(
                            color: Color(0xFFFB7185),
                            fontSize: 44.sp,
                          ),
                        ),
                        SizedBox(height: 10.h), // Add spacing between the texts
                        Text(
                          softWrap: true,
                          "MBBS, MD Psychiatry, Certified Addiction Counselor",
                          style:
                              TextStyle(fontSize: 50.sp, color: textcolorblue),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 300.h, // Height as per screen size
                  width: 400.w, // Width as per screen size
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                          textColorpurple, // Hex color converted to Flutter Color
                      width: 2.0, // Border thickness
                    ),
                    borderRadius:
                        BorderRadius.circular(20.r), // Optional rounded corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Center the texts vertically
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Text(
                          "Experience",
                          style: TextStyle(
                              color: textColorpurple,
                              fontSize: 60.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 10.h), // Add spacing between the texts
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "8+ ",
                              style: TextStyle(
                                  fontSize: 90.sp,
                                  color: textcolorblue,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "yrs",
                              style: TextStyle(
                                fontSize: 50.sp,
                                color: textcolorblue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 50.w),
              child: Container(
                height: 300.h, // Height as per screen size
                // width: 900.w, // Width as per screen size
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(
                        0xFfFBBF24), // Hex color converted to Flutter Color
                    width: 2.0, // Border thickness
                  ),
                  borderRadius:
                      BorderRadius.circular(20.r), // Optional rounded corners
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 30.w, top: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // Center the texts vertically
                    children: [
                      Text(
                        "Recent Reviews",
                        style: TextStyle(
                          color: Color(0xFfFBBF24),
                          fontSize: 44.sp,
                        ),
                      ),
                      SizedBox(height: 10.h), // Add spacing between the texts
                      Text(
                        softWrap: true,
                        "Dr. Mahaveer's sessions helped me stay smoke-free for 4 months!Ravi A.",
                        style: TextStyle(fontSize: 50.sp, color: textcolorblue),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.w, right: 50.w, bottom: 80.h),
              child: SizedBox(
                  height: 200.h,
                  width: double.infinity, // Takes the full width of the parent
                  child: ElevatedButton(
                    onPressed: _launchGoogleMeetInChrome,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: textcolorblue, // Background color
                      foregroundColor: Colors.white, // Text color
                      padding:
                          EdgeInsets.symmetric(vertical: 16.0), // Button height
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30.0), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "Book a Session",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
