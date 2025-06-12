import 'package:flutter/material.dart';

class RecommendedScreen extends StatefulWidget {
  const RecommendedScreen(TabController controller, {super.key});

  @override
  State<StatefulWidget> createState() {
    return RecommendedState();
  }
}

class RecommendedState extends State<RecommendedScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Recommended"),
      ),
    );
  }
}
