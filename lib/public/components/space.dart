import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double value;
  const Spacing({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(height: size.height * value);
  }
}
