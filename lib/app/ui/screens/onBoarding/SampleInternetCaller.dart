import 'package:Bold/app/ui/dialogs/ProfileVerificationDialog.dart';
import 'package:Bold/app/ui/screens/Post.dart';
import 'package:flutter/material.dart';

class SampleInternetCaller extends StatefulWidget {
  const SampleInternetCaller({super.key});

  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SampleInternetCaller> {
  List<Post> posts = List.empty();

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sample Http Caller"),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const ProfileVerificationDialog();
                    });
              },
              child: const Text(" showDialog")),
          // child: ListView.builder(
          //   itemCount: posts.length,
          //   itemBuilder: (BuildContext context, int index) {
          //     return Text(style: TextStyle(), posts[index].userId.toString());
          //   },
          // ),
        ));
  }

  getData() async {
    setState(() async {});
  }
}
