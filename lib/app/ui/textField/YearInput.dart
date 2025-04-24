import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';
import '../texts/SmallText.dart';

class YearInput extends StatelessWidget {
  final Function onTextChange;
  final bool autoFocus;

  const YearInput(this.onTextChange, this.autoFocus, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 153,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SmallText("Year", Colors.black),
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
