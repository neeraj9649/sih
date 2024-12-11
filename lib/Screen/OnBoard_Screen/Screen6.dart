import 'package:dash_board/Provider/Is_Alcohol_provider.dart';
import 'package:dash_board/Provider/Screen6_Provider.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen7.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:dash_board/Widgets/CustomToggleButton.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  @override
  Widget build(BuildContext context) {
    final alcohol = Provider.of<IsAlcoholProvider>(context);
    final checkboxState = Provider.of<Screen6Provider>(context);

    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      appBar: backbuttonAppbar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 600.h,
              width: double.infinity,
              child: CustomTopRow(textValue: 'What do you want to quit?'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Alcohol",
                isSelected: checkboxState.checkboxStates[0],
                onToggle: () {
                  alcohol.checkAlcohol(true);
                  checkboxState.toggleCheckbox(0);
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Cigarette",
                isSelected: checkboxState.checkboxStates[1],
                onToggle: () {
                  alcohol.checkAlcohol(false);

                  checkboxState.toggleCheckbox(1);
                },
              ),
            ),
            SizedBox(
              height: 800.h,
            ),
            Center(
              child: SizedBox(
                height: 150.h,
                width: 500.w,
                child: CustomButton(
                    text: 'Continue',
                    onToggle: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen7()),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
