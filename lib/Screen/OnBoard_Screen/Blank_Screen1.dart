import 'package:dash_board/Screen/OnBoard_Screen/Blank_Screen2.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BlankScreen1 extends StatefulWidget {
  const BlankScreen1({super.key});

  @override
  State<BlankScreen1> createState() => _BlankScreen1State();
}

class _BlankScreen1State extends State<BlankScreen1> {
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
                  MaterialPageRoute(builder: (context) => const BlankScreen2()),
                );
              }),
        ),
      ),
    );
  }
}
