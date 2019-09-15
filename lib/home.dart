import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final random = Random();
  int index = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/ball$index.png')),
          ),
        ),
        onTap: _upadteImage,
      ),
    );
  }

  void _upadteImage() {
    var current = random.nextInt(5) + 1;
    if (current != index)
      setState(() {
        index = current;
      });
    else
      _upadteImage();
  }
}
