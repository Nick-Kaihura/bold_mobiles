import 'package:Bold/app/ui/button/StandardProceedButton.dart';
import 'package:flutter/material.dart';

class DiscoverSubscribeLabel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text("Se who's liked with a pass"),
            StandardProceedButton("Subscribe", () {})
          ],
        ),
      ),
    );
  }
}
