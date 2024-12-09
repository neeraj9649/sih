import 'package:dash_board/Provider/Screen10_Provider.dart';
import 'package:dash_board/Provider/Screen6_Provider.dart';
import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Smoking_Habit_Screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
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
    final screen6State = Provider.of<Screen6Provider>(context);

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
                      'How many times have you tried to quit your addiction?'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Never, this is the first time",
                isSelected: checkboxState.selectedOption == 0,
                onToggle: () {
                  checkboxState.selectOption(0); // Select this option
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "Between 1 and 4 times",
                isSelected: checkboxState.selectedOption == 1,
                onToggle: () {
                  checkboxState.selectOption(1); // Select this option
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
              child: CustomToggleButton(
                text: "More than 4 times",
                isSelected: checkboxState.selectedOption == 2,
                onToggle: () {
                  checkboxState.selectOption(2); // Select this option
                },
              ),
            ),
            SizedBox(
              height: 600.h,
            ),
            Center(
              child: SizedBox(
                height: 150.h,
                width: 500.w,
                child: CustomButton(
                  text: 'Continue',
                  onToggle: () {
                    // Get the selected option
                    String selectedValue = checkboxState.getSelectedValue();
                    print('Selected option: $selectedValue');

                    // Proceed if any option is selected
                    if (screen6State.selectedOption == 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NavBarScreen()),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SmokinghabitScreen()),
                      );
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
