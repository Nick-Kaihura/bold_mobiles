import 'package:flutter/material.dart';

import '../texts/SmallText.dart';

class FloatingProceedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final Color color;

  const FloatingProceedButton(this.buttonText, this.onPressed, this.color);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 52,
        child: FloatingActionButton(
          elevation: 5,
          onPressed: onPressed,
          child: SmallText(buttonText, color),
        ));
  }
}
