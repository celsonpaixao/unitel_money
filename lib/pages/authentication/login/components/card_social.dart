import 'package:flutter/material.dart';

class Card_Social extends StatelessWidget {
  const Card_Social({
    super.key,
    required this.size, required this.img,
  });

  final Size size;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.all(size.width * .04),
        child: Image.asset(img),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          end: Alignment.topRight,
          begin: Alignment.bottomLeft,
          colors: [
            Color(0xff2F2F2F).withOpacity(.1),
            Color(0xff2F2F2F),
          ],
        ),
      ),
    );
  }
}
