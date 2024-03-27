import 'package:flutter/material.dart';
import 'package:unitel_money/public/style/colores.dart';

class ACtionButton extends StatelessWidget {
  final Widget widget;
  final Function() onClicked;
  const ACtionButton({
    super.key,
    required this.widget,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var colores = Colores();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        height: size.height * .06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            colors: [
              colores.primryorage,
              colores.primrypurple,
            ],
          ),
        ),
        child: TextButton(onPressed: onClicked, child: widget),
      ),
    );
  }
}
