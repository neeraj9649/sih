import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopRow extends StatelessWidget {
  final String textValue;
  const CustomTopRow({super.key, required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(womenpng, height: 600.h, width: 400.w),
        Container(
          padding: const EdgeInsets.all(12.0), // Padding inside the bubble
          margin: const EdgeInsets.all(10.0), // Margin outside the bubble
          constraints:
              const BoxConstraints(maxWidth: 250), // Max width of the bubble
          decoration: BoxDecoration(
            color: customRowTextBoxcolor, // Bubble color
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0), // Rounded corner
              topRight: Radius.circular(20.0), // Rounded corner
              bottomRight: Radius.circular(20.0), // Rounded corner
              bottomLeft: Radius.circular(0.0), // Pointed corner
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                offset: const Offset(2, 2), // Shadow position
                blurRadius: 5.0,
              ),
            ],
          ),
          child: Text(
            textValue,
            style: TextStyle(
              fontSize: 16.0,
              color: customRowTextBoxtextcolor, // Text color
            ),
          ),
        ),
      ],
    );
  }
}
