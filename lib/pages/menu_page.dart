import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/login_page.dart';
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
    if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => _pages[index]),
      );
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  final List _pages = [StlessWidget(), LoginPage(), StfullWidget()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        color: Colors.yellow[700],
        padding: EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => _navigateBottomBar(0),
              child: Row(
                children: [
                  Icon(
                    _selectedIndex == 0
                        ? Icons.star_rate_rounded
                        : Icons.star_rate_outlined,
                  ),
                  Text("Stateless"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () => _navigateBottomBar(1),
              child: Row(children: [Icon(Icons.logout), Text("Logout")]),
            ),
            ElevatedButton(
              onPressed: () => _navigateBottomBar(2),
              child: Row(
                children: [
                  Icon(
                    _selectedIndex == 2
                        ? Icons.star_rate_rounded
                        : Icons.star_rate_outlined,
                  ),
                  Text("Statefull"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
