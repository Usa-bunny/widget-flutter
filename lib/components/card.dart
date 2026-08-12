import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String content;

  const MyCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: const Color.fromARGB(255, 239, 249, 244),
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20,
                color: const Color.fromARGB(255, 1, 70, 15),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: Image.network(imageUrl, fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              content,
              style: TextStyle(
                fontSize: 12,
                color: const Color.fromARGB(255, 40, 126, 58),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
