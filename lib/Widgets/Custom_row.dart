import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRow extends StatefulWidget {
  Color containerColor;
  Color textColor;
  String year;
  String date;
  String time;
  String heading;
  String sub;
  String note;

  CustomRow({
    Key? key,
    required this.containerColor,
    required this.textColor,
    required this.year,
    required this.date,
    required this.time,
    required this.heading,
    required this.sub,
    required this.note,
  }) : super(key: key);

  @override
  State<CustomRow> createState() => _CustomRowState();
}

class _CustomRowState extends State<CustomRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 50.w, top: 20.h, right: 50.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.year,
                style: TextStyle(color: textcolorblue),
              ),
              Text(
                widget.date,
                style: TextStyle(
                    color: textcolorblue,
                    fontSize: 80.sp,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                widget.time,
                style: TextStyle(color: textcolorblue),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Image.asset(cigpng),
          ),
          Expanded(
            child: Material(
              elevation: 12.h, // Adds elevation (shadow effect)
              borderRadius:
                  BorderRadius.circular(32.r), // Optional: rounded corners
              child: Container(
                // height: 200.h,
                padding: EdgeInsets.all(16.w),
                decoration: BoxDecoration(
                  color: widget.containerColor, // Background color
                  borderRadius: BorderRadius.circular(
                      32.r), // Matches Material borderRadius
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Cigarettes Smoked: ${widget.heading}',
                      style: TextStyle(
                          fontSize: 58.sp, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.h), // Space between the texts
                    Text(
                      widget.sub,
                      style:
                          TextStyle(fontSize: 46.sp, color: widget.textColor),
                    ),
                    SizedBox(height: 8.h), // Space between the texts
                    Text(
                      widget.note,
                      style: TextStyle(fontSize: 46.sp, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
