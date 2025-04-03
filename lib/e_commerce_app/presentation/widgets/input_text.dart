import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';

class InputText extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color? iconColor;

  const InputText({
    super.key,
    required this.hintText,
    required this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: greyAdapter, fontWeight: FontWeight.w700),
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(4)),
        hintStyle: TextStyle(color: greyAdapter, fontWeight: FontWeight.normal),
        prefixIconColor: iconColor ?? greyAdapter,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: greyAdapter2),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary),
        ),
      ),
    );
  }
}
