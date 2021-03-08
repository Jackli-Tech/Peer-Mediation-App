import 'package:flutter/material.dart';
import 'resources.dart';
import 'loginscreen.dart';
import 'form.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
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
                        child: Text('This will be our home page',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 28.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0)),
                      ),
                    ]))));
  }
}
