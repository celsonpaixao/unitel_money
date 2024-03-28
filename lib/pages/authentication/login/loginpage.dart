import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:unitel_money/pages/authentication/login/components/card_social.dart';
import 'package:unitel_money/public/components/actionbutton.dart';
import 'package:unitel_money/public/components/globalinput.dart';
import 'package:unitel_money/public/components/header.dart';
import 'package:unitel_money/public/components/space.dart';
import 'package:unitel_money/public/style/colores.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _isVisiblePassword = true;
  var value_check = false;
  var colores = Colores();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacing(value: 0.04),
              Header(text: "Sign In"),
               Spacing(value: 0.04),
              GlobalInput(
                Visibillity: false,
                type: TextInputType.number,
                HintText: "Your Number",
                PreffixIcon: Icon(
                  Icons.call_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
               Spacing(value: 0.02),
              GlobalInput(
                Visibillity: _isVisiblePassword,
                type: TextInputType.number,
                PreffixIcon: Icon(Icons.lock_outline_rounded, color: Colors.white),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: value_check,
                        onChanged: (value) {
                          setState(() {
                            value_check = !value_check;
                          });
                        },
                        activeColor: colores.primryorage,
                      ),
                      Text(
                        "Keep me signed in",
                        style: TextStyle(
                            color: colores.dark3, fontSize: size.width * .04),
                      ),
                    ],
                  ),
                  Text(
                    "Forgot password?",
                    style: TextStyle(
                        color: colores.secundarydark, fontSize: size.width * .04),
                  ),
                ],
              ),
               Spacing(value: 0.04),
              ACtionButton(
                widget: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: size.width * .04,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onClicked: () {},
              ),
               Spacing(value: 0.04),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * .3),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        color: colores.dark3,
                        height: 3,
                      ),
                    ),
                    Text(
                      " or ",
                      style: TextStyle(
                        color: colores.dark3,
                        fontSize: size.width * .04,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: colores.dark3,
                        height: 3,
                      ),
                    ),
                  ],
                ),
              ),
               Spacing(value: 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card_Social(
                    size: size,
                    img: "assets/vectores/FB.png",
                  ),
                  Card_Social(
                    size: size,
                    img: "assets/vectores/WAP.png",
                  ),
                  Card_Social(
                    size: size,
                    img: "assets/vectores/Twt.png",
                  ),
                ],
              ),
               Spacing(value: 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(
                      color: colores.dark3,
                      fontSize: size.width * .04,
                    ),
                  ),
                  GradientText(
                    "Sign Up",
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.btt,
                    style: TextStyle(
                      color: colores.secundarydark,
                      fontSize: size.width * .04,
                      fontWeight: FontWeight.w500
                    ),
                    colors: [
                      colores.primrypurple,
                      colores.primryorage,
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
