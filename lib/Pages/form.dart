import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../NetworkHandler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum ynAnswer { Yes, No }

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final storage = new FlutterSecureStorage();
  NetworkHandler networkHandler = new NetworkHandler();
  final _formKey = GlobalKey<FormState>();
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

  //Instantiate Variables
  String _mediatorName;
  String _disputantNameA;
  String _disputantNameB;
  String _disputantAgreementA;
  String _disputantAgreementB;
  String _checkbackTime;
  DateTime _disputeDate = DateTime.now();

  updateDate() {
    setState(() {
      _disputeDate = _disputeDate;
    });
  }

  Map<String, bool> conflictCauses = {
    'Accident': false,
    'Misunderstanding': false,
    'Game Rules': false,
    'Taking turns': false,
    'Teasing': false,
    'Posessions/Ownership': false,
    'Name Calling': false,
    'Friendship issue': false,
    'Exclusion': false,
    'Rumours/Gossip': false,
    'Other: ': false,
  };
  Map<String, bool> mediationCauses = {
    'You offered to mediate': false,
    'A teacher suggested it': false,
    'Another student suggested it': false,
    'Disputants asked you to': false,
    'Other: ': false,
  };

  var conflictCause = [];
  var mediationCause = [];

  //getItems to add all true values to a passed array
  getItems(var array, var store) {
    array.forEach((key, value) {
      if (value == true) {
        store.add(key);
        //print(value);
      }
    });
    print("Conflict/Mediation Reason: ");
    print(store);
    return store.join(", ");
  }

  ynAnswer _referralYN = ynAnswer.No;
  ynAnswer _goodResolutionYN = ynAnswer.No;

  
  
  
  
  var txtController = TextEditingController();

//Widgets
  Widget _buildDatePicker() {
    return Container(
      child: ElevatedButton(
        child: Text(_disputeDate.toString()),
        onPressed: () => _showDatePicker(context),
      ),
    );
  }

  void _showDatePicker(context) {
    showCupertinoModalPopup(
        context: context,
        builder: (_) => Container(
              height: 500,
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(children: [
                Container(
                  height: 400,
                  child: CupertinoDatePicker(
                      initialDateTime: DateTime.now(),
                      onDateTimeChanged: (val) {
                        setState(() {
                          _disputeDate = val;
                          print('New Datetime: ');
                          print(_disputeDate);
                        });
                      }),
                ),
                CupertinoButton(
                  child: Text('OK'),
                  onPressed: () => [Navigator.of(context).pop(), updateDate()],
                )
              ]),
            ));
  }

  //Mediator Name area
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

  //Disputant Name area
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

  //Checkbox for conflict cause
  Widget _buildConflictCauseCheckbox() {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 650.0,
            child: ListView(
                children: conflictCauses.keys.map((String key) {
              return new CheckboxListTile(
                title: new Text(key),
                value: conflictCauses[key],
                onChanged: (bool value) {
                  setState(() {
                    conflictCauses[key] = value;
                  });
                },
              );
            }).toList()),
          ),
        )
      ],
    );
  }

  //Checkbox for conflict mediation
  Widget _buildMediationCauseCheckbox() {
    return Row(
      children: <Widget>[
        Expanded(
          child: SizedBox(
            height: 300.0,
            child: ListView(
                children: mediationCauses.keys.map((String key) {
              return new CheckboxListTile(
                title: new Text(key),
                value: mediationCauses[key],
                onChanged: (bool value) {
                  setState(() {
                    mediationCauses[key] = value;
                  });
                },
              );
            }).toList()),
          ),
        )
      ],
    );
  }

  //Radio Buttons for Teacher Referral input
  Widget _buildTeacherReferralYN() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Was the mediation referred to a teacher?',
            style: TextStyle(fontSize: 22.0)),
        ListTile(
            title: const Text('Yes'),
            leading: Radio<ynAnswer>(
              value: ynAnswer.Yes,
              groupValue: _referralYN,
              onChanged: (ynAnswer value) {
                setState(() {
                  _referralYN = value;
                  print(value);
                });
              },
            )),
        ListTile(
            title: const Text('No'),
            leading: Radio<ynAnswer>(
              value: ynAnswer.No,
              groupValue: _referralYN,
              onChanged: (ynAnswer value) {
                setState(() {
                  _referralYN = value;
                  print(value);
                });
              },
            ))
      ],
    );
  }

  //Radio Buttons for Good Resolution input
  Widget _buildGoodResolutionYN() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Was a good resolution found?', style: TextStyle(fontSize: 22.0)),
        ListTile(
            title: const Text('Yes'),
            leading: Radio<ynAnswer>(
              value: ynAnswer.Yes,
              groupValue: _goodResolutionYN,
              onChanged: (ynAnswer value) {
                setState(() {
                  _goodResolutionYN = value;
                  print(value);
                });
              },
            )),
        ListTile(
            title: const Text('No'),
            leading: Radio<ynAnswer>(
              value: ynAnswer.No,
              groupValue: _goodResolutionYN,
              onChanged: (ynAnswer value) {
                setState(() {
                  _goodResolutionYN = value;
                  print(value);
                });
              },
            ))
      ],
    );
  }

  Widget _buildResolutionAgreement() {
    return Text(
      'Resolution/Agreement',
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildDisputantAgreementA() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Disputant A agrees to :'),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter an agreement for Disputant A.';
        }
      },
      onSaved: (String value) {
        _disputantAgreementA = value;
      },
    );
  }

  Widget _buildDisputantAgreementB() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Disputant B agrees to: '),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter an agreement for Disputant B.';
        }
      },
      onSaved: (String value) {
        _disputantAgreementB = value;
      },
    );
  }

  Widget _buildCheckBackTime() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Check back time: '),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter a check back time/date.';
        }
      },
      onSaved: (String value) {
        _checkbackTime = value;
      },
    );
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
                    child: Text('Mediation Agreement Form',
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
                            _buildDatePicker(),
                            _buildMediatorName(),
                            _buildDisputantNameA(),
                            _buildDisputantNameB(),
                            SizedBox(height: 20.0),
                            _buildConflictCauseCheckbox(),
                            SizedBox(height: 20.0),
                            _buildMediationCauseCheckbox(),
                            SizedBox(height: 20.0),
                            _buildTeacherReferralYN(),
                            SizedBox(height: 20.0),
                            _buildGoodResolutionYN(),
                            SizedBox(height: 20.0),
                            _buildResolutionAgreement(),
                            _buildDisputantAgreementA(),
                            _buildDisputantAgreementB(),
                            _buildCheckBackTime(),
                            SizedBox(height: 60.0),
                            RaisedButton(
                              child: Text('Submit'),
                              onPressed: () async {
                                try {
                                  _formKey.currentState.save();
                                  Map<String, String> data = {
                                    "MediatorName": _mediatorName,
                                    "DisputantAName": _disputantNameA,
                                    "DisputantBName": _disputantNameB,
                                    "Conflict":
                                        getItems(conflictCauses, conflictCause),

                                        
                                    "HowCome":
                                        getItems(
                                                mediationCauses, mediationCause),
                                        
                                    "Refer":
                                        _referralYN.toString(),
                                        
                                    "Agree":
                                        _goodResolutionYN.toString(),
                                        
                                    "DisputantASign": _disputantAgreementA,
                                    "DisputantBSign": _disputantAgreementB,
                                    "createTime": _checkbackTime,
                                  };
                                  var response = await networkHandler.post(
                                      "/user/form-store", data);
                                  print(response.statusCode);
                                  if (response.statusCode == 200 ||
                                      response.statusCode == 201) {
                                   
                                    print("success");
                                  }
                                } catch (e) {
                                  print(e);
                                }

                                if (!_formKey.currentState.validate()) {
                                  return;
                                }
                                
                                //print('Date/Time: ' + _disputeDate);
                                //getItems(conflictCauses, conflictCause);
                                print("1");
                                print("2");
                                // getItems(mediationCauses, mediationCause);
                                print('Mediator: ' + _mediatorName);
                                print('Disputant A: ' + _disputantNameA);
                                print('Disputant B: ' + _disputantNameB);
                                print('Referred to a teacher? ' +
                                    _referralYN.toString());
                                print('Good resolution? ' +
                                    _goodResolutionYN.toString());
                                print('Resolution/Agreement ');
                                print('(nameA): ' + _disputantNameA);
                                print('Agrees to: ' + _disputantAgreementA);
                                print('(nameB): ' + _disputantNameB);
                                print('Agrees to ' + _disputantAgreementB);
                                print('Check back time: ' + _checkbackTime);
                              },
                            )
                          ]))),
                ])),
      ),
    );
  }
}
