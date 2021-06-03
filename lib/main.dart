// import 'package:Flutter_app/Pages/welcomePage.dart';


import 'package:Flutter_app/Pages/SignInPage.dart';
import 'package:Flutter_app/Pages/WelcomePage.dart';
import 'package:Flutter_app/Pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: SignInPage());
//   }

// }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget page = SignInPage();
  final storage = FlutterSecureStorage();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    String token = await storage.read(key: "token");
    if (token != null) {
      setState(() {
        page = HomePage();
      });
    } else {
      setState(() {
        page = SignInPage();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(),
    );
  }
}