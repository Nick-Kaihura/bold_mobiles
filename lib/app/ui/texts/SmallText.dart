import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color textColor;

  const SmallText(this.text, this.textColor);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      child: Text(
          textAlign: TextAlign.start,
          style: TextStyle(
              color: textColor, fontFamily: "Inter_18pt-Thin", fontSize: 16),
          text),
    );
  }
}
