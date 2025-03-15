import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;

  const SmallText(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(style: Theme.of(context).textTheme.headlineSmall, text);
  }
}
