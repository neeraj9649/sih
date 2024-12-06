import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CoustomContainerImage extends StatefulWidget {
  Color containerColor;
  Color textColor;
  String image;
  String text;
  CoustomContainerImage(
      {super.key,
      required this.image,
      required this.text,
      required this.containerColor,
      required this.textColor});

  @override
  State<CoustomContainerImage> createState() => _CoustomContainerImageState();
}

class _CoustomContainerImageState extends State<CoustomContainerImage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700.h,
      decoration: BoxDecoration(
        color: widget.containerColor,
        borderRadius: BorderRadius.circular(50.r),
        border: Border.all(
          width: 10.w,
          color: Colors.white,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 70.w),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.text, // First text widget
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 80.sp,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h), // Spacing between the texts
              SizedBox(
                height: 400.h,
                child: SvgPicture.asset(
                  widget.image,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
