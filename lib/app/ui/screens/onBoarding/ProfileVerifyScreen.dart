import 'package:Bold/app/constants/ColorConstants.dart';
import 'package:Bold/app/ui/button/StandardOutlinedButton.dart';
import 'package:Bold/app/ui/button/StandardProceedButton.dart';
import 'package:Bold/app/ui/texts/LargeText.dart';
import 'package:Bold/app/ui/texts/SmallText.dart';
import 'package:Bold/app/util/ColorUtil.dart';
import 'package:flutter/material.dart';

class ProfileVerifyScreen extends StatefulWidget {
  const ProfileVerifyScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProfileVerifyScreenState();
  }
}

class _ProfileVerifyScreenState extends State<ProfileVerifyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const LargeText("Verify your profile", Colors.black),
                  const SizedBox(height: 10),
                  const SmallText(
                      "Take two selfies to verify your profile. These photos will not appear on your profile",
                      Colors.black),
                  const SizedBox(height: 20),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card.outlined(
                          child: SizedBox(
                            height: 180,
                            width: 180,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: IconButton.filled(
                                      style: IconButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: ColorUtil().getColor(
                                              ColorConstants().baseColorHex)),
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    ),
                                  ),
                                  const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: SizedBox(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card.outlined(
                          child: SizedBox(
                            height: 180,
                            width: 180,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerRight,
                                    child: IconButton.filled(
                                      style: IconButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor: ColorUtil().getColor(
                                              ColorConstants().baseColorHex)),
                                      icon: const Icon(Icons.add),
                                      onPressed: () {},
                                    ),
                                  ),
                                  const Center(
                                    child: Padding(
                                      padding: EdgeInsets.all(2),
                                      child: SizedBox(),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ])
                ]),
            const SizedBox(height: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                StandardProceedButton("Take selfie", takeSelfie),
                const SizedBox(height: 10),
                StandardOutlinedButton("Skip", skipVerification),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.center,
                  child: const SmallText(
                      "Some features will be restricted until you are verified",
                      Colors.black),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void takeSelfie() {}

  void skipVerification() {}
}
