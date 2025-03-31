import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';

class Button extends StatelessWidget {
  final String textButton;
  final Icon? icon;
  final Color? textColor;
  final Color? bgColor;

  const Button({
    super.key,
    required this.textButton,
    this.icon,
    this.textColor,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: FilledButton.icon(
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(bgColor ?? primary),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: BorderSide(color: Color(0xffd5f1ff)),
            ),
          ),
        ),
        onPressed: () {},
        icon: icon,
        label: Text(
          textButton,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
