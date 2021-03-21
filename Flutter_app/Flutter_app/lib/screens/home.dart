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
        child: ListView(children: <Widget>[
          SizedBox(height: 40.0),
          RaisedButton(
            child: Text('Submit Form'),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            child: Text('Resources'),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            child: Text('Profile'),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            child: Text('Settings'),
          )
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
                title: Text('Resources'),
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
