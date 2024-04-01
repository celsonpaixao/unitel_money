import 'package:flutter/material.dart';
import 'package:unitel_money/public/components/actionbutton.dart';
import 'package:unitel_money/public/components/globalinput.dart';
import 'package:unitel_money/public/components/header.dart';
import 'package:unitel_money/public/components/space.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacing(value: .09),
            Header(text: "Forgot Password"),
            Spacing(value: .04),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  GlobalInput(
                    Visibillity: false,
                    type: TextInputType.phone,
                    PreffixIcon: Icon(
                      Icons.call_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Spacing(value: .02),
                  ACtionButton(
                    widget: Text("Next"),
                    onClicked: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
