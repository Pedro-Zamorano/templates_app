import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/theme/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: _DashboardAppBar(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          children: [
            // CarouselView section
            SizedBox(
              width: double.infinity,
              height: 150,
              child: CarouselSection(),
            ),

            // Category section

            // Flash Sale section

            // Mega Sale section

            // Static Image section

            // Normal Products section
          ],
        ),
      ),
    );
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

class CarouselSection extends StatelessWidget {
  const CarouselSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselView(
      itemExtent: double.infinity,
      scrollDirection: Axis.horizontal,
      elevation: 4,
      padding: EdgeInsets.all(1),
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      enableSplash: true,
      itemSnapping: true,
      children: List<Widget>.generate(10, (int index) {
        return Container(color: Colors.red, width: double.infinity, height: 50);
      }),
    );
  }
}
