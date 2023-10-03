import 'package:flutter/material.dart';
import 'package:instagram_model/navigationbar.dart';
//import 'package:instagram_model/tab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(), // Navigate to your swipe tabs page.
    );
  }
}
