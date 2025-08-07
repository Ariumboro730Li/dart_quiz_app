import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Congrats, You\'re Awesome!',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 246, 246, 246),
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        const Text(
          'List of answers and questions',
          style: TextStyle(
            fontSize: 24,
            color: Color.fromARGB(255, 246, 246, 246),
            fontWeight: FontWeight.bold,
            fontFamily: 'OpenSans',
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        ...summaryData.map(
          (data) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Question Text
                Text(
                  '${data['question_index']}. ${data['question']}',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                // User Answer
                Text(
                  'Your answer: ${data['user_answer']}',
                  style: TextStyle(
                    fontSize: 12,
                    color: data['isCorrect'] == 'true'
                        ? Colors.greenAccent
                        : Colors.red,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                // Correct Answer (if wrong)
                Text(
                  'Correct answer: ${data['correct_answer']}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.greenAccent,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const Divider(color: Colors.white54),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
