import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';
import 'package:dash_board/Widgets/Community_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "My Entries",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: appbarColor,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => NavBarScreen()),
                  (route) =>
                      false, // This ensures all previous routes are removed.
                );
              },
              icon: SvgPicture.asset(backSVG)),
        ),
        body: SafeArea(
            child: Center(
          child: CommunityContainer(
              imageUrl: drjpg,
              name: "usman",
              date: "23",
              comment:
                  "I’ve gone 90 days without a cigarette, but I still struggle when I’m stressed. Anyone have strategies for staying calm and resisting the urge?",
              iconText2: "1",
              iconText1: "2"),
        )));
  }
}
