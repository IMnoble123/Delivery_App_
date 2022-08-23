import 'package:delivery/view/pages/Account_page.dart';
import 'package:delivery/view/pages/cart_page.dart';
import 'package:delivery/view/pages/search.dart';
import 'package:delivery/view/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 0;
  final List pages = [
    const HomePage(),
    const SearchPage(),
    const AccountPage(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: SlidingClippedNavBar(
        selectedIndex: _currentIndex,
        onButtonPressed: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        iconSize: 25,
        activeColor: const Color(0xFF01579B),
        barItems: [
          BarItem(title: 'Home', icon: Icons.home),
          BarItem(title: 'Search', icon: Icons.search),
          BarItem(title: 'Account', icon: Icons.account_circle_outlined),
          BarItem(title: 'Basket', icon: Icons.shopping_cart_outlined)
        ],
      ),
    );
  }
}
