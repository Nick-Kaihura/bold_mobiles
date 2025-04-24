import 'package:Bold/app/ui/button/StandardProceedButton.dart';
import 'package:Bold/app/ui/textField/StandardInputField.dart';
import 'package:flutter/material.dart';

import '../../texts/LargeText.dart';
import '../../texts/SmallText.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return OtpScreenState();
  }
}

class OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const Icon(Icons.keyboard_backspace_sharp)),
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const LargeText("OTP Verification", Colors.black),
                  const SizedBox(height: 5),
                  const SmallText(
                      "Check your email and enter the code provided",
                      Colors.black),
                  const SizedBox(height: 5),
                  StandardTextField("", "", handleOtpTextChange, true),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  StandardProceedButton("Verify", handleOtpVerification),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SmallText("Didn't receive a code?", Colors.black),
                      TextButton(
                          onPressed: handleResendCode,
                          child:
                              const SmallText("Resend the code", Colors.black))
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void handleOtpVerification() {}

  void handleResendCode() {}

  void handleOtpTextChange() {}
}
