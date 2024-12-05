import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:dash_board/Widgets/Card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Two tabs: For You and All Products
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shop"),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 40.w),
              child: SvgPicture.asset(shoppingCartIcon),
            )
          ],
        ),
        body: Column(
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                elevation: 5,
                shadowColor: Colors.white,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFCDEEF7), // Background color
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(12.w),
                        child: SvgPicture.asset(
                          searchSVG,
                          fit: BoxFit.contain,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                      hintText: "Search",
                      hintStyle: TextStyle(color: Color(0xff2296EE)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: EdgeInsets.symmetric(vertical: 16.h),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),

            // TabBar
            TabBar(
              labelColor: iconSelectColor,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: Colors.grey,
              indicatorColor: iconSelectColor, // Active tab indicator color
              tabs: [
                Tab(text: "For You"),
                Tab(text: "All Products"),
              ],
            ),

            // TabBarView
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1: For You
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: 30,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CardWidget(),
                              CardWidget(),
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                  // Tab 2: All Products

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(
                      itemCount: 30,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(top: 20.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              CardWidget(),
                              CardWidget(),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
