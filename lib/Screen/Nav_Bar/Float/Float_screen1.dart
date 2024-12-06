import 'package:dash_board/Provider/Float_screen1_provider.dart';
import 'package:dash_board/Screen/Nav_Bar/Float/Float_Screen2.dart';
import 'package:dash_board/Screen/Nav_Bar/Float/Reasons_list.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Widgets/Back_Button_Appbar.dart';
import 'package:dash_board/Widgets/CustomToggleButton.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FloatScreen1 extends StatelessWidget {
  const FloatScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<Floatscreen1Provider>(context);

    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      appBar: backbuttonAppbar(),
      body: Stack(children: [
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ListView for 10 items
                Padding(
                  padding: EdgeInsets.only(left: 60.w, bottom: 20.h),
                  child: Text(
                    "I Smokedß",
                    style: TextStyle(
                        fontSize: 80.sp,
                        color: textcolorblue,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.w, bottom: 20.h),
                  child: Text(
                    "What were you doing?",
                    style: TextStyle(
                        fontSize: 50.sp,
                        color: textcolorblue,
                        fontWeight: FontWeight.w700),
                  ),
                ),

                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding:
                      EdgeInsets.symmetric(horizontal: 40.w, vertical: 20.h),
                  itemCount: 11, // Total items
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 20.h, top: 30.h),
                      child: CustomToggleButton(
                        text: reasons[index],
                        isSelected: checkboxState.selectedIndex == index,
                        onToggle: () {
                          checkboxState.selectItem(index);
                        },
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 300.h,
                )
                // Positioned Continue Button
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 80.h,
          left: 0.w,
          right: 0,
          child: Center(
            child: SizedBox(
              height: 150.h,
              width: 500.w,
              child: CustomButton(
                  text: 'Continue',
                  onToggle: () {
                    if (checkboxState.selectedIndex != -1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FloatScreen2(),
                        ),
                      );
                    } else {
                      // Show a message if no item is selected
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Please select an item."),
                        ),
                      );
                    }
                  }),
            ),
          ),
        )
      ]),
    );
  }
}
