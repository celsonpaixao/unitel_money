import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unitel_money/pages/welcome/welcomepage.dart';
import 'package:unitel_money/public/style/colores.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colores().primerydark,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.light,
          toolbarHeight: 0,
          backgroundColor: Colors.transparent,
        ),
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            foregroundColor: MaterialStatePropertyAll(Colors.white),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: WelcomePage(),
    );
  }
}
