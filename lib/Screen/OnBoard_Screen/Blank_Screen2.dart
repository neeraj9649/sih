import 'package:dash_board/Screen/OnBoard_Screen/Age_confromation_Screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlankScreen2 extends StatefulWidget {
  const BlankScreen2({super.key});

  @override
  State<BlankScreen2> createState() => _BlankScreen2State();
}

class _BlankScreen2State extends State<BlankScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      appBar: backbuttonAppbar(),
      body: Center(
        child: SizedBox(
          height: 150.h,
          width: 500.w,
          child: CustomButton(
              text: 'Continue',
              onToggle: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AgeConformationScreen()),
                );
              }),
        ),
      ),
    );
  }
}
