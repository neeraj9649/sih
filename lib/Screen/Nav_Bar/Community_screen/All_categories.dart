import 'package:dash_board/Util/Colors/List_of_colors.dart';
import 'package:dash_board/Util/Png_Names/Png_Names.dart';
import 'package:dash_board/Widgets/Community_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCategories extends StatefulWidget {
  const AllCategories({super.key});

  @override
  State<AllCategories> createState() => _AllCategoriesState();
}

class _AllCategoriesState extends State<AllCategories> {
  // Sample list of data to be displayed
  final List<Map<String, String>> recentComments = [
    {
      "imageUrl": boatpng, // image URL path in assets/avt folder
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
      "imageUrl": user11,
      "name": "James",
      "date": "07/12/2024",
      "comment":
          "The first few weeks were the hardest, but staying busy and keeping my hands occupied helped. Hang in there, it's worth it!"
    },
    {
      "imageUrl": user12,
      "name": "Maria",
      "date": "06/12/2024",
      "comment":
          "Quitting smoking isn’t just about stopping, it’s about changing your mindset. Keep reminding yourself of why you started this journey!"
    },
    {
      "imageUrl": user15,
      "name": "John",
      "date": "05/12/2024",
      "comment":
          "It's so important to stay positive! Focus on how much better you'll feel and how much healthier your body will be."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: recentComments.length,
        itemBuilder: (context, index) {
          // Access the data for each comment in the list
          final item = recentComments[index];
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: CommunityContainer(
              containerColor: listofcolor[index % 3],
              commentColor: listofTextcolor[index % 3],
              imageUrl: item['imageUrl']!, // Pass image URL
              name: item['name']!, // Pass name
              date: item['date']!, // Pass date
              comment: item['comment']!, // Pass comment
              iconText2: "1", // Add custom logic for icons if necessary
              iconText1: "2", // Add custom logic for icons if necessary
            ),
          );
        },
      ),
    );
  }
}
