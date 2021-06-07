import 'SignInPage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

//The welcome page for the application
class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    PageController homeController = PageController(initialPage: 0);
    return Scaffold(
        body: Container(
      color: Colors.lightGreen.shade100,
      child: ListView(
          scrollDirection: Axis.vertical,
          controller: homeController,
          children: [
            SizedBox(height: 200.0),
            Center(
                child: Text(
              "Cool Schools Mediation App",
              style: TextStyle(fontSize: 50),
            )),
            SizedBox(height: 300.0),
            Center(
              child: RaisedButton(
                  child: Text('Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 40.0)),
                  padding: EdgeInsets.all(70),
                  color: Colors.blue,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0))),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    ));
                  }),
            ),
            SizedBox(height: 500.0),
            Center(
                child: Text(
                    "A collaboration between The Peace Foundation and AUT.")),
          ]),
    ));
  }

  Widget boxContainer(String path, String text, onclick) {
    return InkWell(
      onTap: onclick,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 140,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  path,
                  height: 25,
                  width: 25,
                ),
                SizedBox(width: 20),
                Text(text,
                    style: TextStyle(fontSize: 16, color: Colors.black87)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
