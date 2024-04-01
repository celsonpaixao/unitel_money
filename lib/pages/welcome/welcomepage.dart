import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:unitel_money/pages/authentication/login/loginpage.dart';
import 'package:unitel_money/pages/welcome/components/pagev1.dart';
import 'package:unitel_money/pages/welcome/components/pagev2.dart';
import 'package:unitel_money/pages/welcome/components/pagev3.dart';
import 'package:unitel_money/public/components/actionbutton.dart';
import 'package:unitel_money/public/style/colores.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  var colores = Colores();
  late PageController pagController; // Declare pagController

  late Timer _timer;

  List<Widget> scrollpages = []; // Declare scrollpages here

  @override
  void initState() {
    super.initState();
    pagController = PageController(initialPage: 0);
    _startTimer(); // Start the timer in initState
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (pagController.page != null) {
        int nextPage = pagController.page!.toInt() + 1;
        if (nextPage >= scrollpages.length) {
          nextPage = 0;
        }
        pagController.animateToPage(
          nextPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var aspectRatio = size.width / size.height;
    scrollpages = [
      Pagev1(size: size),
      Pagev2(size: size),
      Pagev3(size: size),
    ];
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: colores.primerydark,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: size.height * 0.05),
          SizedBox(
            height: size.height * 0.7,
            child: PageView.builder(
              controller: pagController,
              itemCount: scrollpages.length,
              itemBuilder: (context, index) {
                return scrollpages[index];
              },
            ),
          ),
        //  SizedBox(height: size.height * 0.02),
          SmoothPageIndicator(
            controller: pagController, // Use pagController here
            count: scrollpages.length,
            effect: ScaleEffect(
              dotWidth: size.width * 0.006,
              dotHeight: size.width * 0.02 / aspectRatio,
              activeDotColor: Colors.white,
            ),
          ),
          SizedBox(height: size.height * 0.03),
          ACtionButton(
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 1,
                ),
                Image.asset(
                  "assets/vectores/Frame.png",
                  width: size.width * .09,
                )
              ],
            ),
            onClicked: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return LoginPage();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
