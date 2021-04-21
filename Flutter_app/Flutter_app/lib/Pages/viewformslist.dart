import 'package:Flutter_app/Pages/viewforms.dart';
import 'package:flutter/material.dart';

class ViewFormsList extends StatelessWidget {
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
  final disputantA = [
    'Lucas',
    'Jane',
    'Huang',
  ];

  final disputantB = [
    'Jack',
    'Carissa',
    'Jaden',
  ];

  //this data ideally will be taken from the database
  final date = ['12/3/2021', '14/3/2021', '15/3/2021'];
  final time = ['12:54 pm', '2:39 pm', '3:02 pm'];

  return ListView.builder(
    itemCount: date.length,
    itemBuilder: (context, index) {
      return Card(
        //                           <-- Card widget
        child: ListTile(
            title: Text('Date: ' + date[index]),
            subtitle: Text('Time: ' + time[index]),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              print('tapped ' + date[index]);
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ViewForms(),
              ));
            }),
      );
    },
  );
}
