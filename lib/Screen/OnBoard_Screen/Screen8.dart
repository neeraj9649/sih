import 'package:dash_board/Provider/Screen8_Provider.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen9.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:dash_board/Widgets/CustomToggleButton.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Screen8 extends StatefulWidget {
  const Screen8({super.key});

  @override
  State<Screen8> createState() => _Screen8State();
}

class _Screen8State extends State<Screen8> {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<Screen8Provider>(context);

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
              child: CustomTopRow(
                  textValue:
                      'what do you think what reactions will happen to you if you quit ? '),
            ),
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                    child: SizedBox(
                      width: 800.w,
                      height: 200.h,
                      child: CustomToggleButton(
                        text: "Strong cravings ",
                        isSelected: checkboxState.checkboxStates[0],
                        onToggle: () {
                          checkboxState.toggleCheckbox(
                            0,
                            !(checkboxState.checkboxStates[0]),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                    child: SizedBox(
                      width: 300.w,
                      height: 200.h,
                      child: CustomToggleButton(
                        text: "Stress",
                        isSelected: checkboxState.checkboxStates[1],
                        onToggle: () {
                          checkboxState.toggleCheckbox(
                            1,
                            !(checkboxState.checkboxStates[1]),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ===================== Row 2=====================
            Padding(
              padding: EdgeInsets.all(8.0.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                    child: SizedBox(
                      width: 600.w,
                      height: 200.h,
                      child: CustomToggleButton(
                        text: "Anxiety",
                        isSelected: checkboxState.checkboxStates[2],
                        onToggle: () {
                          checkboxState.toggleCheckbox(
                            2,
                            !(checkboxState.checkboxStates[2]),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                    child: SizedBox(
                      width: 600.w,
                      height: 200.h,
                      child: CustomToggleButton(
                        text: "Low Mood ",
                        isSelected: checkboxState.checkboxStates[3],
                        onToggle: () {
                          checkboxState.toggleCheckbox(
                            3,
                            !(checkboxState.checkboxStates[3]),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Missing out on social momnts",
                isSelected: checkboxState.checkboxStates[4],
                onToggle: () {
                  checkboxState.toggleCheckbox(
                    4,
                    !(checkboxState.checkboxStates[4]),
                  );
                },
              ),
            ),
            SizedBox(
              height: 450.h,
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
                            builder: (context) => const Screen9()),
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
