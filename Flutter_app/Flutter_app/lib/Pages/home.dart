import 'mediationprocess.dart';
import 'package:flutter/material.dart';
import 'resources.dart';
import 'loginscreen.dart';
import 'form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
        appBar: AppBar(title: Text("Cool Schools Mediation App")),
        body: PageView(
          pageSnapping: true,
          scrollDirection: Axis.vertical,
          controller: controller,
          children: [
            Container(
              margin: const EdgeInsets.only(
                  left: 75.0, top: 25.0, bottom: 25.0, right: 75.0),
              child: ListView(children: <Widget>[
                SizedBox(height: 40.0),
                RaisedButton(
                    child:
                        Text('Submit Form', style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FormPage(),
                      ));
                    }),
                SizedBox(height: 50.0),
                RaisedButton(
                    child: Text('Mediation Process',
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.orange,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MediationProcess(),
                      ));
                    }),
                SizedBox(height: 50.0),
                RaisedButton(
                    child: Text('Profile', style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FormPage(),
                      ));
                    }),
                SizedBox(height: 50.0),
                RaisedButton(
                    child: Text('Settings', style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.red,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FormPage(),
                      ));
                    }),
              ]),
            ),
            Container(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100.0),
                    Text('INSERT TIMETABLE HERE',
                        style: TextStyle(color: Colors.white)),
                  ],
                )),
          ],
        ));
  }
}
