import 'package:flutter/material.dart';
import 'package:practice_app/e_commerce_app/e_commerce_exports.dart';

import 'package:practice_app/e_commerce_app/theme/colors.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _myScreens = [
    HomeScreen(),
    ExploreScreen(),
    CartScreen(),
    OfferScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _myScreens.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(                                                              
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined),
            label: "Offer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Account",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: primary,
        unselectedItemColor: greyAdapter,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        iconSize: 24,
        selectedFontSize: 10,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w800),
        unselectedFontSize: 10,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w300),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
