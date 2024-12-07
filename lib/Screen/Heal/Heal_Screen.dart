import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:dash_board/Widgets/Coustom_container_image.dart';
import 'package:dash_board/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HealScreen extends StatefulWidget {
  const HealScreen({super.key});

  @override
  State<HealScreen> createState() => _HealScreenState();
}

class _HealScreenState extends State<HealScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(backSVG)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SvgPicture.asset(healSvg),
            ),
            Padding(
              padding: EdgeInsets.all(40.0.h),
              child: Center(
                  child: Text(
                "Your Journey to a Smoke-Free Life, One Step at a Time!",
                style: TextStyle(
                  fontSize: 80.sp,
                  color: Color(0xff9D4EDD),
                ),
                textAlign: TextAlign.center,
              )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: CoustomContainerImage(
                    image: breathingSvg,
                    text: "Meditation",
                    containerColor: Color(0xffFFE1E6),
                    textColor: Color(0xffEB5067),
                  ),
                ),
                Center(
                  child: CoustomContainerImage(
                    image: runningSvg,
                    text: "Exercise",
                    containerColor: Color(0xffE9E1FF),
                    textColor: Color(0xff9D4EDD),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 100.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: CoustomContainerImage(
                    image: yogaSVG,
                    text: "Yoga",
                    containerColor: Color(0xffFCF0D0),
                    textColor: Color(0xffFFC100),
                  ),
                ),
                Center(
                  child: CoustomContainerImage(
                    image: healthySvg,
                    text: "Dietitian",
                    containerColor: Color(0xff91FFE9),
                    textColor: Color(0xff0BC49F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
