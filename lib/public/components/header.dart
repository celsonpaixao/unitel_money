import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String text;
  const Header({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          "assets/vectores/Mask group.png",
          width: size.width * .3,
          height: size.height * .1,
        ),
        Text(
          text,
          maxLines: 1,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: size.width * .09,
          ),
        )
      ],
    );
  }
}
