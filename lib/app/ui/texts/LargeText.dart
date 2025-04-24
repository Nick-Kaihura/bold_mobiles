import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;
  final Color textColor;

  const LargeText(this.text, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          textAlign: TextAlign.start,
          style: TextStyle(
              color: textColor, fontFamily: "Inter_24pt-Bold", fontSize: 40),
          text),
    );
  }
}
