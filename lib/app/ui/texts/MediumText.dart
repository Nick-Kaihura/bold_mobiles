import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  final String text;

  const MediumText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(style: Theme.of(context).textTheme.headlineMedium, text);
  }
}
