import 'package:Flutter_app/Model/timeModel.dart';
import 'package:flutter/material.dart';
import '../NetworkHandler.dart';
import '../Model/TableModel.dart';
import 'showtimetable.dart';

class ShowTimetable extends StatefulWidget {
  ShowTimetable({Key key}) : super(key: key);

  @override
  _ShowTimetableState createState() => _ShowTimetableState();
}

final GlobalKey<FormState> _mondayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _tuesdayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _wednesdayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _thursdayKey = GlobalKey<FormState>();
final GlobalKey<FormState> _fridayKey = GlobalKey<FormState>();

TimeModel localItem;
NetworkHandler networkHandler = new NetworkHandler();
var mondayNames = [];
var tuesdayNames = [];
var wednesdayNames = [];
var thursdayNames = [];
var fridayNames = [];
int i = 0;
List<String> newString;
List<String> mondayString;
List<String> tuesdayString;
List<String> wednesdayString;
List<String> thursdayString;
List<String> fridayString;

getValue(String day) {
  if (day == "Monday") {
    if (mondayString.isNotEmpty) {
      if (i == 17) {
        i = 0;
        return mondayString.elementAt(17);
      } else {
        return mondayString.elementAt(i++);
      }
    } else {
      return "";
    }
  } else if (day == "Tuesday") {
    if (tuesdayString.isNotEmpty) {
      if (i == 17) {
        i = 0;
        return tuesdayString.elementAt(17);
      } else {
        return tuesdayString.elementAt(i++);
      }
    } else {
      return "";
    }
  } else if (day == "Wednesday") {
    if (wednesdayString.isNotEmpty) {
      if (i == 17) {
        i = 0;
        return wednesdayString.elementAt(17);
      } else {
        return wednesdayString.elementAt(i++);
      }
    } else {
      return "";
    }
  } else if (day == "Thursday") {
    if (thursdayString.isNotEmpty) {
      if (i == 17) {
        i = 0;
        return thursdayString.elementAt(17);
      } else {
        return thursdayString.elementAt(i++);
      }
    } else {
      return "";
    }
  } else if (day == "Friday") {
    if (fridayString.isNotEmpty) {
      if (i == 17) {
        i = 0;
        return fridayString.elementAt(17);
      } else {
        return fridayString.elementAt(i++);
      }
    } else {
      return "";
    }
  } else
    return "";
}

Widget buildRow(String day, var dayNames, String time) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      //Time
      Expanded(child: Text("Time: " + time)),
      //Name
      Expanded(
          child: TextFormField(
        initialValue: getValue(day),
        decoration: InputDecoration(labelText: 'Mediator Name:'),
        onSaved: (String value) {
          dayNames.add(value);
        },
      )),
      //Name
      Expanded(
          child: TextFormField(
        initialValue: getValue(day),
        decoration: InputDecoration(labelText: 'Coordinator Name:'),
        onSaved: (String value) {
          dayNames.add(value);
        },
      )),
    ],
  );
}

Widget submitButton(
    var day, String dayName, GlobalKey<FormState> key, BuildContext context) {
  return ElevatedButton(
      child: Text('Submit'),
      onPressed: () async {
        if (key.currentState.validate()) {
          key.currentState.save();
          Map<String, String> data = {
            "mondayNames": mondayNames.toString(),
            "tuesdayNames": tuesdayNames.toString(),
            "wednesdayNames": wednesdayNames.toString(),
            "thursdayNames": thursdayNames.toString(),
            "fridayNames": fridayNames.toString(),
          };
        }

        print("Submit button pressed!");
        print(dayName + ": " + day.toString());
        day.clear();
      });
}

Widget buildDay(
  String day,
  var dayNames,
  GlobalKey<FormState> dayKey,
  BuildContext context,
) {
  return Form(
      key: dayKey,
      child: Column(
        children: <Widget>[
          Text(day),
          buildRow(day, dayNames, "7.00 am"),
          buildRow(day, dayNames, "8.00 am"),
          buildRow(day, dayNames, "9.00 am"),
          buildRow(day, dayNames, "10.00 am"),
          buildRow(day, dayNames, "11.00 am"),
          buildRow(day, dayNames, "12.00 am"),
          buildRow(day, dayNames, "1.00 pm"),
          buildRow(day, dayNames, "2.00 pm"),
          buildRow(day, dayNames, "3.00 pm"),
        ],
      ));
}

loadTimetable(List<TimeModel> data, String day) async {
  newString = [];
  data.forEach((element) {
    if (day == 'Monday') {
      String mondayFull = element.mondayTable;
      mondayFull = mondayFull.substring(1, (mondayFull.length - 1));
      mondayString = mondayFull.split(", ");
      return mondayString;
    } else if (day == 'Tuesday') {
      String tuesdayFull = element.tuesdayTable;
      tuesdayFull = tuesdayFull.substring(1, (tuesdayFull.length - 1));
      tuesdayString = tuesdayFull.split(", ");
      return tuesdayString;
    } else if (day == 'Wednesday') {
      String wednesdayFull = element.wednesdayTable;
      wednesdayFull = wednesdayFull.substring(1, (wednesdayFull.length - 1));
      wednesdayString = wednesdayFull.split(", ");
      return wednesdayString;
    } else if (day == 'Thursday') {
      String thursdayFull = element.thursdayTable;
      thursdayFull = thursdayFull.substring(1, (thursdayFull.length - 1));
      thursdayString = thursdayFull.split(", ");
      return thursdayString;
    } else if (day == 'Friday') {
      String fridayFull = element.fridayTable;
      fridayFull = fridayFull.substring(1, (fridayFull.length - 1));
      fridayString = fridayFull.split(", ");
      return fridayString;
    } else
      return "";
  });
}

class _ShowTimetableState extends State<ShowTimetable> {
  // TimeModel data = [];
  TableModel tableModel = TableModel();
  List<TimeModel> data = [];
  NetworkHandler networkHandler = NetworkHandler();

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    print("init");
    super.initState();
    fetchData();
  }

  void fetchData() async {
    //print("Fetching data");
    var response = await networkHandler.get("/timetable/getalltable-data");
    //print("Fetching data2");
    tableModel = TableModel.fromJson(response);
    //print("Fetching data3");
    setState(() {
      //print("setting state");
      data = tableModel.data;
    });
    if (data == null) {
      //print("fuck");
    } else {
      //print("Data: " + data.map((item) => {localItem = item}).toString());
      setState(() {
        loadTimetable(data, "Monday");
        loadTimetable(data, "Tuesday");
        loadTimetable(data, "Wednesday");
        loadTimetable(data, "Thursday");
        loadTimetable(data, "Friday");
      });
    }
  }

  // Timetable that shows for the mediators when they swipe up on their homepage
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0);
    return Scaffold(
        appBar: AppBar(title: Text("Timetable")),
        body: PageView(
            pageSnapping: true,
            scrollDirection: Axis.horizontal,
            controller: controller,
            children: [
              buildDay("Monday", mondayNames, _mondayKey, context),
              buildDay("Tuesday", tuesdayNames, _tuesdayKey, context),
              buildDay("Wednesday", wednesdayNames, _wednesdayKey, context),
              buildDay("Thursday", thursdayNames, _thursdayKey, context),
              buildDay("Friday", fridayNames, _fridayKey, context),
            ]));
  }
}
