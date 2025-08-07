import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
    {
      super.key,
      required this.answerText, 
      required this.onTap,
    }
  );

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context){
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [          
          ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 21, 1, 28),
              foregroundColor: const Color.fromARGB(221, 215, 209, 209),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              padding: const EdgeInsets.symmetric(
                  horizontal: 40, 
                  vertical: 10
                ),
            ),
            child: Text(answerText, textAlign: TextAlign.center),
          ),
          SizedBox(height: 10),
        ]
    );
  }

}