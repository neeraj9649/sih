import 'package:dash_board/Provider/Screen10_Provider.dart';
import 'package:dash_board/Screen/DashBoard_Screen/DashBoard_Screen.dart';
import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/CustomToggleButton.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<Screen10Provider>(context);

    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 600.h,
              width: double.infinity,
              child:
                  CustomTopRow(textValue: 'how many times you tried to quit ?'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Never, this is first time ",
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
                text: "Between 1 nd 4 times",
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
                text: "More than 4 times",
                isSelected: checkboxState.checkboxStates[2],
                onToggle: () {
                  checkboxState.toggleCheckbox(
                    2,
                    !(checkboxState.checkboxStates[2]),
                  );
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
                            builder: (context) => const NavBarScreen()),
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
