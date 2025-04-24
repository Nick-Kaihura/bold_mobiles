import 'package:Bold/app/constants/ColorConstants.dart';
import 'package:Bold/app/util/ColorUtil.dart';
import 'package:flutter/material.dart';

import '../texts/SmallText.dart';

class MenInterestsButton extends StatefulWidget {
  final VoidCallback onPressed;

  const MenInterestsButton(this.onPressed, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<MenInterestsButton> {
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
              color: ColorUtil()
                  .getColor(ColorConstants().menInterestsButtonBgColor),
              width: 1.5,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter),
          backgroundColor: isClicked
              ? ColorUtil().getColor(ColorConstants().menInterestsButtonBgColor)
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
                width: 30, height: 30, "lib/assets/icons/gender-male.jpg"),
            const SizedBox(width: 2),
            SmallText(
                "Men",
                isClicked
                    ? Colors.white
                    : ColorUtil()
                        .getColor(ColorConstants().menInterestsButtonBgColor))
          ],
        ),
      ),
    );
  }
}
