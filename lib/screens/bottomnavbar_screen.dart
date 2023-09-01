import 'package:flutter/material.dart';
import 'package:widgets_basic/pages/profilepage.dart';
import 'package:widgets_basic/pages/search.dart';
import 'package:widgets_basic/pages/shop.dart';
import 'package:widgets_basic/pages/homepage.dart';
import 'package:widgets_basic/pages/reel.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _navigatorBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    CustomUI(),
    SearchPage(),
    Home(),
    ShopPage(),
    ProfilePage(),
    

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigatorBottomNavBar,
        type: BottomNavigationBarType.fixed,
        items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.video_call),label: 'Reels'),
        BottomNavigationBarItem(icon: Icon(Icons.shop),label: 'Shop'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Account'),
      ],
    ),
    );
  }
}