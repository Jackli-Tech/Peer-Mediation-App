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
  final conflicts = [
    'Conflict 1',
    'Conflict 2',
    'Conflict 3',
    'Conflict 4',
    'Conflict 5',
    'Conflict 6',
    'Conflict 7',
    'Conflict 8',
    'Conflict 9'
  ];

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
    itemCount: conflicts.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
            title: Text('Mediator: ' + mediators[index]),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('tapped ' + conflicts[index]);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ViewFormsList(),
              ));
            }),
      );
    },
  );
}
