import 'package:dash_board/Provider/Screen9_Provider.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen10.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/BackButtonAppbart.dart';
import 'package:dash_board/Widgets/CustomToggleButton.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<Screen9Provider>(context);

    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      appBar: backbuttonAppbar(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 600.h,
              width: double.infinity,
              child: CustomTopRow(textValue: 'When did you start?'),
            ),
            // Under 18 Toggle
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Under 18",
                isSelected: checkboxState.selectedAgeGroup == "Under 18",
                onToggle: () {
                  checkboxState.selectAgeGroup("Under 18");
                },
              ),
            ),
            // 18-24 Toggle
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "18-24 yrs",
                isSelected: checkboxState.selectedAgeGroup == "18-24 yrs",
                onToggle: () {
                  checkboxState.selectAgeGroup("18-24 yrs");
                },
              ),
            ),
            // Above 24 Toggle
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Above 24",
                isSelected: checkboxState.selectedAgeGroup == "Above 24",
                onToggle: () {
                  checkboxState.selectAgeGroup("Above 24");
                },
              ),
            ),
            SizedBox(
              height: 550.h,
            ),
            Center(
              child: SizedBox(
                height: 150.h,
                width: 500.w,
                child: CustomButton(
                  text: 'Continue',
                  onToggle: () {
                    // Check which option is selected and show the value
                    print(
                        'Selected Age Group: ${checkboxState.selectedAgeGroup}');

                    if (checkboxState.selectedAgeGroup.isNotEmpty) {
                      // Navigate based on selection
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Screen10()),
                      );
                    } else {
                      print('No selection made');
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
