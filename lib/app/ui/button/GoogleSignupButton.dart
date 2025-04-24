import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';
import '../texts/SmallText.dart';

class GoogleSignupButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const GoogleSignupButton(this.buttonText, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343,
      height: 52,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor:
                ColorUtil().getColor(ColorConstants().baseColorHex)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
                width: 30, height: 30, "lib/assets/icons/google-logo-36.png"),
            const SizedBox(width: 10),
            SmallText(buttonText, Colors.white)
          ],
        ),
      ),
    );
  }
}
