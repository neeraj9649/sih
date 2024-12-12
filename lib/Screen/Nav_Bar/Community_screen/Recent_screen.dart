import 'package:dash_board/Util/Colors/List_of_colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Widgets/Community_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// This is the list containing user comments (image, name, date, and comment)
final List<Map<String, String>> recentComments = [
  {
    "imageUrl": boatpng,
    "name": "Peeter",
    "date": "10/12/2024",
    "comment":
        "I’ve gone 90 days without a cigarette, but I still struggle when I’m stressed. Anyone have strategies for staying calm and resisting the urge?"
  },
  {
    "imageUrl": user2,
    "name": "Ahmed",
    "date": "09/12/2024",
    "comment":
        "Quitting smoking is tough, but every day gets easier. Thanks for the support!"
  },
  {
    "imageUrl": user3,
    "name": "Sophie",
    "date": "08/12/2024",
    "comment":
        "It's been 6 months since I quit smoking. Every small victory makes me feel stronger and more in control. You can do it too!"
  },
  {
    "imageUrl": user4,
    "name": "James",
    "date": "07/12/2024",
    "comment":
        "The first few weeks were the hardest, but staying busy and keeping my hands occupied helped. Hang in there, it's worth it!"
  },
  {
    "imageUrl": user5,
    "name": "Maria",
    "date": "06/12/2024",
    "comment":
        "Quitting smoking isn’t just about stopping, it’s about changing your mindset. Keep reminding yourself of why you started this journey!"
  },
  {
    "imageUrl": user6,
    "name": "John",
    "date": "05/12/2024",
    "comment":
        "It's so important to stay positive! Focus on how much better you'll feel and how much healthier your body will be."
  },
  {
    "imageUrl": user7,
    "name": "Emma",
    "date": "04/12/2024",
    "comment":
        "Every time I resisted the urge to smoke, I felt proud. Every day without a cigarette is a win. You’ve got this!"
  },
];

class RecentScreen extends StatelessWidget {
  const RecentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount:
            recentComments.length, // Use the length of recentComments list
        itemBuilder: (context, index) {
          // Get data for each comment from the recentComments list
          final comment = recentComments[index];

          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: CommunityContainer(
              containerColor: listofcolor[index % 3], // Change based on index
              commentColor: listofTextcolor[index % 3], // Change based on index
              imageUrl: comment['imageUrl']!, // Use image URL from the list
              name: comment['name']!, // Use name from the list
              date: comment['date']!, // Use date from the list
              comment: comment['comment']!, // Use comment from the list
              iconText2: "1", // Example icon text
              iconText1: "2", // Example icon text
            ),
          );
        },
      ),
    );
  }
}
