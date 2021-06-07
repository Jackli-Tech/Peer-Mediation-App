import 'mediationprocess.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import '../Profile/ProfileScreen.dart';
import 'settings.dart';
import 'showtimetable.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Mediator home page for the application
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
                    child: Text('Submit Form',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
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
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(50),
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
                    child: Text('Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ProfileScreen(),
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
            ShowTimetable()
          ],
        ));
  }
}
