import 'package:flutter/material.dart';
import 'package:unitel_money/public/components/globalinput.dart';
import 'package:unitel_money/public/components/header.dart';
import 'package:unitel_money/public/components/space.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacing(value: 0.04),
          Header(text: "Sign In"),
          GlobalInput(
            Visibillity: false,
            type: TextInputType.number,
            HintText: "Your Number",
            PreffixIcon: Icon(
              Icons.call_outlined,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
