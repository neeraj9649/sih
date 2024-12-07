import 'package:dash_board/Provider/Community_provider.dart';
import 'package:dash_board/Screen/Nav_Bar/Community_screen/All_categories.dart';
import 'package:dash_board/Screen/Nav_Bar/Community_screen/Recent_screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Colors/List_of_colors.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:dash_board/Widgets/Community_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class CommunityScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  CommunityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentPage = Provider.of<CommunityProvider>(context).currentPage;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Community",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: appbarColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const NavBarScreen()),
              (route) => false,
            );
          },
          icon: SvgPicture.asset(backSVG),
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
        child: Column(
          children: [
            // Buttons Row
            Padding(
              padding: EdgeInsets.only(top: 10.h),
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
                      context.read<CommunityProvider>().updatePage(0);
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          racSvg,
                          colorFilter: ColorFilter.mode(
                              currentPage == 0 ? Colors.white : Colors.blue,
                              BlendMode.srcATop),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "All categories",
                          style: TextStyle(
                            color: currentPage == 0
                                ? Colors.white
                                : Colors.blue, // Blue text when unselected
                          ),
                        ),
                      ],
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      _pageController.animateToPage(
                        1, // Navigate to Screen 2
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                      context.read<CommunityProvider>().updatePage(1);
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
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset(
                          menuSvg,
                          colorFilter: ColorFilter.mode(
                              currentPage == 1 ? Colors.white : Colors.blue,
                              BlendMode.srcATop),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "All categories",
                          style: TextStyle(
                            color: currentPage == 1
                                ? Colors.white
                                : Colors.blue, // Blue text when unselected
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  context.read<CommunityProvider>().updatePage(index);
                },
                children: communityScreenList,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> communityScreenList = [AllCategories(), RecentScreen()];
