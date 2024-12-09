import 'package:dash_board/Provider/quiz_provider.dart';
import 'package:dash_board/Util/Colors/Colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import '../providers/quiz_provider.dart';
import 'summary_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<QuizProvider>(context);
    final questions = provider.questions;
    final currentQuestion = questions[currentQuestionIndex];
    final options = currentQuestion["options"] as List<String>;

    return Scaffold(
      appBar: AppBar(
        title: Text('Question ${currentQuestionIndex + 1}/${questions.length}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentQuestion["question"] ?? "No question available",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ...List.generate(options.length, (index) {
              final option = options[index];
              return GestureDetector(
                onTap: () {
                  provider.selectOption(currentQuestionIndex, index);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color:
                        provider.selectedOptions[currentQuestionIndex] == index
                            ? appbarColor
                            : Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    option,
                    style: TextStyle(
                      color: provider.selectedOptions[currentQuestionIndex] ==
                              index
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                ),
              );
            }),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (currentQuestionIndex > 0)
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        currentQuestionIndex--;
                      });
                    },
                    child: const Text('Previous'),
                  ),
                ElevatedButton(
                  onPressed: () {
                    if (currentQuestionIndex < questions.length - 1) {
                      setState(() {
                        currentQuestionIndex++;
                      });
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SummaryScreen(),
                        ),
                      );
                    }
                  },
                  child: Text(
                    currentQuestionIndex < questions.length - 1
                        ? 'Next'
                        : 'Finish',
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
