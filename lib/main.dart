import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/menu_page.dart';
import 'package:learn_flutter/pages/home_page.dart';
import 'package:learn_flutter/pages/profile_page.dart';
import 'package:learn_flutter/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        "/menupage": (context) => MenuPage(),
        "/homepage": (context) => HomePage(),
        "/profilepage": (context) => ProfilePage(),
        "/settingspage": (context) => SettingsPage(),
      },
    );
  }
}
