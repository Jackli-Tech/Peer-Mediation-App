import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cool Schools Mediation App")),
      body: SingleChildScrollView(
        child: ConstrainedBox(
            //height: MediaQuery.of(context).size.height,
            //child: Column(

            constraints: BoxConstraints(),
            //the 3 following lines are very important(!!!) for scrolling mechanics. wrap a widget ina listview!!
            child: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, bottom: 10.0),
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 100.0),
                        Text('Settings',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0)),
                        SizedBox(height: 100.0),
                      ],
                    )),
              ],
            )),
      ),
    );
  }
}
