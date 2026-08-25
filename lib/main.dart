import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/login_page.dart';
import 'package:learn_flutter/pages/menu_page.dart';
import 'package:learn_flutter/pages/stateless_widget.dart';
import 'package:learn_flutter/pages/statefull_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      routes: {
        "/menupage": (context) => MenuPage(),
        "/stless": (context) => StlessWidget(),
        "/stfull": (context) => StfullWidget(),
      },
    );
  }
}
