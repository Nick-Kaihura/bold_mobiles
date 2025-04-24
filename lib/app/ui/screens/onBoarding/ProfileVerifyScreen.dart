import 'package:Bold/app/ui/button/StandardOutlinedButton.dart';
import 'package:Bold/app/ui/button/StandardProceedButton.dart';
import 'package:Bold/app/ui/texts/LargeText.dart';
import 'package:Bold/app/ui/texts/SmallText.dart';
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
            const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LargeText("Verify your profile", Colors.black),
                  SizedBox(height: 10),
                  SmallText(
                      "Take two selfies to verify your profile. These photos will not appear on your profile",
                      Colors.black)
                ]),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )
              ],
            ),
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
