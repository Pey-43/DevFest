import 'package:competition/screens/active_route.dart';
import 'package:competition/screens/home_screen.dart';
import 'package:competition/screens/recomendation.dart';
import 'package:competition/screens/stock.dart';
import 'package:flutter/material.dart';

class HomeControl extends StatefulWidget {
  const HomeControl({super.key});

  @override
  State<HomeControl> createState() => _HomeControlState();
}

class _HomeControlState extends State<HomeControl> {
  final List<Widget> _sreens = [
    const HomeScreen(),
    const Stock(),
    const ActiveRoute(),
    const Recomendation(),
  ];
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: _sreens,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            _pageController.jumpToPage(index);
          },
          elevation: 0,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.storage), label: 'Stock'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_transportation), label: 'active route'),
            BottomNavigationBarItem(
                icon: Icon(Icons.recommend), label: 'recommendations')
          ]),
    );
  }
}
