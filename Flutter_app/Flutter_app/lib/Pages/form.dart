import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  int _currentTabIndex = 0;
  final List<Widget> _children = [];

  onTapped(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    //resources(),
    //form(),
  ];

  String _mediatorName;
  String _disputantNameA;
  String _disputantNameB;
  String _problemDescription;
  DateTime _disputeDate;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildMediatorName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mediator Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter your name.';
        }
      },
      onSaved: (String value) {
        _mediatorName = value;
      },
    );
  }

  Widget _buildDisputantNameA() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Disputant A Name'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter your first disputant\'s name.';
        }
      },
      onSaved: (String value) {
        _disputantNameA = value;
      },
    );
  }

  Widget _buildDisputantNameB() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Disputant B Name',
        //hintText: 'Username or Email',
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter your second disputant\'s name.';
        }
      },
      onSaved: (String value) {
        _disputantNameB = value;
      },
    );
  }

  Widget _buildProblemDescription() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Tell us a bit about what happened.'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'We need a short description of what happened.';
        }
      },
      onSaved: (String value) {
        _problemDescription = value;
      },
    );
  }

  Widget _buildDisputeDate() {
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cool Schools Mediation App")),
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
                    child: Text('Mediator\'s Form',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0)),
                  ),
                  SizedBox(height: 80.0),
                  Container(
                      margin: EdgeInsets.all(24),
                      child: Form(
                          key: _formKey,
                          child: Column(children: <Widget>[
                            _buildMediatorName(),
                            SizedBox(height: 20.0),
                            _buildDisputantNameA(),
                            _buildDisputantNameB(),
                            SizedBox(height: 20.0),
                            _buildProblemDescription(),
                            /*_buildDisputantNameC(),
                                _buildDisputeDate(),*/
                            SizedBox(height: 60.0),
                            RaisedButton(
                              child: Text('Submit'),
                              onPressed: () {
                                if (!_formKey.currentState.validate()) {
                                  return;
                                }
                                _formKey.currentState.save();
                                print('Mediator: ' + _mediatorName);
                                print('Disputant A: ' + _disputantNameA);
                                print('Disputant B: ' + _disputantNameB);
                                print('Brief summary of dispute: ' +
                                    _problemDescription);

                                /*print(_disputantNameA);
                            print(_disputantNameB);
                            print(_disputantNameC);
                            print(_disputeDate);*/
                              },
                            )
                          ]))),
                ])),
      ),
      /*bottomNavigationBar: BottomNavigationBar(
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
          })*/
    );
  }
}
