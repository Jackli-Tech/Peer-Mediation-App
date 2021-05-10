import 'package:Flutter_app/Pages/viewformslist.dart';
import 'package:flutter/material.dart';

class ViewFormsUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cool Schools Mediation App')),
      body: BodyLayout(),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _formsListView(context);
  }
}

Widget _formsListView(BuildContext context) {
  //this data ideally will be taken from the database
  final mediators = [
    'James',
    'Amelia',
    'Rick',
    'Demna',
    'Frank',
    'Raf',
    'Charlie',
    'Jake',
    'Benny'
  ];

  return ListView.builder(
    itemCount: mediators.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
            title: Text('Mediator: ' + mediators[index]),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('tapped ' + mediators[index]);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ViewFormsList(),
              ));
            }),
      );
    },
  );
}
