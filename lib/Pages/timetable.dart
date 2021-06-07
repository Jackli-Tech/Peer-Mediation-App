import 'package:Flutter_app/Model/timeModel.dart';
import 'package:flutter/material.dart';
import '../NetworkHandler.dart';
import '../Model/TableModel.dart';

class Timetable extends StatefulWidget {
  Timetable({Key key}) : super(key: key);

  @override
  _TimetableState createState() => _TimetableState();
}

//Init Variables
GlobalKey<FormState> _mondayKey = GlobalKey<FormState>();
GlobalKey<FormState> _tuesdayKey = GlobalKey<FormState>();
GlobalKey<FormState> _wednesdayKey = GlobalKey<FormState>();
GlobalKey<FormState> _thursdayKey = GlobalKey<FormState>();
GlobalKey<FormState> _fridayKey = GlobalKey<FormState>();

List<String> newString;
List<String> mondayString;
List<String> tuesdayString;
List<String> wednesdayString;
List<String> thursdayString;
List<String> fridayString;

var mondayNames = [];
var tuesdayNames = [];
var wednesdayNames = [];
var thursdayNames = [];
var fridayNames = [];

int counter = 0;
TimeModel localItem;
NetworkHandler networkHandler = new NetworkHandler();

/* getValue Function that returns the value of a specific day's string at 'counter' position in the day's String List. 
** The String 'day' variable passed into the function determines which 'day'String the values are retrieved from.
** 'counter' determines which TextFormField the value will be sent to, and which position from the String List it should be retrieved from.
** As there are 18 fields and the index starts at 0, when the 'counter' reaches 17, the counter is set to 0, and the 17th element returned.
** Returns "" in case of null/empty to provide a blank TextFormField, indicating no prior name saved in the database.
*/
getValue(String day) {
  if (day == "Monday") {
    if ((mondayString != null) && (mondayString.isNotEmpty)) {
      if (counter == 17) {
        counter = 0;
        return mondayString.elementAt(17);
      } else {
        return mondayString.elementAt(counter++);
      }
    } else {
      return "";
    }
  } else if (day == "Tuesday") {
    if ((tuesdayString != null) && (tuesdayString.isNotEmpty)) {
      if (counter == 17) {
        counter = 0;
        return tuesdayString.elementAt(17);
      } else {
        return tuesdayString.elementAt(counter++);
      }
    } else {
      return "";
    }
  } else if (day == "Wednesday") {
    if ((wednesdayString != null) && (wednesdayString.isNotEmpty)) {
      if (counter == 17) {
        counter = 0;
        return wednesdayString.elementAt(17);
      } else {
        return wednesdayString.elementAt(counter++);
      }
    } else {
      return "";
    }
  } else if (day == "Thursday") {
    if ((thursdayString != null) && (thursdayString.isNotEmpty)) {
      if (counter == 17) {
        counter = 0;
        return thursdayString.elementAt(17);
      } else {
        return thursdayString.elementAt(counter++);
      }
    } else {
      return "";
    }
  } else if (day == "Friday") {
    if ((fridayString != null) && (fridayString.isNotEmpty)) {
      if (counter == 17) {
        counter = 0;
        return fridayString.elementAt(17);
      } else {
        return fridayString.elementAt(counter++);
      }
    } else {
      return "";
    }
  } else
    return "";
}

/* buildRow Widget that returns a Row Widget containing a Text, TextFormField, and TextFormField, each wrapped in Expanded to size appropriately.
** Constructed with a String for the day, var for the corresponding array for that day, and String for the time of day.
** The initial value is set to the value returned by getValue.
** When the key for that day is saved through submitButton, all TextFormFields for that day have their values added to that day's array. 
*/
Widget buildRow(String day, var dayNames, String time) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Expanded(
        child: Text("Time: " + time)),
      Expanded(
          child: TextFormField(
        initialValue: getValue(day),
        decoration: InputDecoration(labelText: 'Mediator Name:'),
        onSaved: (String value) {
          dayNames.add(value);
        },
      )),
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

/* submitButton Widget that returns an ElevatedButton that saves the data for that day.
** Constructed with a var for the day, String for the name of the day, key, and context.
** 'dayName' determines which 'day'array the data will be saved into.
*/
Widget submitButton(
    var day, String dayName, GlobalKey<FormState> key, BuildContext context) {
  return ElevatedButton(
      child: Text('Submit'),
      onPressed: () async {
        if (key.currentState.validate()) {
          key.currentState.save();
          if (dayName == "Monday") {
            Map<String, String> data = {
              "mondayNames": mondayNames.toString(),
            };
            day.clear();
          } else if (dayName == "Tuesday") {
            Map<String, String> data = {
              "tuesdayNames": tuesdayNames.toString(),
            };
            day.clear();
          } else if (dayName == "Wednesday") {
            Map<String, String> data = {
              "wednesdayNames": wednesdayNames.toString(),
            };
            day.clear();
          } else if (dayName == "Thursday") {
            Map<String, String> data = {
              "thursdayNames": thursdayNames.toString(),
            };
            day.clear();
          } else if (dayName == "Friday") {
            Map<String, String> data = {
              "fridayNames": fridayNames.toString(),
            };
            day.clear();
          }
        }
      });
}

/* buildDay Function that returns a Form widget containing a buildRow for each hour from 7am til 3pm.
** Constructed with a String for the day, var for the day's array, the key for that day, and the build context.
** Each buildRow gets passed the day, and the array for that day, as well as the time to show as a String value.
** A submitButton is added after all the buildRows to provide a method of data saving.
** The submitButton is passed the day's array, name as String, the day's key, and the build context.
*/
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
          submitButton(dayNames, day, dayKey, context),
        ],
      ));
}

/* loadTimetable function that loads an existing timetable from the database into each day's arrays.
** Constructed with a List<TimeModel> which represents the database data, and a String for the day.
** As the data is stored in a '[, , ...]' format, the function first performs a substring to remove the '[' and ']'.
** It then performs a split on the remaning String, which is saved into the day's array.
*/
loadTimetable(List<TimeModel> data, String day) async {
  newString = [];
  data.forEach((element) {
    if (day == 'Monday') {
      String mondayFull = element.mondayTable;
      if (mondayFull != null) {
        mondayFull = mondayFull.substring(1, (mondayFull.length - 1));
        mondayString = mondayFull.split(", ");
        return mondayString;
      } else {
        mondayString = [];
      }
    } else if (day == 'Tuesday') {
      String tuesdayFull = element.tuesdayTable;
      if (tuesdayFull != null) {
        tuesdayFull = tuesdayFull.substring(1, (tuesdayFull.length - 1));
        tuesdayString = tuesdayFull.split(", ");
        return tuesdayString;
      } else {
        tuesdayString = [];
      }
    } else if (day == 'Wednesday') {
      String wednesdayFull = element.wednesdayTable;
      if (wednesdayFull != null) {
        wednesdayFull = wednesdayFull.substring(1, (wednesdayFull.length - 1));
        wednesdayString = wednesdayFull.split(", ");
        return wednesdayString;
      } else {
        wednesdayString = [];
      }
    } else if (day == 'Thursday') {
      String thursdayFull = element.thursdayTable;
      if (thursdayFull != null) {
        thursdayFull = thursdayFull.substring(1, (thursdayFull.length - 1));
        thursdayString = thursdayFull.split(", ");
        return thursdayString;
      } else {
        thursdayString = [];
      }
    } else if (day == 'Friday') {
      String fridayFull = element.fridayTable;
      if (fridayFull != null) {
        fridayFull = fridayFull.substring(1, (fridayFull.length - 1));
        fridayString = fridayFull.split(", ");
        return fridayString;
      } else {
        fridayString = [];
      }
    } else
      return "";
  });
}

class _TimetableState extends State<Timetable> {
  TableModel tableModel = TableModel();
  List<TimeModel> data = [];
  NetworkHandler networkHandler = NetworkHandler();

  @override
  void initState() {
    super.initState();
    fetchData();
    setState(() {});
  }

  //Fetches the data from the database and calls loadTimetable to load the data into each day.
  void fetchData() async {
    var response = await networkHandler.get("/timetable/getalltable-data");
    tableModel = TableModel.fromJson(response);
    setState(() {
      data = tableModel.data;
      loadTimetable(data, "Monday");
      loadTimetable(data, "Tuesday");
      loadTimetable(data, "Wednesday");
      loadTimetable(data, "Thursday");
      loadTimetable(data, "Friday");
    });
  }

  //Builds each day of the week onto their own PageView 'page'.
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
              buildDay("Monday", mondayNames, _mondayKey, context),
              buildDay("Tuesday", tuesdayNames, _tuesdayKey, context),
              buildDay("Wednesday", wednesdayNames, _wednesdayKey, context),
              buildDay("Thursday", thursdayNames, _thursdayKey, context),
              buildDay("Friday", fridayNames, _fridayKey, context),
            ]));
  }
}
