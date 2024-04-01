import 'package:flutter/material.dart';
import 'package:unitel_money/public/components/space.dart';
import 'package:unitel_money/public/style/colores.dart';

class Pagev2 extends StatelessWidget {
  const Pagev2({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    var colores = Colores();
    return Column(
      children: [
        Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/3dicons (1).png",
                width: size.width * .7,
              ),
              Image.asset(
                "assets/images/Ellipse 10.png",
                width: size.width * .7,
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width * .8,
          child: FittedBox(
            child: Text(
              "A sua carteira Digital\nsempre em mãos",
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.width * .08,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Spacing(value: .03),
        SizedBox(
          width: size.width * .9,
          child: FittedBox(
            child: Text(
              "Aproveite o momento para reservar o que\n deseja comer no dia de hoje, não espere o dia\n de amanhã.",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.width * .05,
                color: colores.secundarydark,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
