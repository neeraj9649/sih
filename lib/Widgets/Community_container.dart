import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CommunityContainer extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String date;
  final String comment;
  final String iconText1;
  final String iconText2;
  final Color containerColor;
  final Color commentColor;

  const CommunityContainer({
    required this.imageUrl,
    required this.name,
    required this.date,
    required this.comment,
    required this.iconText1,
    required this.iconText2,
    required this.containerColor,
    required this.commentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: 0, // No minimum width
        maxWidth: double.infinity, // Stretch only if necessary
      ),
      padding: EdgeInsets.all(36.w), // Responsive padding
      decoration: BoxDecoration(
        color: containerColor, // Background color
        borderRadius: BorderRadius.circular(36.r), // Rounded corners
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CircleAvatar(
                  radius: 80.r, // Responsive size
                  backgroundImage:
                      AssetImage(imageUrl), // Correct way to load the image
                ),
              ),
              SizedBox(width: 22.w), // Space between image and column
              // Column with name and date
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 56.sp, // Responsive text size
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10.h), // Space between name and date
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 44.sp, // Responsive text size
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h), // Space between row and comment

          // Second child: Comment text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              comment,
              style: TextStyle(
                fontSize: 54.sp, // Responsive text size
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 16.h), // Space between comment and icon row

          // Third child: Row with SVG image and text
          Row(
            children: [
              SizedBox(width: 20.w),
              // First SVG icon and text
              SvgPicture.asset(
                hearticonSvg,
                height: 64.h, // Responsive size
                width: 64.w,
              ),
              SizedBox(width: 8.w), // Space between icon and text
              Text(
                iconText1,
                style: TextStyle(
                  fontSize: 44.sp, // Responsive text size
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 16.w), // Space between two icon-text pairs

              // Second SVG icon and text
              SvgPicture.asset(
                chaticonSvg,
                height: 64.h, // Responsive size
                width: 64.w,
              ),
              SizedBox(width: 8.w), // Space between icon and text
              Text(
                iconText2,
                style: TextStyle(
                  fontSize: 44.sp, // Responsive text size
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
