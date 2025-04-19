import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';

class StandardTextField extends StatelessWidget {
  final String hint;
  final String label;
  final Function onTextChange;
  final bool autoFocus;

  const StandardTextField(
      this.hint, this.label, this.onTextChange, this.autoFocus);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 52,
        child: TextField(
            autofocus: autoFocus,
            decoration: InputDecoration(
              labelText: hint,
              hintText: hint,
              focusColor: ColorUtil().getColor(ColorConstants().baseColorHex),
              border: const UnderlineInputBorder(),
            ),
            // maxLength: 30,
            onSubmitted: (text) {
              onTextChange(text);
            }));
  }
}
