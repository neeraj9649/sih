import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommunityContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String date;
  final String comment;
  final String iconText1;
  final String iconText2;

  CommunityContainer({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.date,
    required this.comment,
    required this.iconText2,
    required this.iconText1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 0, // No minimum width
        maxWidth: double.infinity, // Stretch only if necessary
      ),
      padding: EdgeInsets.all(16.w), // Responsive padding
      decoration: BoxDecoration(
        color: const Color(0xFFFFE1E6), // Background color
        borderRadius: BorderRadius.circular(12.r), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min, // Shrink to fit content
        children: [
          // First child: Row with image and name/date
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Circular image
              CircleAvatar(
                radius: 30.r, // Responsive size
                backgroundImage: AssetImage(drjpg),
              ),
              SizedBox(width: 12.w), // Space between image and column
              // Column with name and date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 16.sp, // Responsive text size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 4.h), // Space between name and date
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 14.sp, // Responsive text size
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h), // Space between row and comment

          // Second child: Comment text
          Text(
            comment,
            style: TextStyle(
              fontSize: 14.sp, // Responsive text size
              color: Colors.black,
            ),
          ),
          SizedBox(height: 16.h), // Space between comment and icon row

          // Third child: Row with SVG image and text
          Row(
            children: [
              // First SVG icon and text
              SvgPicture.asset(
                chatSvg,
                height: 24.h, // Responsive size
                width: 24.w,
              ),
              SizedBox(width: 8.w), // Space between icon and text
              Text(
                iconText1,
                style: TextStyle(
                  fontSize: 14.sp, // Responsive text size
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 16.w), // Space between two icon-text pairs

              // Second SVG icon and text
              SvgPicture.asset(
                chatSvg,
                height: 24.h, // Responsive size
                width: 24.w,
              ),
              SizedBox(width: 8.w), // Space between icon and text
              Text(
                iconText2,
                style: TextStyle(
                  fontSize: 14.sp, // Responsive text size
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
