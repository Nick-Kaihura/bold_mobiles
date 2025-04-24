import 'package:Bold/app/ui/button/BothInterestButton.dart';
import 'package:flutter/material.dart';

import '../../button/MenInterestButton.dart';
import '../../button/NonBinaryInterestButton.dart';
import '../../button/StandardProceedButton.dart';
import '../../button/WomenInterestButton.dart';
import '../../texts/LargeText.dart';
import '../../texts/SmallText.dart';

class InterestsScreen extends StatefulWidget {
  const InterestsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InterestsScreenState();
  }
}

class _InterestsScreenState extends State<InterestsScreen> {
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
                const LargeText("Who Are You Interested In?", Colors.black),
                const SmallText("Let us know who you'd like to connect with.",
                    Colors.black),
                const SmallText("Select one to get started.", Colors.black),
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
                                  MenInterestsButton(submitInterests),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  WomenInterestsButton(submitInterests)
                                ]),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  NonBinaryInterestBuutton(
                                    submitInterests,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  BothInterestButton(submitInterests)
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

  void submitInterests() {}
}
