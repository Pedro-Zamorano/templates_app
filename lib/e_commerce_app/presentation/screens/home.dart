import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class _DashboardAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search_outlined, color: primary),
          hintText: "Search Product",
          hintStyle: TextStyle(
            color: greyAdapter,
            fontWeight: FontWeight.normal,
          ),
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_outline, color: greyAdapter),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined, color: greyAdapter),
        ),
      ],
    );
  }
}
