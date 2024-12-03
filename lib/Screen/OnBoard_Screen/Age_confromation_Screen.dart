import 'package:dash_board/Provider/Age_conformation_provider.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen6.dart';
import 'package:dash_board/Screen/OnBoard_Screen/Screen7.dart';
import 'package:dash_board/Screen/OnBoard_Screen/ScreenPage2.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Style/Text_Style.dart';
import 'package:dash_board/Widgets/CustomToggleButton.dart';
import 'package:dash_board/Widgets/Custom_Button.dart';
import 'package:dash_board/Widgets/Custom_Top_Row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AgeConfromationScreen extends StatefulWidget {
  const AgeConfromationScreen({super.key});

  @override
  State<AgeConfromationScreen> createState() => _AgeConfromationScreenState();
}

class _AgeConfromationScreenState extends State<AgeConfromationScreen> {
  TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final checkboxState = Provider.of<AgeConformationProvider>(context);

    return Scaffold(
      backgroundColor: onBoardBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3,
              ),
              Padding(
                padding: EdgeInsets.only(left: 60.w),
                child: Text(
                  "Let's Get Started",
                  style: TextStyle(
                      color: iconSelectColor,
                      fontSize: 150.sp,
                      fontWeight: FontWeight.w700),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                child: Container(
                  height: 180.h,
                  // width: 600.w,
                  decoration: BoxDecoration(
                    color: toggleButtonBackgroundColor,
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(
                      width: 4.w,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Center(
                      child: TextField(
                        controller: age,
                        decoration: InputDecoration(
                            hintText: "Enter Your age",
                            hintStyle: TextStyle(color: toggleButtonTextColor),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
                child: Container(
                  height: 180.h,
                  // width: 600.w,
                  decoration: BoxDecoration(
                    color: toggleButtonBackgroundColor,
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(
                      width: 4.w,
                      color: Colors.white,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.0.w),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Select a language",
                            hintStyle: TextStyle(color: toggleButtonTextColor),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 400.h),
                child: Center(
                  child: SizedBox(
                    height: 150.h,
                    width: 500.w,
                    child: CustomButton(
                      text: 'Continue',
                      onToggle: () {
                        if (age.text.isNotEmpty) {
                          // Check if the input is not empty
                          try {
                            int enteredAge = int.parse(
                                age.text); // Parse the input to integer
                            if (enteredAge < 18) {
                              print('Under age');
                            } else {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Screenpage2()),
                              );
                            }
                          } catch (e) {
                            print(
                                'Invalid age entered'); // Handle invalid input
                          }
                        } else {
                          print('Age field is empty');
                        }
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
