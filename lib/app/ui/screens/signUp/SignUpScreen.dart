import 'package:Bold/app/ui/screens/onBoarding/EmailScreen.dart';
import 'package:flutter/material.dart';

import '../../button/GoogleSignupButton.dart';
import '../../button/StandardOutlinedButton.dart';
import '../../texts/LargeText.dart';
import '../../texts/SmallText.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/assets/backgrounds/ricardo_bg.jpg"),
                    fit: BoxFit.cover)),
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      LargeText("Love.", Colors.white),
                      LargeText("Connection.", Colors.white),
                      LargeText("Inclusivity.", Colors.white),
                      SmallText("Sign up to start exploring", Colors.white)
                    ]),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        child: const SmallText(
                            "By tapping Continue, you agree to our Terms of Service and Privacy Policy",
                            Colors.white),
                      ),
                    ),
                    const SizedBox(height: 10),
                    GoogleSignupButton(
                        "Continue with Google", handleGoogleSignup),
                    const SizedBox(height: 20),
                    StandardOutlinedButton("Email Address", handleEmailSignup)
                  ],
                )
              ],
            ))));
  }

  void handleGoogleSignup() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const EmailScreen()));
  }

  void handleEmailSignup() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const EmailScreen()));
  }
}
