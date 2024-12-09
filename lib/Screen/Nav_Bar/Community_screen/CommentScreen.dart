import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';

class CommentScreen extends StatefulWidget {
  const CommentScreen({super.key});

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  final TextEditingController _commentController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Write Message for Others",
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: appbarColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 46),
            Text(
              'What is inside your mind?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: fieldTextColor,
              ),
            ),
            TextField(
              controller: _descriptionController,
              maxLines: 4,
              decoration: InputDecoration(
                filled: true,
                fillColor: fieldBgColor,
                hintText: 'Elaborate your thoughts...',
                hintStyle: TextStyle(color: Colors.grey), // Hint text style
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: fieldBgColor,
                      width: 2.0), // Border color and width
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: fieldTextColor,
                      width: 2.0), // Border color when not focused
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: fieldTextColor,
                      width: 3.0), // Border color when focused
                ),
                contentPadding:
                    EdgeInsets.all(12), // Padding inside the TextField
              ),
            ),
            SizedBox(height: 350),
            ElevatedButton(
              onPressed: () {
                // Handle saving the comment and description if needed
                print("Comment: ${_commentController.text}");
                print("Description: ${_descriptionController.text}");
                // Reset text fields
                _commentController.clear();
                _descriptionController.clear();
                // Optionally navigate back after submitting the comment
                Navigator.pop(context);
              },
              child: Text(
                'Submit',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: appbarColor),
            ),
          ],
        ),
      ),
    );
  }
}
