import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  final String text;
  final textColor;

  const MediumText(this.text, this.textColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fill,
      alignment: Alignment.centerLeft,
      child: Text(
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor, fontFamily: "Inter_24pt-Bold", fontSize: 30),
          text),
    );
  }
}
