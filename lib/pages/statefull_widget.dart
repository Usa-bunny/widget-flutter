import 'package:flutter/material.dart';
import 'package:learn_flutter/components/button.dart';
import 'package:learn_flutter/pages/home_page.dart';

class StfullWidget extends StatefulWidget {
  const StfullWidget({super.key});

  @override
  State<StfullWidget> createState() => _StfullWidgetState();
}

class _StfullWidgetState extends State<StfullWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text("Today News", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.yellow[700],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyButton(),
            TextButton(
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                ),
              },
              child: Text("Go to rest api crud"),
            ),
          ],
        ),
      ),
    );
  }
}
