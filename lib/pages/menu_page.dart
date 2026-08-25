import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/statefull_widget.dart';
import 'package:learn_flutter/pages/stateless_widget.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [StlessWidget(), StfullWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow[700],
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 0
                  ? Icons.star_rate_rounded
                  : Icons.star_rate_outlined,
            ),
            label: "Stateless",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _selectedIndex == 1
                  ? Icons.star_rate_rounded
                  : Icons.star_rate_outlined,
            ),
            label: "Statefull",
          ),
        ],
      ),
    );
  }
}
