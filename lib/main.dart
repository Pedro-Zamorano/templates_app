import 'package:flutter/material.dart';
import 'package:practice_app/bottom_navbar.dart';
import 'package:practice_app/e_store_app/providers/quantity_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => QuantityProvider())],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: BottomNavbarPage());
  }
}
