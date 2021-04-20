import 'package:flutter/material.dart';

class ViewForms extends StatefulWidget {
  @override
  _ViewFormsState createState() => _ViewFormsState();
}

class _ViewFormsState extends State<ViewForms> {
  @override
  Widget build(BuildContext context) {
    final titles = [
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
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          child: ListTile(
            title: Text(titles[index]),
            subtitle: Text('Mediator: ' + mediators[index]),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
        );
      },
    );
  }
}
