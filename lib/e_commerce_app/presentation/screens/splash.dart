import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/presentation/widgets/logo.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primary,
      child: Center(
        child: Logo(),
      ),
    );
  }
}
