import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';
import '../texts/SmallText.dart';

class WomenInterestsButton extends StatefulWidget {
  final VoidCallback onPressed;

  WomenInterestsButton(this.onPressed);

  @override
  State<StatefulWidget> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<WomenInterestsButton> {
  late bool isClicked = false;

  void handleClicks() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          side: BorderSide(
              color:
                  ColorUtil().getColor(ColorConstants().interestButtonBgColor),
              width: 1.5,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter),
          backgroundColor: isClicked
              ? ColorUtil().getColor(ColorConstants().interestButtonBgColor)
              : Colors.transparent),
      onPressed: () {
        handleClicks();
        widget.onPressed;
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
                width: 30, height: 30, "lib/assets/icons/gender-female.jpg"),
            const SizedBox(width: 2),
            SmallText(
                "Women",
                isClicked
                    ? Colors.white
                    : ColorUtil()
                        .getColor(ColorConstants().interestButtonBgColor))
          ],
        ),
      ),
    );
  }
}
