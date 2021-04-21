import 'package:flutter/material.dart';

class Timetable extends StatefulWidget {
  @override
  _TimetableState createState() => _TimetableState();
}

String _mediators;
String _coordinators;

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
          DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Time/Date',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            DataColumn(
              label: Text(
                'Monday',
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
            DataRow(
              cells: <DataCell>[
                DataCell(Text('7:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('8:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('9:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('10:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('11:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('12:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
          ]),
          DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Time/Date',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            DataColumn(
              label: Text(
                'Tuesday',
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
            DataRow(
              cells: <DataCell>[
                DataCell(Text('7:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('8:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('9:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('10:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('11:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('12:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
          ]),
          DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Time/Date',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            DataColumn(
              label: Text(
                'Wednesday',
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
            DataRow(
              cells: <DataCell>[
                DataCell(Text('7:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('8:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('9:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('10:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('11:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('12:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
          ]),
          DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Time/Date',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            DataColumn(
              label: Text(
                'Thursday',
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
            DataRow(
              cells: <DataCell>[
                DataCell(Text('7:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('8:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('9:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('10:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('11:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('12:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
          ]),
          DataTable(columns: const <DataColumn>[
            DataColumn(
              label: Text(
                'Time/Date',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
            ),
            DataColumn(
              label: Text(
                'Friday',
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
            DataRow(
              cells: <DataCell>[
                DataCell(Text('7:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('8:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('9:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('10:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('11:00am')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('12:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('1:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('2:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(Text('3:00pm')),
                DataCell(TextFormField(
                  decoration: InputDecoration(labelText: 'Enter mediator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _mediators);
                  },
                )),
                DataCell(TextFormField(
                  decoration:
                      InputDecoration(labelText: 'Enter coordinator name'),
                  keyboardType: TextInputType.text,
                  onFieldSubmitted: (val) {
                    print('onSubmitted ' + _coordinators);
                  },
                )),
              ],
            ),
          ]),
        ],
      ),
    );
  }
}
