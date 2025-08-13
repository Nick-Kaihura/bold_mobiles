import 'package:Bold/app/ui/texts/LargeText.dart';
import 'package:flutter/material.dart';

import '../../button/StandardProceedButton.dart';
import '../../textField/DayInput.dart';
import '../../textField/MonthInput.dart';
import '../../textField/YearInput.dart';
import '../../texts/SmallText.dart';
import 'InterestsScreen.dart';

class DobScreen extends StatefulWidget {
  const DobScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DobScreenState();
  }
}

class _DobScreenState extends State<DobScreen> {
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
                const LargeText("What is your date of birth?", Colors.black),
                const SizedBox(height: 5),
                const SmallText(
                    "You must be 18+ to explore bold", Colors.black),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DayInput(handleDayChange, true),
                    MonthInput(handleMonthChange, false),
                    YearInput(handleYearChange, false)
                  ],
                ),
              ],
            ),
            StandardProceedButton("Next", validateDob)
          ],
        ),
      ),
    );
  }

  void validateDob() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const InterestsScreen()));
  }

  void handleDayChange() {}

  void handleMonthChange() {}

  void handleYearChange() {}
}
