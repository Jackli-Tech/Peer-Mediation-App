import 'package:flutter/material.dart';
import 'SignInPage.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("-AppName-")),
      body: SingleChildScrollView(
        //child: Container(

        child: ConstrainedBox(
            //height: MediaQuery.of(context).size.height,
            //child: Column(

            constraints: BoxConstraints(),
            //the 3 following lines are very important(!!!) for scrolling mechanics. wrap a widget ina listview!!
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
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignInPage(),
                      ));
                    }),
              ],
            )),
      ),
    );
  }
}
