import 'package:flutter/material.dart';

import '../button/StandardInterestsButton.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen(TabController controller, {super.key});

  @override
  State<StatefulWidget> createState() {
    return DiscoverSate();
  }
}

class DiscoverSate extends State<DiscoverScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ListView.separated(
        shrinkWrap: false,
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 40),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(),
                  image: const DecorationImage(
                      image: AssetImage(
                          "lib/assets/backgrounds/chris_placeholder.png"),
                      fit: BoxFit.fitWidth),
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 350,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.start,
                              "Chris"),
                          Text(
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.start,
                              "29 Yrs"),
                          Text(
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.left,
                              "Nakuru, Kenya")
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StandardInterestsButton(
                          buttonText: "2.3 km Away",
                          onPressed: submitInterests,
                          color: Colors.black),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StandardInterestsButton(
                          buttonText: "Swimming",
                          onPressed: submitInterests,
                          color: Colors.black),
                      StandardInterestsButton(
                          buttonText: "Esports",
                          onPressed: submitInterests,
                          color: Colors.black),
                    ]),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      StandardInterestsButton(
                          buttonText: "2.3 km Away",
                          onPressed: submitInterests,
                          color: Colors.black),
                      StandardInterestsButton(
                          buttonText: "Esports",
                          onPressed: submitInterests,
                          color: Colors.black),
                    ]),
              )
            ],
          ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 10);
        },
      )),
    );
  }

  submitInterests() {
    //silly
  }
}
