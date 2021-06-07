import 'SignUpUserPage.dart';
import 'SignInPage.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'SignUpAdminPage.dart';
import 'SignUpSuperAdminPage.dart';
import 'settings.dart';

class SuperAdminPage extends StatefulWidget {
  @override
  _SuperAdminPageState createState() => _SuperAdminPageState();
}

class _SuperAdminPageState extends State<SuperAdminPage> {
  // Homepage for the superadmin where they can sign up different users
  @override
  Widget build(BuildContext context) {
    PageController homeController = PageController(initialPage: 0);
    return Scaffold(
        appBar: AppBar(title: Text("Cool Schools Mediation App")),
        body: PageView(
          pageSnapping: true,
          scrollDirection: Axis.vertical,
          controller: homeController,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 200.0, top: 25.0, bottom: 25.0, right: 200.0),
              child: ListView(children: <Widget>[
                SizedBox(height: 40.0),
                RaisedButton(
                    child: Text('Sign up a Mediator',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpUserPage(),
                      ));
                    }),
                SizedBox(height: 50.0),
                RaisedButton(
                    child: Text('Sign up an Admin',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(50),
                    color: Colors.orange,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpAdminPage(),
                      ));
                    }),
                SizedBox(height: 50.0),
                RaisedButton(
                    child: Text('Sign up a Superadmin',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpSuperAdminPage(),
                      ));
                    }),
                SizedBox(height: 50.0),
                RaisedButton(
                    child: Text('Settings',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SettingsPage(),
                      ));
                    }),
                SizedBox(height: 60.0),
                Text('Swipe up for Duty Roster Table',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20.0, color: Colors.grey[500]))
              ]),
            ),
          ],
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
