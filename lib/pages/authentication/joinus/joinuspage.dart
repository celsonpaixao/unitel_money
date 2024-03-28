import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:unitel_money/pages/authentication/login/loginpage.dart';
import 'package:unitel_money/public/components/actionbutton.dart';
import 'package:unitel_money/public/components/globalinput.dart';
import 'package:unitel_money/public/components/header.dart';
import 'package:unitel_money/public/components/space.dart';
import 'package:unitel_money/public/style/colores.dart';

class JoinUsPage extends StatefulWidget {
  const JoinUsPage({super.key});

  @override
  State<JoinUsPage> createState() => _JoinUsPageState();
}

class _JoinUsPageState extends State<JoinUsPage> {
  var _isVisiblePassword = true;
  var value_check = false;
  var colores = Colores();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacing(value: .04),
                Header(text: "Sign Up"),
                Spacing(value: .04),
                GlobalInput(
                  Visibillity: false,
                  type: TextInputType.name,
                  HintText: "Your Name",
                  PreffixIcon: Icon(
                    Icons.person_outline_rounded,
                    color: Colors.white,
                  ),
                ),
                Spacing(value: .02),
                GlobalInput(
                  Visibillity: false,
                  type: TextInputType.number,
                  HintText: "Your Namber",
                  PreffixIcon: Icon(
                    Icons.call_outlined,
                    color: Colors.white,
                  ),
                ),
                Spacing(value: .02),
                GlobalInput(
                  Visibillity: _isVisiblePassword,
                  type: TextInputType.number,
                  PreffixIcon:
                      Icon(Icons.lock_outline_rounded, color: Colors.white),
                  HintText: "Your Password",
                  SuffixIcon: IconButton(
                    icon: Icon(_isVisiblePassword != true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined),
                    onPressed: () {
                      setState(() {
                        _isVisiblePassword = !_isVisiblePassword;
                      });
                    },
                  ),
                ),
                Spacing(value: .04),
                ACtionButton(
                  widget: Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: size.width * .04,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onClicked: () {},
                ),
                Spacing(value: 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "You has an account?",
                      style: TextStyle(
                        color: colores.dark3,
                        fontSize: size.width * .04,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: GradientText(
                        "Sign In",
                        gradientType: GradientType.linear,
                        gradientDirection: GradientDirection.btt,
                        style: TextStyle(
                            color: colores.secundarydark,
                            fontSize: size.width * .04,
                            fontWeight: FontWeight.w500),
                        colors: [
                          colores.primrypurple,
                          colores.primryorage,
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
