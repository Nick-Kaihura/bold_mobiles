import 'package:flutter/material.dart';

import '../../button/StandardInterestsButton.dart';
import '../../button/StandardProceedButton.dart';
import '../../texts/LargeText.dart';
import '../../texts/SmallText.dart';
import 'HobbyScreen.dart';

class TargetScreen extends StatefulWidget {
  const TargetScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _TargetScreen();
  }
}

class _TargetScreen extends State<TargetScreen> {
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
                const LargeText("What Are You Hoping to Find?", Colors.black),
                const SmallText(
                    "Tell us what you are looking for.", Colors.black),
                const SmallText(
                    "This helps us create better connections for you.",
                    Colors.black),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  StandardInterestsButton(
                                      buttonText: "Love",
                                      onPressed: submitInterests,
                                      color: Colors.black),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  StandardInterestsButton(
                                      buttonText: "A serious Relationship",
                                      onPressed: submitInterests,
                                      color: Colors.black)
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  StandardInterestsButton(
                                    buttonText: "Casual Dates",
                                    onPressed: submitInterests,
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  StandardInterestsButton(
                                      buttonText: "Exploring Connections",
                                      onPressed: submitInterests,
                                      color: Colors.black)
                                ]),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            StandardProceedButton("Continue", submitInterests)
          ],
        ),
      ),
    );
  }

  void submitInterests() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HobbyScreen()));
  }
}
