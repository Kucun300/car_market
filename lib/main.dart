import 'package:flutter/material.dart';
import 'Home.dart';

void main()
{
  runApp(car_market());
}

class car_market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Car Markt',
      home: Home(),
    );
  }
}