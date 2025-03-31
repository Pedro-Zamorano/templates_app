import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';
import 'package:practice_app/e_commerce_app/theme/icons.dart';

class Logo extends StatelessWidget {
  final Color? bgLogoColor;
  final Color? logoColor;
  const Logo({super.key, this.bgLogoColor, this.logoColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: bgLogoColor ?? Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Icon(diamond, size: 35, color: logoColor ?? primary),
    );
  }
}
