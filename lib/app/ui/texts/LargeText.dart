import 'package:flutter/material.dart';

class LargeText extends StatelessWidget {
  final String text;

  const LargeText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(style: Theme.of(context).textTheme.headlineLarge, text);
  }
}
