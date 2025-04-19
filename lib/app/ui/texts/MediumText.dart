import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  final String text;
  final textColor;

  const MediumText(this.text, this.textColor);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      alignment: Alignment.centerLeft,
      child: Text(
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor, fontFamily: "Inter_18pt-Thin", fontSize: 30),
          text),
    );
  }
}
