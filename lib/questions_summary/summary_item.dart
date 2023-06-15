import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer =
        itemData['user_answers'] == itemData['correct_answers'];
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
            isCorrectAnswer: isCorrectAnswer,
            questionIndex: itemData['question_index'] as int),
        const SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemData['questions']! as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  itemData['user_answers'] as String,
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 202, 171, 252),
                  ),
                ),
                Text(
                  itemData['correct_answers'] as String,
                  style: GoogleFonts.lato(
                      color: const Color.fromARGB(255, 181, 254, 246)),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
