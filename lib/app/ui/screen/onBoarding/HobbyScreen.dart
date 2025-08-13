import 'package:flutter/material.dart';

import '../../button/StandardInterestsButton.dart';
import '../../button/StandardProceedButton.dart';
import '../../texts/LargeText.dart';
import '../../texts/SmallText.dart';
import 'ProfileVerifyScreen.dart';

class HobbyScreen extends StatefulWidget {
  const HobbyScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HobbyScreenState();
  }
}

class _HobbyScreenState extends State<HobbyScreen> {
  late final List<String> hobbies = List.empty();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      const Column(
        children: [
          LargeText("Tell Us What You Love Doing.", Colors.black),
          SmallText("Pick a few hobbies that bring you joy.", Colors.black),
          SmallText("This helps us connect you with like-minded people.",
              Colors.black),
          SmallText(
              "You can always update your hobbies later in your profile settings.",
              Colors.black),
        ],
      ),
      const SizedBox(height: 10),
      Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                          alignment: Alignment.center,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                  width: double.maxFinite,
                                  child: const SmallText(
                                      "Creative & Artsy", Colors.black),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            StandardInterestsButton(
                                                buttonText: "Sample Text",
                                                onPressed: submitInterests,
                                                color: Colors.black),
                                            StandardInterestsButton(
                                                buttonText: "Photography",
                                                onPressed: submitInterests,
                                                color: Colors.black),
                                            StandardInterestsButton(
                                                buttonText: "Writing/Blogging",
                                                onPressed: submitInterests,
                                                color: Colors.black)
                                          ])),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        StandardInterestsButton(
                                            buttonText: "Crafting",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                        StandardInterestsButton(
                                            buttonText: "Dancing",
                                            onPressed: submitInterests,
                                            color: Colors.black)
                                      ]),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        StandardInterestsButton(
                                            buttonText:
                                                "Playing musical instruments",
                                            onPressed: submitInterests,
                                            color: Colors.black)
                                      ]),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                  width: double.maxFinite,
                                  child: const SmallText(
                                      "Active & Outdoors", Colors.black),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          StandardInterestsButton(
                                              buttonText: "Hiking",
                                              onPressed: submitInterests,
                                              color: Colors.black),
                                          StandardInterestsButton(
                                              buttonText: "Running",
                                              onPressed: submitInterests,
                                              color: Colors.black),
                                          StandardInterestsButton(
                                              buttonText: "Swimming",
                                              onPressed: submitInterests,
                                              color: Colors.black),
                                          StandardInterestsButton(
                                              buttonText: "Yoga",
                                              onPressed: submitInterests,
                                              color: Colors.black)
                                        ]),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        StandardInterestsButton(
                                            buttonText: "Cycling",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                        StandardInterestsButton(
                                            buttonText: "Gym workouts",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                      ]),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                  width: double.maxFinite,
                                  child: const SmallText(
                                      "Tech & Gaming", Colors.black),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          StandardInterestsButton(
                                              buttonText: "Coding",
                                              onPressed: submitInterests,
                                              color: Colors.black),
                                          StandardInterestsButton(
                                              buttonText: "Video Gaming",
                                              onPressed: submitInterests,
                                              color: Colors.black),
                                          StandardInterestsButton(
                                              buttonText: "Graphic design",
                                              onPressed: submitInterests,
                                              color: Colors.black),
                                        ]),
                                  ),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        StandardInterestsButton(
                                            buttonText: "3D Modelling",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                        StandardInterestsButton(
                                            buttonText: "Esports",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                      ]),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 10, 0, 5),
                                  width: double.maxFinite,
                                  child: const SmallText(
                                      "Food & Drink", Colors.black),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        StandardInterestsButton(
                                            buttonText: "Cooking",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                        StandardInterestsButton(
                                            buttonText: "Baking",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                        StandardInterestsButton(
                                            buttonText: "Wine tasting",
                                            onPressed: submitInterests,
                                            color: Colors.black)
                                      ]),
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        StandardInterestsButton(
                                            buttonText:
                                                "Trying new Restaurants",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                        StandardInterestsButton(
                                            buttonText: "Coffee enthusiast",
                                            onPressed: submitInterests,
                                            color: Colors.black),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    StandardProceedButton("Continue", submitInterests)
                  ])))
    ])));
  }

  void submitInterests() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ProfileVerifyScreen()));
  }

  void addHobby(String hobby) {}
}
