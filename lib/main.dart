import 'package:flutter/material.dart';
import 'Home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


void main()
{
  runApp(car_market());
}

class car_market extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Markt',
      home: Home(),
    );
  }
}