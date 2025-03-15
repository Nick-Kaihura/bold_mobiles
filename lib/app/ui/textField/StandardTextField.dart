import 'package:flutter/material.dart';

class StandardTextField extends StatelessWidget {
  final String hint;
  final String label;
  final Function onTextChange;

  const StandardTextField(this.hint, this.label, this.onTextChange);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400.0,
        child: TextField(
            decoration: InputDecoration(
              labelText: label,
              hintText: hint,
              border: UnderlineInputBorder(),
            ),
            maxLength: 20,
            onChanged: (text) {
              onTextChange(text);
            }));
  }
}
