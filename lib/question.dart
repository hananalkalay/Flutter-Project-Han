import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      child: Text(
        questionText,
        style: const TextStyle(
            fontSize: 28, color: Colors.blue, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
