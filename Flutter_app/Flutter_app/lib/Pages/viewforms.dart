import 'package:flutter/material.dart';

class ViewForms extends StatefulWidget {
  @override
  _ViewFormsState createState() => _ViewFormsState();
}

class _ViewFormsState extends State<ViewForms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cool Schools Mediation App')),
        body: SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(),
                child: ListView(
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  children: <Widget>[
                    SizedBox(height: 40.0),
                    Container(
                      alignment: Alignment.center,
                      child: Text('Viewing Forms',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 28.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0)),
                    )
                  ],
                ))));
  }
}
