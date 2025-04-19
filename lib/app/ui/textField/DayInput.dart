import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';
import '../texts/SmallText.dart';

class DayInput extends StatelessWidget {
  final Function onTextChange;
  final bool autoFocus;

  const DayInput(this.onTextChange, this.autoFocus);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 83,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SmallText("Day", Colors.black),
            TextField(
                autofocus: autoFocus,
                decoration: InputDecoration(
                  focusColor:
                      ColorUtil().getColor(ColorConstants().baseColorHex),
                  border: const OutlineInputBorder(),
                ),
                // maxLength: 2,
                onSubmitted: (text) {
                  onTextChange(text);
                })
          ],
        ));
  }
}
