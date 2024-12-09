import 'package:flutter/material.dart';

class QuizProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> questions = [
    {
      "question":
          "Q1. Have you ever smoked at least 100 cigarettes in your entire life?",
      "options": ["No", "Yes"],
    },
    {
      "question":
          "Q2. How old were you when you first started to smoke cigarettes fairly regularly?",
      "options": ["Never smoked", "Under 18", "18-25", "25-35", "35+"],
    },
    {
      "question": "Q3. Do you NOW smoke daily, some days, or not at all?",
      "options": ["Daily", "Some Days", "Not at all"],
    },
    {
      "question": "Q4. How many cigarettes do you smoke per day now?",
      "options": ["1-5", "6-10", "11-20", "20+"],
    },
    {
      "question": "Q5. Did you ever quit smoking for 6 months or longer?",
      "options": ["No", "Yes"],
    },
    {
      "question": "Q6. For how many years in total did you quit smoking?",
      "options": ["1 year", "2-5 years", "6+ years"],
    },
    {
      "question":
          "Q7. During the past 30 days, how many days did you smoke cigarettes?",
      "options": ["1-5 days", "6-10 days", "11-20 days", "20+ days"],
    },
    {
      "question":
          "Q8. During the past 30 days, on days that you smoked, how many cigarettes did you smoke per day?",
      "options": ["1-5", "6-10", "11-20", "20+"],
    },
    {
      "question": "Q9. How old were you when you completely stopped smoking?",
      "options": ["Under 18", "18-25", "26-35", "36+"],
    },
    {
      "question":
          "Q10. When you were a smoker, did you ever quit smoking for 6 months or longer before you completely stopped smoking?",
      "options": ["No", "Yes"],
    },
    {
      "question":
          "Q11. During the time that you were a smoker, for how many years in total did you quit smoking?",
      "options": ["1 year", "2-5 years", "6+ years"],
    },
    {
      "question": "Q12. What is the main reason you quit smoking cigarettes?",
      "options": [
        "Advice of physician",
        "Health reasons, self-initiated, including disease prevention",
        "Pressure from others, excluding physician",
        "Other"
      ],
    },
    {
      "question":
          "Q13. Has a doctor ever prescribed any aids to help you quit smoking, such as nicotine replacement gum, the patch, or any type of medication?",
      "options": ["No", "Yes"],
    },
    {
      "question":
          "Q14. Have you ever used any over-the-counter aids to help you quit smoking, such as nicotine replacement gum, the patch, or any type of medication?",
      "options": ["No", "Yes"],
    },
    {
      "question":
          "Q15. Have you ever used behavioral or group therapy to help you quit smoking?",
      "options": ["No", "Yes"],
    },
    {
      "question":
          "Q16. Of the entire time you have or had smoked, on average how many cigarettes do you or did you smoke per day?",
      "options": ["1-5", "6-10", "11-20", "20+"],
    },
  ];

  List<int> selectedOptions = List.filled(16, -1); // 16 questions

  void selectOption(int questionIndex, int optionIndex) {
    selectedOptions[questionIndex] = optionIndex;
    notifyListeners();
  }
}
