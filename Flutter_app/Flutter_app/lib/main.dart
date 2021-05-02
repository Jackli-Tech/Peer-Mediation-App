// import 'package:Flutter_app/Pages/welcomePage.dart';

import 'package:Flutter_app/Pages/home.dart';
import 'package:Flutter_app/Pages/teacherhome.dart';
import 'package:flutter/material.dart';
import 'Pages/WelcomePage.dart';
import 'Pages/viewformsusers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TeacherHome());
  }
}
