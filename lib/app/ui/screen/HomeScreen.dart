import 'package:Bold/app/ui/screen/chat/ChatDashboard.dart';
import 'package:Bold/app/ui/screen/chat/ChatScreen.dart';
import 'package:flutter/material.dart';

import 'RecommendedScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  initState() {
    controller = TabController(length: 3, vsync: this);
    controller.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // title: Text(
        //     textAlign: TextAlign.center,
        //     controller.index == 0
        //         ? "Discover"
        //         : controller.index == 1
        //             ? "Search"
        //             : "Recommended"),
        bottom: TabBar(controller: controller, tabs: const [
          Tab(
            text: "Discover",
          ),
          Tab(
            text: "Search",
          ),
          Tab(
            text: "Recommended",
          )
        ]),
      ),
      body: TabBarView(controller: controller, children: [
        ChatScreen(controller),
        ChatDashboard(controller),
        RecommendedScreen(controller)
      ]),
    );
  }
}
