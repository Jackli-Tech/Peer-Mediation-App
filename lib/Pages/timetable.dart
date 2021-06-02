import 'package:Flutter_app/Model/timeModel.dart';
import 'package:flutter/material.dart';
import '../NetworkHandler.dart';
import '../Model/TableModel.dart';
import 'showtimetable.dart';
import 'teacherhome.dart';

class Timetable extends StatefulWidget {
  Timetable({Key key}) : super(key: key);

  @override
  _TimetableState createState() => _TimetableState();
}

GlobalKey<FormState> _mondayKey = GlobalKey<FormState>();
GlobalKey<FormState> _tuesdayKey = GlobalKey<FormState>();
GlobalKey<FormState> _wednesdayKey = GlobalKey<FormState>();
GlobalKey<FormState> _thursdayKey = GlobalKey<FormState>();
GlobalKey<FormState> _fridayKey = GlobalKey<FormState>();

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
  //print("getvalue");
  if (day == "Monday") {
    if ((mondayString != null) && (mondayString.isNotEmpty)) {
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
    if ((tuesdayString != null) && (tuesdayString.isNotEmpty)) {
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
    if ((wednesdayString != null) && (wednesdayString.isNotEmpty)) {
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
    if ((thursdayString != null) && (thursdayString.isNotEmpty)) {
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
    if ((fridayString != null) && (fridayString.isNotEmpty)) {
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
          if(dayName=="Monday"){
            Map<String, String> data = {
            "mondayNames": mondayNames.toString(),
          };
          var response = await networkHandler.patch(
              "/timetable/updatetableMonday/60b4224131ee52a48608ba7e", data);
          if (response.statusCode == 200 || response.statusCode == 201) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => TeacherHome()),
            // );
            print("success");
          } else {
            print("error");
          }
          day.clear();
          }else if(dayName=="Tuesday"){
             Map<String, String> data = {
            "tuesdayNames": tuesdayNames.toString(),
          };
          var response = await networkHandler.patch(
              "/timetable/updatetableTuesday/60b4224131ee52a48608ba7e", data);
          if (response.statusCode == 200 || response.statusCode == 201) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => TeacherHome()),
            // );
            print("success");
          } else {
            print("error");
          }day.clear();
          }else if(dayName=="Wednesday"){
             Map<String, String> data = {
            "wednesdayNames": wednesdayNames.toString(),
          };
          var response = await networkHandler.patch(
              "/timetable/updatetableWednesday/60b4224131ee52a48608ba7e", data);
          if (response.statusCode == 200 || response.statusCode == 201) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => TeacherHome()),
            // );
            print("success");
          } else {
            print("error");
          }day.clear();
          }else if(dayName=="Thursday"){
             Map<String, String> data = {
            "thursdayNames": thursdayNames.toString(),
          };
          var response = await networkHandler.patch(
              "/timetable/updatetableThursday/60b4224131ee52a48608ba7e", data);
          if (response.statusCode == 200 || response.statusCode == 201) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => TeacherHome()),
            // );
            print("success");
          } else {
            print("error");
          }day.clear();
          }else if(dayName=="Friday"){
             Map<String, String> data = {
            "fridayNames": fridayNames.toString(),
          };
          var response = await networkHandler.patch(
              "/timetable/updatetableFriday/60b4224131ee52a48608ba7e", data);
          if (response.statusCode == 200 || response.statusCode == 201) {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => TeacherHome()),
            // );
            print("success");
          } else {
            print("error");
          }
          }day.clear();
        
        }

        print("Submit button pressed!");
        print(dayName + ": " + day.toString());
        print(mondayNames.toString());
        // day.clear();
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
          submitButton(dayNames, day, dayKey, context),
        ],
      ));
}

loadTimetable(List<TimeModel> data, String day) async {
  newString = [];
  data.forEach((element) {
    if (day == 'Monday') {
      String mondayFull = element.mondayTable;
      if (mondayFull != "") {
        mondayFull = mondayFull.substring(1, (mondayFull.length - 1));
        mondayString = mondayFull.split(", ");
        print("LT/mondaystring: " + mondayString.toString());
        return mondayString;
      } else {
        mondayString = null;
      }
    } else if (day == 'Tuesday') {
      String tuesdayFull = element.tuesdayTable;
      if (tuesdayFull != "") {
        tuesdayFull = tuesdayFull.substring(1, (tuesdayFull.length - 1));
        tuesdayString = tuesdayFull.split(", ");
        print("LT/tuestring: " + tuesdayString.toString());
        return tuesdayString;
      } else {
        tuesdayString = null;
      }
    } else if (day == 'Wednesday') {
      String wednesdayFull = element.wednesdayTable;
      if (wednesdayFull != "") {
        wednesdayFull = wednesdayFull.substring(1, (wednesdayFull.length - 1));
        wednesdayString = wednesdayFull.split(", ");
        print("LT/wednesdaystring: " + wednesdayString.toString());
        return wednesdayString;
      } else {
        wednesdayString = null;
      }
    } else if (day == 'Thursday') {
      String thursdayFull = element.thursdayTable;
      if (thursdayFull != "") {
        thursdayFull = thursdayFull.substring(1, (thursdayFull.length - 1));
        thursdayString = thursdayFull.split(", ");
        print("LT/thursdaystring: " + thursdayString.toString());
        return thursdayString;
      } else {
        thursdayString = null;
      }
    } else if (day == 'Friday') {
      String fridayFull = element.fridayTable;
      if (fridayFull != "") {
        fridayFull = fridayFull.substring(1, (fridayFull.length - 1));
        fridayString = fridayFull.split(", ");
        print("LT/fridaystring: " + fridayString.toString());
        return fridayString;
      } else {
        fridayString = null;
      }
    } else
      return "";
  });
}

class _TimetableState extends State<Timetable> {
  // TimeModel data = [];
  TableModel tableModel = TableModel();
  List<TimeModel> data = [];
  NetworkHandler networkHandler = NetworkHandler();

  @override
  void initState() {
    super.initState();
    fetchData();
    // ignore: todo
    // TODO: implement initState
    print("init");
    // fetchData();
    setState(() {
      print("reloaded");
    });
    // super.initState();
  }

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
      // (context as Element).reassemble();
    });
  }

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
