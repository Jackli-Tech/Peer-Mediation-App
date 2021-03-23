import 'package:flutter/material.dart';
import 'resources.dart';
import 'loginscreen.dart';
import 'form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    //resources(),
    //form(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("-AppName-")),
      body: Container(
        margin: const EdgeInsets.only(
            left: 75.0, top: 25.0, bottom: 25.0, right: 75.0),
        child: ListView(children: <Widget>[
          SizedBox(height: 40.0),
          RaisedButton(
              child: Text('Submit Form', style: TextStyle(fontSize: 40.0)),
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
              child: Text('Resources', style: TextStyle(fontSize: 40.0)),
              padding: EdgeInsets.all(70),
              color: Colors.orange,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ResourcePage(),
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
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentTabIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Profile'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.toc),
                title: Text('Mediation Process'),
                backgroundColor: Colors.blue),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Settings'),
                backgroundColor: Colors.blue),
          ],
          onTap: (index) {
            setState(() {
              _currentTabIndex = index;
            });
          }),
    );
  }
}
