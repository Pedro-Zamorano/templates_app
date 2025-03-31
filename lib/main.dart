import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/e_commerce_exports.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: LoginScreen());
  }
}
