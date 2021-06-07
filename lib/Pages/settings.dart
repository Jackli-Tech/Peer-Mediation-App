import 'package:flutter/material.dart';
import 'SignInPage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final storage = FlutterSecureStorage();

  // Settings page, mostly used to log out
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cool Schools Mediation App")),
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                SizedBox(height: 40.0),
                Container(
                  alignment: Alignment.center,
                  child: Text('Settings',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                ),
                SizedBox(height: 100.0),
                RaisedButton(
                    child: Text('Log Out', style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(20),
                    color: Colors.green[500],
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () async {
                      await storage.delete(key: "token");
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                          (route) => false);
                    }),
              ],
            )),
      ),
    );
  }

  void logout() async {
    await storage.delete(key: "token");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => SignInPage()),
        (route) => false);
  }
}
