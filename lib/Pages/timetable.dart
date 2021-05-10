import 'package:flutter/material.dart';

class Timetable extends StatefulWidget {
  @override
  _TimetableState createState() => _TimetableState();
}

String _mediators;
String _coordinators;

var _mondayMediatorNames = [];
var _mondayCoordinatorNames = [];

String _mon7amMN;
String _mon7amCN;
int _hour = 7;

String displayAndIncrement() {
  _hour = _hour + 1;
  if (_hour > 13) {
    return (_hour - 13).toString() + ':00pm';
  } else if (_hour == 13) {
    return (_hour - 1).toString() + ':00pm';
  } else {
    return (_hour - 1).toString() + ':00am';
  }
}

String displayAndReset() {
  _hour = 7;
  return ('3:00pm');
}

DataRow buildIncrementRow() {
  return DataRow(
    cells: <DataCell>[
      DataCell(Text(displayAndIncrement())),
      DataCell(TextFormField(
        decoration: InputDecoration(labelText: 'Enter mediator name'),
        keyboardType: TextInputType.text,
        validator: (String value) {
          if (value.isEmpty) {
            return 'Please enter mediator name(s).';
          }
        },
        onSaved: (String value) {
          _mondayMediatorNames[_hour] = value;
          print(_mondayMediatorNames[_hour]);
        },
      )),
      DataCell(TextFormField(
        decoration: InputDecoration(labelText: 'Enter coordinator name'),
        keyboardType: TextInputType.text,
        onFieldSubmitted: (val) {
          print('onSubmitted ' + _coordinators);
        },
      )),
    ],
  );
}

DataRow buildResetRow() {
  return DataRow(
    cells: <DataCell>[
      DataCell(Text(displayAndReset())),
      DataCell(TextFormField(
        decoration: InputDecoration(labelText: 'Enter mediator name'),
        keyboardType: TextInputType.text,
        onFieldSubmitted: (val) {
          print('onSubmitted ' + _mediators);
        },
      )),
      DataCell(TextFormField(
        decoration: InputDecoration(labelText: 'Enter coordinator name'),
        keyboardType: TextInputType.text,
        onFieldSubmitted: (val) {
          print('onSubmitted ' + _coordinators);
        },
      )),
    ],
  );
}

Widget buildDay(String day) {
  return DataTable(columns: <DataColumn>[
    DataColumn(
      label: Text(
        'Time/Date',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    ),
    DataColumn(
      label: Text(
        day,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    ),
    DataColumn(
      label: Text(
        ' ',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    ),
  ], rows: <DataRow>[
    buildIncrementRow(),
    buildIncrementRow(),
    buildIncrementRow(),
    buildIncrementRow(),
    buildIncrementRow(),
    buildIncrementRow(),
    buildIncrementRow(),
    buildIncrementRow(),
    buildResetRow(),
  ]);
}

class _TimetableState extends State<Timetable> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(title: Text("Cool Schools Mediation App")),
      body: PageView(
        pageSnapping: true,
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: [
          buildDay('Monday'),
          ElevatedButton(
            child: Text('Submit'),
            onPressed: () {
              print(_mondayMediatorNames[_hour]);
            },
          ),
          buildDay('Tuesday'),
          buildDay('Wednesday'),
          buildDay('Thursday'),
          buildDay('Friday'),
        ],
      ),
    );
  }
}
