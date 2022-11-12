import 'package:flutter/material.dart';
import 'package:pointscounter/home.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
