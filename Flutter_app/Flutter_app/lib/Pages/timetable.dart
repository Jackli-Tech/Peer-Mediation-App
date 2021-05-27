import 'package:flutter/material.dart';

class Timetable extends StatefulWidget {
  @override
  _TimetableState createState() => _TimetableState();
}

final GlobalKey<FormState> _mondayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _tuesdayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _wednesdayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _thursdayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _fridayKey = GlobalKey<FormState>();

var mondayNames = [];
var tuesdayNames = [];
var wednesdayNames = [];
var thursdayNames = [];
var fridayNames = [];

Widget buildRow(var dayNames, String time) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      //Time
      Expanded(child: Text("Time: " + time)),
      //Name
      Expanded(
          child: TextFormField(
        decoration: InputDecoration(labelText: 'Mediator Name:'),
        onSaved: (String value) {
          dayNames.add(value);
        },
      )),
      //Name
      Expanded(
          child: TextFormField(
        decoration: InputDecoration(labelText: 'Coordinator Name:'),
        onSaved: (String value) {
          dayNames.add(value);
        },
      )),
    ],
  );
}

Widget submitButton(var day, String dayName, GlobalKey<FormState> key) {
  return ElevatedButton(
    child: Text('Submit'),
    onPressed: () {
      if (key.currentState.validate()) {
        key.currentState.save();
        print("Saved!");
      }
      print("Submit button pressed!");
      print(dayName + ": " + day.toString());
      day.clear();
    },
  );
}

Widget buildDay(String day, var dayNames, GlobalKey<FormState> dayKey) {
  return Form(
      key: dayKey,
      child: Column(
        children: <Widget>[
          Text(day),
          buildRow(dayNames, "7.00 am"),
          buildRow(dayNames, "8.00 am"),
          buildRow(dayNames, "9.00 am"),
          buildRow(dayNames, "10.00 am"),
          buildRow(dayNames, "11.00 am"),
          buildRow(dayNames, "12.00 am"),
          buildRow(dayNames, "1.00 pm"),
          buildRow(dayNames, "2.00 pm"),
          buildRow(dayNames, "3.00 pm"),
          submitButton(dayNames, day, dayKey),
        ],
      ));
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
          buildDay("Monday", mondayNames, _mondayKey),
          buildDay("Tuesday", tuesdayNames, _tuesdayKey),
          buildDay("Wednesday", wednesdayNames, _wednesdayKey),
          buildDay("Thursday", thursdayNames, _thursdayKey),
          buildDay("Friday", fridayNames, _fridayKey),
        ],
      ),
    );
  }
}
