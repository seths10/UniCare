// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: const TextStyle(
        fontSize: 18,
        letterSpacing: 0,
        fontWeight: FontWeight.normal,
        height: 1,
      ),
      textAlign: TextAlign.center,
    );
  }
}
