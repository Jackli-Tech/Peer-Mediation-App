import 'package:flutter/material.dart';
import 'viewFormsUsers.dart';
import '../Profile/ProfileScreen.dart';
import 'timetable.dart';
import 'settings.dart';

class TeacherHome extends StatefulWidget {
  @override
  _TeacherHomeState createState() => _TeacherHomeState();
}

class _TeacherHomeState extends State<TeacherHome> {
  //Homepage for the admin/coordinator/teacher
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
                    child: Text('View Forms',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(70),
                    color: Colors.green,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ViewForms(),
                      ));
                    }),
                SizedBox(height: 50.0),
                RaisedButton(
                    child: Text('Change Timetable',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 40.0)),
                    padding: EdgeInsets.all(50),
                    color: Colors.orange,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(32.0))),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Timetable(),
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
              ]),
            ),
          ],
        ));
  }
}
