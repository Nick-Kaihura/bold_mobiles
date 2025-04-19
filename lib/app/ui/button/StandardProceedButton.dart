import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';
import '../texts/SmallText.dart';

class StandardProceedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const StandardProceedButton(this.buttonText, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor:
                  ColorUtil().getColor(ColorConstants().baseColorHex)),
          child: SmallText(buttonText, Colors.white)),
    );
  }
}
