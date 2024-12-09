import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// Sample data for the list of doctors
final List<Map<String, dynamic>> doctorsList = [
  {
    "name": "Dr. Meera Krishnan",
    "qualification": "MBBS, MD Psychiatry, Certified Addiction Counselor",
    "experience": "6 years Experience",
    "consultations": "412 Consultations",
    "languages": "English, Hindi, Tamil",
    "rate": "\$28/min",
    "image": dct2, // Replace with actual paths
    "status": "Online",
  },
  {
    "name": "Dr. Rajesh Gupta",
    "qualification": "Psychiatry",
    "experience": "10 years Experience",
    "consultations": "600 Consultations",
    "languages": "English, Hindi",
    "rate": "\$32/min",
    "image": dct3, // Replace with actual paths
    "status": "Offline",
  },
  {
    "name": "Dr. Anjali Verma",
    "qualification": "Psychiatry",
    "experience": "8 years Experience",
    "consultations": "520 Consultations",
    "languages": "English, Bengali",
    "rate": "\$25/min",
    "image": dct4, // Replace with actual paths
    "status": "Online",
  },
  {
    "name": "Dr. Kavita Sharma",
    "qualification": "Psychiatry",
    "experience": "7 years Experience",
    "consultations": "450 Consultations",
    "languages": "English, Hindi, Marathi",
    "rate": "\$30/min",
    "image": dct6, // Replace with actual paths
    "status": "Online",
  },
  {
    "name": "Dr. Vivek Khanna",
    "qualification": "Psychiatry",
    "experience": "12 years Experience",
    "consultations": "780 Consultations",
    "languages": "English, Hindi, Punjabi",
    "rate": "\$35/min",
    "image": dct14, // Replace with actual paths
    "status": "Offline",
  },
  {
    "name": "Dr. Priya Reddy",
    "qualification": "Psychiatry",
    "experience": "9 years Experience",
    "consultations": "550 Consultations",
    "languages": "English, Telugu, Hindi",
    "rate": "\$33/min",
    "image": dct8, // Replace with actual paths
    "status": "Online",
  },
  {
    "name": "Dr. Arjun Mishra",
    "qualification": "Psychiatry",
    "experience": "11 years Experience",
    "consultations": "620 Consultations",
    "languages": "English, Hindi",
    "rate": "\$38/min",
    "image": dct9, // Replace with actual paths
    "status": "Online",
  },
  {
    "name": "Dr. Sangeeta Roy",
    "qualification": "Psychiatry",
    "experience": "15 years Experience",
    "consultations": "820 Consultations",
    "languages": "English, Bengali, Hindi",
    "rate": "\$40/min",
    "image": dct10, // Replace with actual paths
    "status": "Offline",
  },
  {
    "name": "Dr. Aditya Kapoor",
    "qualification": "Psychiatry",
    "experience": "8 years Experience",
    "consultations": "500 Consultations",
    "languages": "English, Hindi",
    "rate": "\$29/min",
    "image": dct5, // Replace with actual paths
    "status": "Online",
  },
  {
    "name": "Dr. Neha Bajaj",
    "qualification": "Psychiatry",
    "experience": "10 years Experience",
    "consultations": "580 Consultations",
    "languages": "English, Gujarati, Hindi",
    "rate": "\$34/min",
    "image": dct12, // Replace with actual paths
    "status": "Offline",
  },
  {
    "name": "Dr Chitrakshe Singh",
    "qualification": "Psychiatry",
    "experience": "5 years Experience",
    "consultations": "300 Consultations",
    "languages": "English, Marathi",
    "rate": "\$22/min",
    "image": dct13, // Replace with actual paths
    "status": "Online",
  },
];

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
          padding: EdgeInsets.only(top: 30.h),
          child: Center(
            child: ListView.builder(
              itemCount: doctorsList.length,
              itemBuilder: (context, index) {
                final doctor = doctorsList[index];
                return Padding(
                  padding: EdgeInsets.all(8.0.w),
                  child: Container(
                    height: 1100.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(22.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8.r,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.only(left: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Doctor's Image
                            Padding(
                              padding: EdgeInsets.only(top: 50.h, left: 20.w),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.r),
                                child: Image.asset(
                                  doctor['image'],
                                  height: 400.h,
                                  width: 350.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),

                            // Doctor's Details
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 50.w, left: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      doctor['name'],
                                      style: TextStyle(
                                        fontSize: 66.sp,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      doctor['qualification'],
                                      style: TextStyle(
                                        fontSize: 64.sp,
                                        color: textcolorblue,
                                      ),
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      doctor['languages'],
                                      style: TextStyle(
                                        fontSize: 62.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            // Status Button
                            Padding(
                              padding: EdgeInsets.only(top: 20.h, right: 30.w),
                              child: ElevatedButton(
                                onPressed: () {
                                  print("${doctor['name']} button pressed!");
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: doctor['status'] == "Online"
                                      ? Colors.blue
                                      : Colors.grey,
                                  foregroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(80.r),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.w, vertical: 12.h),
                                ),
                                child: Text(
                                  doctor['status'],
                                  style: TextStyle(fontSize: 54.sp),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 100.h,
                          width: 450.w,
                          color: Color(0xFFFBFF24),
                          child: Center(
                            child: Text("Bill @ ${doctor['rate']}"),
                          ),
                        ),
                        Divider(),
                        SizedBox(height: 20.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              doctor['experience'],
                              style: TextStyle(
                                fontSize: 62.sp,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              doctor['consultations'],
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
                              "Languages Spoken: ${doctor['languages']}",
                              style: TextStyle(
                                fontSize: 62.sp,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Talk Now Button
                            SizedBox(
                              height: 200.h,
                              width: 600.w,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: textcolorblue,
                                  foregroundColor: Colors.white,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16.h, horizontal: 30.w),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
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
                            // View Profile Button
                            SizedBox(
                              height: 200.h,
                              width: 600.w,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[300],
                                  foregroundColor: Colors.black,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16.h, horizontal: 30.w),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.r),
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
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
