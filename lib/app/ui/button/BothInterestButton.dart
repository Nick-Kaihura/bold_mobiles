import 'package:Bold/app/constants/ColorConstants.dart';
import 'package:Bold/app/util/ColorUtil.dart';
import 'package:flutter/material.dart';

import '../texts/SmallText.dart';

class BothInterestButton extends StatefulWidget {
  final VoidCallback onPressed;

  const BothInterestButton(this.onPressed, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<BothInterestButton> {
  late bool isClicked = false;

  void handleClicks() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        padding: const EdgeInsets.all(2),
        child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              side: BorderSide(
                  color: ColorUtil()
                      .getColor(ColorConstants().interestButtonBgColor),
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
            padding: const EdgeInsets.all(0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                    width: 30, height: 30, "lib/assets/icons/gender-male.jpg"),
                const SizedBox(width: 2),
                SmallText(
                    "Both",
                    isClicked
                        ? Colors.white
                        : ColorUtil()
                            .getColor(ColorConstants().interestButtonBgColor)),
                const SizedBox(width: 2),
                Image.asset(
                    width: 30, height: 30, "lib/assets/icons/gender-female.jpg")
              ],
            ),
          ),
        ));
  }
}
