// import 'package:flutter/material.dart';

// class CoachScreen extends StatefulWidget {
//   const CoachScreen({super.key});

//   @override
//   State<CoachScreen> createState() => _CoachScreenState();
// }

// class _CoachScreenState extends State<CoachScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('coach'),
//     );
//   }
// }

import 'package:dash_board/Provider/coach_Screen_Slide_Provider.dart';
import 'package:dash_board/Screen/Nav_Bar/Coach_screen/Coach_screen_List.dart';
import 'package:dash_board/Screen/Nav_Bar/Coach_screen/Psychiatrist_Screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class CoachScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  CoachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage =
        Provider.of<CoachScreenSlideProvider>(context).currentPage;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
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
                top: 20.h,
                child: TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Text(
                      "Back",
                      style: TextStyle(color: textColor),
                    ))),

            // Dots indicator
            // Positioned(
            //   bottom: 400.h,
            //   left: 0,
            //   right: 0,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: List.generate(
            //       CoachScreenList.length,
            //       (index) => _buildDot(context, index),
            //     ),
            //   ),
            // ),

            // Next or Get Started button
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Center(
                child: Consumer<CoachScreenSlideProvider>(
                  builder: (context, provider, child) {
                    return Text('yes');
                    // : ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: ButtonBackGroundColor,
                    //       padding: EdgeInsets.symmetric(
                    //           horizontal: 30, vertical: 15),
                    //       shape: RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(20),
                    //       ),
                    //     ),
                    //   onPressed: () {
                    //     if (provider.currentPage < screens.length - 1) {
                    //       // Move to the next screen
                    //       _pageController.nextPage(
                    //         duration: Duration(milliseconds: 300),
                    //         curve: Curves.easeInOut,
                    //       );
                    //     } else {
                    //       // On the last screen, navigate to LoginScreen
                    //       Navigator.pushReplacement(
                    //         context,
                    //         MaterialPageRoute(
                    //           builder: (context) => LoginScreen(),
                    //         ),
                    //       );
                    //     }
                    //   },
                    //   child: Text(
                    //     provider.currentPage == screens.length - 1
                    //         ? "Get Started"
                    //         : "Next",
                    //     style: TextStyle(fontSize: 16, color: textColor),
                    //   ),
                    // );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//   // Method to build dots for the bottom indicator
//   Widget _buildDot(BuildContext context, int index) {
//     return Consumer<CoachScreenSlideProvider>(
//       builder: (context, provider, child) {
//         return Container(
//           height: 10,
//           width: provider.currentPage == index ? 20 : 10,
//           margin: EdgeInsets.symmetric(horizontal: 5),
//           decoration: BoxDecoration(
//             color: provider.currentPage == index
//                 ? ButtonBackGroundColor
//                 : Colors.grey,
//             borderRadius: BorderRadius.circular(10),
//           ),
//         );
//       },
//     );
//   }
// }
