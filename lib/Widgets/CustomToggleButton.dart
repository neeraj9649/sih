import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomToggleButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final VoidCallback onToggle;

  const CustomToggleButton({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onToggle,
      child: Container(
        height: 180.h,
        // width: 600.w,
        decoration: BoxDecoration(
          color: isSelected
              ? toggleButtonBackgroundSelectColor
              : toggleButtonBackgroundColor,
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
              color: isSelected
                  ? toggleButtonTextSelectColor
                  : toggleButtonTextColor,
              fontSize: 80.sp,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
