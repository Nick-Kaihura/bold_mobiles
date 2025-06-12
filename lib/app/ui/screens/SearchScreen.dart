import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen(TabController controller, {super.key});

  @override
  State<StatefulWidget> createState() {
    return SearchState();
  }
}

class SearchState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Search"),
      ),
    );
  }
}
