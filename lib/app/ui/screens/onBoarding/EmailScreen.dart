import 'package:flutter/material.dart';

import '../../button/StandardProceedButton.dart';
import '../../textField/StandardInputField.dart';
import '../../texts/LargeText.dart';
import '../../texts/SmallText.dart';

class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EmailScreesState();
  }
}

class _EmailScreesState extends State<EmailScreen> {
  late String emailAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const LargeText(
                      "Please provide a valid email address", Colors.black),
                  SizedBox(height: 5),
                  const SmallText(
                      "Enter the email address you will use for this account",
                      Colors.black),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  StandardTextField("emailexample@bold.com", '',
                      handleEmailInputChanges, true),
                  const SizedBox(height: 14),
                  const SmallText(
                      "Note :  You will be asked to verify this email",
                      Colors.black),
                ],
              ),
              SizedBox(
                child: StandardProceedButton("Send", handleSubmit),
              )
            ],
          ),
        ),
      ),
    );
  }

  void handleEmailInputChanges(String s) {
    setState(() {
      //set email address here
    });
  }

  void handleSubmit() {
    //validate input/email
    print(emailAddress);
  }
}
