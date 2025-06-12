import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';
import '../texts/SmallText.dart';

class StandardInterestsButton extends StatefulWidget {
  final String buttonText;
  final Function onPressed;
  final Color color;
  final bool isPressed = true;

  const StandardInterestsButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.color});

  @override
  State<StatefulWidget> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<StandardInterestsButton> {
  late bool isClicked = false;

  void handleClicks() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(2),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(
                  color: ColorUtil()
                      .getColor(ColorConstants().interestButtonBgColor),
                  width: 1,
                  style: BorderStyle.solid,
                  strokeAlign: BorderSide.strokeAlignCenter),
              backgroundColor: isClicked
                  ? ColorUtil().getColor(ColorConstants().interestButtonBgColor)
                  : Colors.transparent),
          onPressed: () {
            handleClicks();
            widget.onPressed.call;
          },
          child: SmallText(
              widget.buttonText,
              isClicked
                  ? Colors.white
                  : ColorUtil()
                      .getColor(ColorConstants().interestButtonBgColor)),
        ));
  }
}
