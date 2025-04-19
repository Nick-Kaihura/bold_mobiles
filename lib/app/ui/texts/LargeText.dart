import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;
  final Color textColor;

  const LargeText(this.text, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
          textAlign: TextAlign.start,
          style: TextStyle(
              color: textColor, fontFamily: "Inter_18pt-Thin", fontSize: 40),
          text),
    );
  }
}
