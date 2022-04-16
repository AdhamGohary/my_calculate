import 'package:firstapp/my_calculate/calculate_1/Calculate1.dart';

import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          buttonColor: Colors.green,
        ),
        home: Calculate1());
  }
}



