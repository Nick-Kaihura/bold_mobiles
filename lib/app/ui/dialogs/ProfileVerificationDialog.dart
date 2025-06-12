import 'package:Bold/app/ui/button/StandardProceedButton.dart';
import 'package:Bold/app/ui/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class ProfileVerificationDialog extends StatefulWidget {
  const ProfileVerificationDialog({super.key});

  @override
  State<StatefulWidget> createState() {
    return DialogState();
  }
}

class DialogState extends State<ProfileVerificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleDialog(
        alignment: Alignment.center,
        contentPadding: const EdgeInsets.all(20),
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 5),
                const Center(
                  child: Text(
                      textAlign: TextAlign.center,
                      "Make Sure it is well lit and free from obstructions"),
                ),
                const SizedBox(height: 5),
                Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: const CircleAvatar(
                        radius: 150,
                        backgroundImage:
                            NetworkImage("https://picsum.photos/200/300"))),
                const SizedBox(height: 15),
                StandardProceedButton("Start verification", startVerification)
              ],
            ),
          )
        ],
      ),
    );
  }

  void startVerification() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }
}
