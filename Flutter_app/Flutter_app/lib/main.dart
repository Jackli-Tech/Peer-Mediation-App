// import 'package:Flutter_app/Pages/welcomePage.dart';
import 'package:flutter/material.dart';
import 'Pages/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: WelcomePage()
    );
  }
}