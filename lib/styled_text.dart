import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {

  const StyledText(this.text, this.sizeFont, {super.key});

  final String text;

  final double sizeFont;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: sizeFont,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      
    );
  }
}