import 'package:flutter/material.dart';

import '../../constants/ColorConstants.dart';
import '../../util/ColorUtil.dart';
import '../texts/SmallText.dart';

class NonBinaryInterestBuutton extends StatefulWidget {
  final VoidCallback onPressed;

  const NonBinaryInterestBuutton(this.onPressed, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ButtonState();
  }
}

class _ButtonState extends State<NonBinaryInterestBuutton> {
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
              color: ColorUtil().getColor(ColorConstants().baseColorHex),
              width: 1.5,
              style: BorderStyle.solid,
              strokeAlign: BorderSide.strokeAlignCenter),
          backgroundColor: isClicked
              ? ColorUtil().getColor(ColorConstants().baseColorHex)
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
                width: 30, height: 30, "lib/assets/icons/gender-bonbinary.jpg"),
            const SizedBox(width: 2),
            SmallText(
                "Non-binary",
                isClicked
                    ? Colors.white
                    : ColorUtil().getColor(ColorConstants().baseColorHex))
          ],
        ),
      ),
    );
  }
}
