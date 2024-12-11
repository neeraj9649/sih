import 'package:flutter/material.dart';

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
      color: containerColor,
      child: Row(
        children: [
          Image.asset(imageUrl,
              width: 50, height: 50), // Correct way to display the image
          // Other widgets for name, date, and comment
          Column(
            children: [
              Text(name),
              Text(date),
              Text(comment),
            ],
          ),
        ],
      ),
    );
  }
}
