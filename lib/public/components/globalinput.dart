import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:unitel_money/public/style/colores.dart';

class GlobalInput extends StatelessWidget {
  final Icon? PreffixIcon;
  final Widget? SuffixIcon;
  final String? HintText;
  final TextInputType type;
  final Function(String)? OnChang;
  final bool Visibillity;
  const GlobalInput({
    super.key,
    this.PreffixIcon,
    this.SuffixIcon,
    this.HintText,
    this.OnChang,
    required this.Visibillity, required this.type,
  });

  @override
  Widget build(BuildContext context) {
    var colores = Colores();
    var size = MediaQuery.of(context).size;
    return TextFormField(
      obscureText: Visibillity,
      scrollPadding: EdgeInsets.only(left: 30),
      keyboardType: type,
      style: TextStyle(
        color: colores.secundarydark,
        fontSize: size.width * 0.04,
      ),
      maxLines: 1,
      decoration: InputDecoration(
        hintText: HintText,
        hintStyle: TextStyle(
            color: colores.secundarydark,
            fontSize: size.width * 0.035,
            fontWeight: FontWeight.w400),
        prefixIcon: PreffixIcon,
        suffixIcon: SuffixIcon,
        filled: true,
        contentPadding: EdgeInsets.only(
          left: size.width * 0.05,
          top: size.height * 0.01,
          bottom: size.height * 0.01,
        ),
        fillColor: colores.dark3,
        focusedBorder: GradientOutlineInputBorder(
          gradient: LinearGradient(
            colors: [
              colores.primryorage,
              colores.primrypurple,
            ],
          ),
        ),
        disabledBorder: InputBorder.none,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(3),
        ),
      ),
    );
  }
}
