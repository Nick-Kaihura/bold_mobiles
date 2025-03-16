import 'package:bold/app/constants/ColorConstants.dart';
import 'package:flutter/material.dart';

import '../../util/ColorUtil.dart';

class LoginButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const LoginButton(this.buttonText, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 400.0,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor:
                  ColorUtil().getColor(ColorConstants().baseColorHex)),
          child: Text(buttonText),
        ));
  }
}
