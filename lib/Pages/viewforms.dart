import 'package:flutter/material.dart';

class ViewForms extends StatefulWidget {
  @override
  _ViewFormsState createState() => _ViewFormsState();
}

String _mediatorName;
String _disputantAName;
String _disputantBName;
String _conflictCause;
String _mediatorHandling;
String _referToTeacher;
String _conflictResolved;

class _ViewFormsState extends State<ViewForms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('CoolSchools App')),
        body: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: ListView(
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Container(
                          padding: const EdgeInsets.only(
                              left: 40.0, right: 40.0, bottom: 10.0),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 40.0),
                              Text('Viewing Mediation Form',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 1.0)),
                            ],
                          )),
                      Container(
                          padding:
                              const EdgeInsets.only(left: 20.0, bottom: 10.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(height: 60.0),
                                Text('Mediator name: ',
                                    style: TextStyle(
                                        color: Colors.grey[850],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0)),
                                SizedBox(height: 40.0),
                                Text('Disputant A name: ',
                                    style: TextStyle(
                                        color: Colors.grey[850],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0)),
                                SizedBox(height: 20.0),
                                Text('Disputant B name: ',
                                    style: TextStyle(
                                        color: Colors.grey[850],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0)),
                                SizedBox(height: 40.0),
                                Text('Conflict causes: ',
                                    style: TextStyle(
                                        color: Colors.grey[850],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0)),
                                SizedBox(height: 100.0),
                                Text(
                                    'How mediator came to handle this conflict: ',
                                    style: TextStyle(
                                        color: Colors.grey[850],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0)),
                                SizedBox(height: 100.0),
                                Text(
                                    'Mediation referred to teacher? (Yes/No): ',
                                    style: TextStyle(
                                        color: Colors.grey[850],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0)),
                                SizedBox(height: 20.0),
                                Text('Was a good resolution found? (Yes/No): ',
                                    style: TextStyle(
                                        color: Colors.grey[850],
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.0)),
                              ]))
                    ]))));
  }
}
