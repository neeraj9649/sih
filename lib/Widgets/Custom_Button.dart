import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final VoidCallback onToggle;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: Container(
        height: 180.h,
        // width: 600.w,
        decoration: BoxDecoration(
          color: toggleButtonBackgroundSelectColor,
          borderRadius: BorderRadius.circular(50.r),
          border: Border.all(
            width: 4.w,
            color: Colors.white,
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: toggleButtonTextSelectColor,
              fontSize: 80.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
