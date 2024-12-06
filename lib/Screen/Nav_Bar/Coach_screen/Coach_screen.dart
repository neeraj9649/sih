import 'package:dash_board/Provider/coach_Screen_Slide_Provider.dart';
import 'package:dash_board/Screen/Nav_Bar/Coach_screen/Coach_screen_List.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CoachScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  CoachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage =
        Provider.of<CoachScreenSlideProvider>(context).currentPage;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarColor,
        title: Text(
          "Coach",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: IconButton(
              onPressed: () {
                // Add functionality if needed
              },
              icon: SvgPicture.asset(
                chatSvg,
                height: 80.h,
                width: 80.w,
              ),
            ),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            // Top Row for Buttons

            // PageView for onboarding screens
            Padding(
              padding: EdgeInsets.only(top: 80.h),
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  context.read<CoachScreenSlideProvider>().updatePage(index);
                },
                children: CoachScreenList,
              ),
            ),

            Positioned(
              top: 10.h,
              left: 20.w,
              right: 20.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      _pageController.animateToPage(
                        0, // Navigate to Screen 2
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      context.read<CoachScreenSlideProvider>().updatePage(0);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor:
                          currentPage == 0 ? Colors.blue : Colors.white,
                      side: BorderSide(
                        color: currentPage == 0
                            ? Colors.blue
                            : Colors.blue, // Blue border
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "Assigned Coach",
                      style: TextStyle(
                        color: currentPage == 0
                            ? Colors.white
                            : Colors.blue, // Blue text when unselected
                      ),
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      _pageController.animateToPage(
                        1, // Navigate to Screen 2
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      context.read<CoachScreenSlideProvider>().updatePage(1);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor:
                          currentPage == 1 ? Colors.blue : Colors.white,
                      side: BorderSide(
                        color: currentPage == 1
                            ? Colors.blue
                            : Colors.blue, // Blue border
                        width: 2.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                    ),
                    child: Text(
                      "Specialist Doctor",
                      style: TextStyle(
                        color: currentPage == 1
                            ? Colors.white
                            : Colors.blue, // Blue text when unselected
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
