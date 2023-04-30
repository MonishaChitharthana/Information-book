import 'package:flutter/material.dart';
import './main.dart';

class Second extends StatelessWidget {
  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(),
      body: Center(
        child: Text(
          'Hello,welcome to the page',
          style: TextStyle(
            fontFamily: 'Play',
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
