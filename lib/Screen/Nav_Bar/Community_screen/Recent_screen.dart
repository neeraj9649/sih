import 'package:dash_board/Util/Colors/List_of_colors.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:dash_board/Widgets/Community_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: CommunityContainer(
                containerColor: listofcolor[index % 3],
                commentColor: listofTextcolor[index % 3],
                imageUrl: drjpg,
                name: "usman",
                date: "23",
                comment:
                    "I’ve gone 90 days without a cigarette, but I still struggle when I’m stressed. Anyone have strategies for staying calm and resisting the urge?",
                iconText2: "1",
                iconText1: "2"),
          );
        },
      ),
    );
  }
}
