import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';

class StandardOutlinedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const StandardOutlinedButton(this.buttonText, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 343,
        height: 52,
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                  width: 2,
                  color: ColorUtil().getColor(ColorConstants().baseColorHex)),
            ),
            onPressed: onPressed,
            child: Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: ColorUtil().getColor(ColorConstants().baseColorHex),
                    fontFamily: "Inter_18pt-Thin",
                    fontSize: 26),
                buttonText)));
  }
}
