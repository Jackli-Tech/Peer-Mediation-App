import 'package:flutter/material.dart';

class OpenQuestions extends StatefulWidget {
  @override
  _OpenQuestionsState createState() => _OpenQuestionsState();
}

class _OpenQuestionsState extends State<OpenQuestions> {
  
  // Page for open questions for mediators to look at
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cool Schools Mediation App")),
      body: SingleChildScrollView(
        child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              children: <Widget>[
                Container(
                    padding: const EdgeInsets.only(
                        left: 40.0, right: 40.0, bottom: 10.0),
                    decoration: BoxDecoration(color: Colors.cyan),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 100.0),
                        Text(
                            'Feel a bit lost? Don\'t worry, Here are some useful open questions to help you get on track!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0)),
                        SizedBox(height: 100.0),
                        Text('1) What is your problem?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('2) What happened?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('3) Can you tell me more?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('4) Can you be a bit more specific?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('5) And then?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('6) How are you feeling about this?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('7) What are your thoughts on this?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('8) What do you need right now?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('9) What can you do differently next time?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('10) How could you act differently next time?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text(
                            '11) What are you willing to do to solve this problem?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('12) Is there anything else you want to share?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('13) What else can you tell me?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                        Text('14) What can you do to help solve the problem?',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 25.0)),
                        SizedBox(height: 60.0),
                      ],
                    )),
              ],
            )),
      ),
    );
  }
}
