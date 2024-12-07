import 'package:flutter/material.dart';
import 'package:dash_board/Screen/Nav_Bar/Community_screen/Lists.dart';
import 'package:dash_board/Screen/Nav_Bar/Nav_Bar_screen.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:dash_board/Util/Colors/List_of_colors.dart';

import 'package:dash_board/Util/SVG_Names/SVG_Names.dart';

import 'package:dash_board/Widgets/Custom_row.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PlusScreen extends StatefulWidget {
  const PlusScreen({super.key});

  @override
  State<PlusScreen> createState() => _PlusScreenState();
}

class _PlusScreenState extends State<PlusScreen> {
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: listofcolor[0],
                textColor: listofTextcolor[0],
                date: dates[0],
                time: times[0],
                heading: cigarettesSmoked[0].toString(),
                year: years[0].toString(),
                sub: quotes[0],
                note: notes[0],
              ),
              // 1
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: listofcolor[1],
                textColor: listofTextcolor[1],
                date: dates[1],
                time: times[1],
                heading: cigarettesSmoked[1].toString(),
                year: years[1].toString(),
                sub: quotes[1],
                note: notes[1],
              ),
              // 2
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: Color(0xffFFEEC2),
                textColor: listofTextcolor[2],
                date: dates[2],
                time: times[2],
                heading: cigarettesSmoked[2].toString(),
                year: years[2].toString(),
                sub: quotes[2],
                note: notes[2],
              ),
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: listofcolor[0],
                textColor: listofTextcolor[0],
                date: dates[0],
                time: times[0],
                heading: cigarettesSmoked[0].toString(),
                year: years[0].toString(),
                sub: quotes[0],
                note: notes[0],
              ),
              // 1
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: listofcolor[1],
                textColor: listofTextcolor[1],
                date: dates[1],
                time: times[1],
                heading: cigarettesSmoked[1].toString(),
                year: years[1].toString(),
                sub: quotes[1],
                note: notes[1],
              ),
              // 2
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: Color(0xffFFEEC2),
                textColor: listofTextcolor[2],
                date: dates[2],
                time: times[2],
                heading: cigarettesSmoked[2].toString(),
                year: years[2].toString(),
                sub: quotes[2],
                note: notes[2],
              ),
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: listofcolor[0],
                textColor: listofTextcolor[0],
                date: dates[0],
                time: times[0],
                heading: cigarettesSmoked[0].toString(),
                year: years[0].toString(),
                sub: quotes[0],
                note: notes[0],
              ),
              // 1
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: listofcolor[1],
                textColor: listofTextcolor[1],
                date: dates[1],
                time: times[1],
                heading: cigarettesSmoked[1].toString(),
                year: years[1].toString(),
                sub: quotes[1],
                note: notes[1],
              ),
              // 2
              SizedBox(
                height: 200.h,
              ),
              CustomRow(
                containerColor: Color(0xffFFEEC2),
                textColor: listofTextcolor[2],
                date: dates[2],
                time: times[2],
                heading: cigarettesSmoked[2].toString(),
                year: years[2].toString(),
                sub: quotes[2],
                note: notes[2],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
