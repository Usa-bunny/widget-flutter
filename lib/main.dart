import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/home_page.dart';
import 'package:learn_flutter/pages/login_page.dart';
import 'package:learn_flutter/pages/menu_page.dart';
import 'package:learn_flutter/pages/register_page.dart';
import 'package:learn_flutter/pages/stateless_widget.dart';
import 'package:learn_flutter/pages/statefull_widget.dart';
import "package:supabase_flutter/supabase_flutter.dart";

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://movyiyggobydulwxybwr.supabase.co',
    publishableKey: 'sb_publishable_PoShgIkq518l2WGbxeUQOA_VX6kM0WW'
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routes: {
        "/menupage": (context) => MenuPage(),
        "/stless": (context) => StlessWidget(),
        "/stfull": (context) => StfullWidget(),
        "/login": (context) => LoginPage(),
        "/register": (context) => RegisterPage(),
      },
    );
  }
}
