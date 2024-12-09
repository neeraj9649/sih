import 'package:dash_board/Screen/Heal/Heal_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Plus_screen/Plus_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/questions/quiz_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Declare a TextEditingController for the TextField
  TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    // Dispose the controller to free up resources
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          logo, // Replace with the path to your logo asset
          height: 100, // Set the height of the logo
        ),
        leading: IconButton(
            onPressed: () {}, icon: SvgPicture.asset(leadingappiconSvg)),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizScreen(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                chatSvg,
                height: 80.h, // Adjust size for responsiveness
                width: 80.w,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
                child: Text(
                  "Motivation for You",
                  style: GoogleFonts.gabriela(
                    fontSize: 86.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.w),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      // =============== 1: Love yourself and those around you
                      Container(
                        width: 700.w,
                        height: 600.h,
                        decoration: BoxDecoration(
                          color: containerColor1,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(66.0.h),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Love yourself and those around you – break the habit.",
                                    style: GoogleFonts.gabriela(
                                      color: container1TextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                familypng,
                                height: 110,
                                width: 110,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),

                      // =============== 2: Your health is worth it
                      Container(
                        width: 700.w,
                        height: 600.h,
                        decoration: BoxDecoration(
                          color: containerColor2,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(66.0.h),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Your health is worth it – quit today and start healing.",
                                    style: GoogleFonts.gabriela(
                                      color: container2TextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                family1,
                                height: 110,
                                width: 110,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),

                      // =============== 3: Achieve your dreams
                      Container(
                        width: 700.w,
                        height: 600.h,
                        decoration: BoxDecoration(
                          color: containerColor1,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(66.0.h),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Achieve your dreams without addiction holding you back.",
                                    style: GoogleFonts.gabriela(
                                      color: container1TextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                family2,
                                height: 110,
                                width: 110,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),

                      // =============== 4: Be a role model
                      Container(
                        width: 700.w,
                        height: 600.h,
                        decoration: BoxDecoration(
                          color: containerColor2,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(66.0.h),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: SizedBox(
                                  width: 200,
                                  child: Text(
                                    "Be a role model – inspire others to live addiction-free.",
                                    style: GoogleFonts.gabriela(
                                      color: container2TextColor,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(
                                family3,
                                height: 110,
                                width: 110,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20.w),

                      // // =============== 5: Reclaim your freedom
                      // Container(
                      //   width: 700.w,
                      //   height: 600.h,
                      //   decoration: BoxDecoration(
                      //     color: containerColor5,
                      //     borderRadius: BorderRadius.circular(16),
                      //   ),
                      //   child: Stack(
                      //     children: [
                      //       Padding(
                      //         padding: EdgeInsets.all(66.0.h),
                      //         child: Align(
                      //           alignment: Alignment.topLeft,
                      //           child: SizedBox(
                      //             width: 200,
                      //             child: Text(
                      //               "Reclaim your freedom – addiction doesn’t define you.",
                      //               style: GoogleFonts.gabriela(
                      //                 color: container5TextColor,
                      //                 fontSize: 16,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       Align(
                      //         alignment: Alignment.bottomRight,
                      //         child: Image.asset('assets/images/freedom.png'),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(width: 20.w),

                      // // =============== 6: Live a happier life
                      // Container(
                      //   width: 700.w,
                      //   height: 600.h,
                      //   decoration: BoxDecoration(
                      //     color: containerColor6,
                      //     borderRadius: BorderRadius.circular(16),
                      //   ),
                      //   child: Stack(
                      //     children: [
                      //       Padding(
                      //         padding: EdgeInsets.all(66.0.h),
                      //         child: Align(
                      //           alignment: Alignment.topLeft,
                      //           child: SizedBox(
                      //             width: 200,
                      //             child: Text(
                      //               "Live a happier life – let go of what’s holding you back.",
                      //               style: GoogleFonts.gabriela(
                      //                 color: Colors.blueAccent,
                      //                 fontSize: 16,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //       Align(
                      //         alignment: Alignment.bottomRight,
                      //         child: Image.asset('assets/images/happiness.png'),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(40.w),
                child: Container(
                  width: MediaQuery.of(context).size.width, // Set width
                  height: 250.h, // Set height
                  padding: EdgeInsets.all(16), // Add padding
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    borderRadius: BorderRadius.circular(16), // Rounded corners
                    border: Border.all(
                      color: Color(0xFF22D3EE), // Border color
                      width: 2, // Border width
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // PNG Image
                      Image.asset(
                        boatpng, // Replace with your image path
                        width: 200.w, // Set image width
                        // height: 600.h, // Set image height
                      ),
                      SizedBox(
                          width:
                              16), // Add spacing between image and input field

                      // TextField with Suffix Icon
                      Flexible(
                        child: TextField(
                          controller:
                              _controller, // Controller to manage the TextField
                          decoration: InputDecoration(
                            hintText:
                                "How are you today?", // Label inside the input field
                            hintStyle: TextStyle(
                              color: iconSelectColor
                                  .withOpacity(0.6), // Hint text color
                              fontSize: 16, // Hint text size
                            ),
                            // Remove the border and focusedBorder properties
                            border: InputBorder
                                .none, // This removes the border completely
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 12.0),
                            suffixIcon: IconButton(
                              icon:
                                  Icon(Icons.arrow_forward), // The "next" icon
                              onPressed: () {
                                _controller
                                    .clear(); // Reset the TextField when pressed
                              },
                            ),
                          ),
                          style: TextStyle(
                            color: iconSelectColor, // Input text color
                            fontSize: 18, // Input text size
                          ),
                          maxLines: 1, // Restrict to a single line
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
                child: Text(
                  "My Progress",
                  style: GoogleFonts.gabriela(
                    fontSize: 86.sp,
                  ),
                ),
              ),
              // ===================
              Padding(
                padding: EdgeInsets.all(15.0.w),
                child: Container(
                  width: MediaQuery.of(context).size.width, // Container width
                  padding: EdgeInsets.all(10.w), // Padding around the container
                  decoration: BoxDecoration(
                    color: Color(0xFFE9E1FF), // Background color
                    borderRadius: BorderRadius.circular(16), // Rounded corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // First Row: PNG image and text
                      Padding(
                        padding: EdgeInsets.only(top: 30.h, left: 30.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            // PNG Image
                            Image.asset(
                              ontimepng,

                              // height: 210.h, // Image height
                            ),
                            SizedBox(
                                width: 16.w), // Spacing between image and text
                            // Text beside the image
                            Text(
                              "लत Free from",
                              style: TextStyle(
                                fontSize: 68.sp, // Font size
                                fontWeight: FontWeight.bold, // Bold text
                                color: iconSelectColor, // Text color
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20), // Space between rows

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 100.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Column for each number and its subtitle
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "09",
                                  style: GoogleFonts.gabriela(
                                      fontSize: 166.sp, color: iconSelectColor),
                                ),
                                SizedBox(
                                    height: 8
                                        .h), // Space between the number and subtitle
                                Text(
                                  "days",
                                  style: GoogleFonts.gabriela(
                                    fontSize: 46.sp,
                                    color: subtitleTextColor, // Subtitle color
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "12",
                                  style: GoogleFonts.gabriela(
                                      fontSize: 166.sp, color: iconSelectColor),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "hours",
                                  style: GoogleFonts.gabriela(
                                    fontSize: 46.sp,
                                    color: subtitleTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "13",
                                  style: GoogleFonts.gabriela(
                                      fontSize: 166.sp, color: iconSelectColor),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "minutes",
                                  style: GoogleFonts.gabriela(
                                    fontSize: 46.sp,
                                    color: subtitleTextColor,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "56",
                                  style: GoogleFonts.gabriela(
                                      fontSize: 166.sp, color: iconSelectColor),
                                ),
                                SizedBox(height: 8.h),
                                Text(
                                  "seconds",
                                  style: GoogleFonts.gabriela(
                                      fontSize: 46.sp,
                                      color: subtitleTextColor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                ),
              ),
              // ============ grid containers
              // 1
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Container(
                        width: MediaQuery.of(context).size.width /
                            2.3, // Set width
                        height: 500.h, // Set height
                        padding: EdgeInsets.all(16), // Add padding
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius:
                              BorderRadius.circular(16), // Rounded corners
                          border: Border.all(
                            color: Color(0xFF22D3EE), // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // PNG Image
                                Image.asset(
                                  moneypng, // Replace with your image path
                                  width: 100.w, // Set image width
                                  // height: 600.h, // Set image height
                                ),
                                SizedBox(
                                    width: 26
                                        .w), // Add spacing between image and text
                                // Text
                                Expanded(
                                  child: Text(
                                    "Money Saved (₹)",
                                    style: TextStyle(
                                      color: iconSelectColor, // Text color
                                      fontSize: 16, // Text size
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow
                                        .ellipsis, // Handle long text
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                "100",
                                style: GoogleFonts.gabriela(
                                    fontSize: 126.sp, color: iconSelectColor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // 2
                    Padding(
                      padding: EdgeInsets.all(30.w),
                      child: Container(
                        width: MediaQuery.of(context).size.width /
                            2.3, // Set width
                        height: 500.h, // Set height
                        padding: EdgeInsets.all(16), // Add padding
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius:
                              BorderRadius.circular(16), // Rounded corners
                          border: Border.all(
                            color: Color(0xffA78BFA), // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // PNG Image
                                Image.asset(
                                  lungspng, // Replace with your image path
                                  width: 100.w, // Set image width
                                  // height: 600.h, // Set image height
                                ),
                                SizedBox(
                                    width: 26
                                        .w), // Add spacing between image and text
                                // Text
                                Expanded(
                                  child: Text(
                                    "Cigarettes Avoided",
                                    style: TextStyle(
                                      color: iconSelectColor, // Text color
                                      fontSize: 16, // Text size
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow
                                        .ellipsis, // Handle long text
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                "10",
                                style: GoogleFonts.gabriela(
                                    fontSize: 126.sp, color: iconSelectColor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // grid 2
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50.w),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.w),
                      child: Container(
                        width: MediaQuery.of(context).size.width /
                            2.3, // Set width
                        height: 500.h, // Set height
                        padding: EdgeInsets.all(16), // Add padding
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius:
                              BorderRadius.circular(16), // Rounded corners
                          border: Border.all(
                            color: Color(0xffFB7185),
                            // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // PNG Image
                                Image.asset(
                                  heartpng, // Replace with your image path
                                  width: 100.w, // Set image width
                                  // height: 600.h, // Set image height
                                ),
                                SizedBox(
                                    width: 26
                                        .w), // Add spacing between image and text
                                // Text
                                Expanded(
                                  child: Text(
                                    "Life Days saved",
                                    style: TextStyle(
                                      color: iconSelectColor, // Text color
                                      fontSize: 16, // Text size
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow
                                        .ellipsis, // Handle long text
                                  ),
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                "110 Min",
                                style: GoogleFonts.gabriela(
                                    fontSize: 126.sp, color: iconSelectColor),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // 2
                    Padding(
                      padding: EdgeInsets.all(30.w),
                      child: Container(
                        width: MediaQuery.of(context).size.width /
                            2.3, // Set width
                        height: 500.h, // Set height
                        padding: EdgeInsets.all(16), // Add padding
                        decoration: BoxDecoration(
                          color: Colors.white, // Background color
                          borderRadius:
                              BorderRadius.circular(16), // Rounded corners
                          border: Border.all(
                            color: Color(0xffFBBF24), // Border color
                            width: 2, // Border width
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // PNG Image
                                Image.asset(
                                  progresspng, // Replace with your image path
                                  width: 100.w, // Set image width
                                  // height: 600.h, // Set image height
                                ),
                                SizedBox(
                                    width: 26
                                        .w), // Add spacing between image and text
                                // Text
                                Expanded(
                                  child: Text(
                                    "Badges Earned",
                                    style: TextStyle(
                                      color: iconSelectColor, // Text color
                                      fontSize: 16, // Text size
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow
                                        .ellipsis, // Handle long text
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Adjust the radius for rounded corners
                              child: Image.asset(
                                awardpng, // Replace with your image path
                                width: 80.0, // Set the desired image width
                                height: 80.0, // Set the desired image height
                                fit: BoxFit
                                    .cover, // Adjusts how the image should be fitted
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => HealScreen()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(20.w),
                  child: Center(
                      child: SvgPicture.asset(
                    letshealSvg,
                    width: MediaQuery.of(context).size.width,
                  )),
                ),
              ),
              //==========
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
                child: Text(
                  "Daily Task",
                  style: GoogleFonts.gabriela(
                    fontSize: 86.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.w),
                child: Container(
                  width: MediaQuery.of(context).size.width, // Set width
                  height: 200.h, // Set height
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
                        progresspng, // Replace with your image path
                        width: 100.w, // Set image width
                        // height: 600.h, // Set image height
                      ),
                      SizedBox(
                          width: 26.w), // Add spacing between image and text
                      // Text
                      Expanded(
                        child: Text(
                          "you have to smoke only 2 Cig",
                          style: TextStyle(
                            color: const Color.fromARGB(
                                255, 71, 71, 71), // Text color
                            fontSize: 16, // Text size
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis, // Handle long text
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //=======
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
                child: Text(
                  "My Entries",
                  style: GoogleFonts.gabriela(
                    fontSize: 86.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0.w),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      int index = 2; // Example index value to simulate behavior
                      if (index == 2) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              PlusScreen(), // Replace with your target screen
                        ));
                      } else {
                        // currentIndex = index; // Update current index
                      }
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Color.fromARGB(255, 173, 2, 2), width: 5.w),
                      color: Color(0xffF9D9DF), // Background color
                      borderRadius: BorderRadius.circular(
                          32.r), // Matches Material borderRadius
                    ),
                    child: Row(
                      children: [
                        // First container - takes 70% space
                        Expanded(
                          flex: 7,
                          child: Container(
                            child: Wrap(
                              spacing:
                                  20.0.w, // Spacing between images horizontally
                              runSpacing:
                                  50.h, // Spacing between rows vertically
                              children: List.generate(5, (index) {
                                return Container(
                                  width: 80, // Adjust width of each SVG image
                                  child: Image.asset(
                                    cigpng, // SVG image repeated
                                    width: 100.w,
                                    height: 100.h,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                        // Second container - takes remaining 30% space
                        Expanded(
                          flex: 3,
                          child: Image.asset(
                            quitpng,
                            height: 500.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Padding(
              //   padding: EdgeInsets.all(20.0.w),
              //   child: Container(
              //     decoration: BoxDecoration(
              //       border: Border.all(color: Color(0xffEF0000), width: 5.w),
              //       color: Color(0xffF9D9DF), // Background color
              //       borderRadius: BorderRadius.circular(
              //           32.r), // Matches Material borderRadius
              //     ), // Green background color
              //     child: Row(
              //       children: [
              //         // First container - takes 70% space
              //         Expanded(
              //           flex: 7,
              //           child: Container(
              //             child: Wrap(
              //               spacing:
              //                   50.0.w, // Spacing between images horizontally
              //               runSpacing: 80.h, // Spacing between rows vertically
              //               children: List.generate(5, (index) {
              //                 return Container(
              //                   // No fixed height, the height will adjust based on image size
              //                   width: 80, // Adjust width of each SVG image
              //                   child: Image.asset(
              //                     cigpng, // SVG image repeated
              //                     width: 100.w,
              //                     height: 100.h,
              //                   ),
              //                 );
              //               }),
              //             ),
              //           ),
              //         ),
              //         // Second container - takes remaining 30% space
              //         Expanded(
              //           flex: 3,
              //           child: Image.asset(
              //             quitpng,
              //             height: 500.h,
              //             // height: 200.h,
              //           ),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              // =====================
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
                child: Text(
                  "Learn",
                  style: GoogleFonts.gabriela(
                    fontSize: 86.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.w),
                child: Container(
                  height: 400.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE9E1FF), // Background color
                    borderRadius: BorderRadius.circular(
                        32.r), // Matches Material borderRadius
                  ),
                ),
              ),
              //=============
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 30.w, bottom: 10.h),
                child: Text(
                  "Testimonials",
                  style: GoogleFonts.gabriela(
                    fontSize: 86.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 30.w),
                child: Container(
                  height: 400.h,
                  decoration: BoxDecoration(
                    color: Color(0xffE9E1FF), // Background color
                    borderRadius: BorderRadius.circular(
                        32.r), // Matches Material borderRadius
                  ),
                ),
              ),
              //=======
            ],
          ),
        ),
      ),
    );
  }
}
