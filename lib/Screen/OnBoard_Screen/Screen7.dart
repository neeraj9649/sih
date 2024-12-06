import 'package:dash_board/Provider/Screen6_Provider.dart';
import 'package:dash_board/Provider/Screen7_Provider.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen8.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen9.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:dash_board/Widgets/CustomToggleButton.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  Widget build(BuildContext context) {
    final screen6State = Provider.of<Screen6Provider>(context);
    final checkboxState = Provider.of<Screen7Provider>(context);

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
                  textValue: 'For what reason you want to quit ? '),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "My Health",
                isSelected: checkboxState.checkboxStates[0],
                onToggle: () {
                  checkboxState.toggleCheckbox(
                    0,
                    !(checkboxState.checkboxStates[0]),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "My Wallet",
                isSelected: checkboxState.checkboxStates[1],
                onToggle: () {
                  checkboxState.toggleCheckbox(
                    1,
                    !(checkboxState.checkboxStates[1]),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "My Friends and Family",
                isSelected: checkboxState.checkboxStates[2],
                onToggle: () {
                  checkboxState.toggleCheckbox(
                    2,
                    !(checkboxState.checkboxStates[2]),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "My Academics and Career",
                isSelected: checkboxState.checkboxStates[3],
                onToggle: () {
                  checkboxState.toggleCheckbox(
                    3,
                    !(checkboxState.checkboxStates[3]),
                  );
                },
              ),
            ),
            SizedBox(
              height: 300.h,
            ),
            Center(
              child: SizedBox(
                height: 150.h,
                width: 500.w,
                child: CustomButton(
                    text: 'Continue',
                    onToggle: () {
                      if (screen6State.selectedOption == 1) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen9()),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen8()),
                        );
                      }
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
