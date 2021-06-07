import 'package:flutter/material.dart';
import 'openquestions.dart';

class MediationProcess extends StatefulWidget {
  @override
  _MediationProcessState createState() => _MediationProcessState();
}

class _MediationProcessState extends State<MediationProcess> {
  // Page to display a summarized version of the mediation process for mediators to jog their memory
  @override
  Widget build(BuildContext context) {
    PageController medProcessController = PageController(initialPage: 0);
    return Scaffold(
        appBar: AppBar(title: Text("Cool Schools Mediation App")),
        body: PageView(
          pageSnapping: true,
          scrollDirection: Axis.vertical,
          controller: medProcessController,
          children: [
            Container(
                decoration: BoxDecoration(color: Colors.orange),
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 10.0),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 100.0),
                    Text('Mediation Process',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0)),
                    SizedBox(height: 160.0),
                    Text(
                        'Need some help? Swipe up for a quick catch-up, or press the button below for an extra hand!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0)),
                    SizedBox(height: 200.0),
                    RaisedButton(
                        child:
                            Text('More Help', style: TextStyle(fontSize: 40.0)),
                        padding: EdgeInsets.all(50),
                        color: Colors.green[500],
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(32.0))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OpenQuestions(),
                          ));
                        }),
                  ],
                )),
            Container(
                decoration: BoxDecoration(color: Colors.indigo),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 400.0),
                    Text('THE PRIMARY MEDIATION PROCESS, IN BRIEF',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40.0)),
                    SizedBox(height: 100.0),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 10.0),
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 200.0),
                    Text('STAGE 1: INTRODUCTION AND RULES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40.0)),
                    SizedBox(height: 100.0),
                    Text('1) Introduce yourselves.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '2) Ask if they agree to mediation – move to a quiet area.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text('3) Get agreement to the five rules of mediation:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text('- Listen to each other - You\'ll each get a turn.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text('- One person speaks at a time.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text('- Be respectful.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text('- Be honest - tell the truth.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text('- Agree to try and solve the problem together.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 10.0),
                decoration: BoxDecoration(color: Colors.orange),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 200.0),
                    Text('STAGE 2: DEFINING THE PROBLEM',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40.0)),
                    SizedBox(height: 100.0),
                    Text(
                        '1) Who will talk first? Value the person going second.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '2) Ask Person (A) what happened? Repeat back facts and ask how they feel. How are you feeling about this? Repeat feelings.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '3) Ask Person (B) what happened? Repeat back facts and ask how they feel. How are you feeling about this? Repeat feelings.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '4) Ask (A) and (B): "Do you have anything else to add about what happened?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '5) Repeat back facts & repeat this question until they have nothing more to add.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 10.0),
                decoration: BoxDecoration(color: Colors.purple[300]),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 200.0),
                    Text('STAGE 3: SUMMARISE WITH ONE SENTENCE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40.0)),
                    SizedBox(height: 100.0),
                    Text(
                        '1) My understanding is that the problem is ..., is that correct?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '2) Persons (A) and (B) need to both agree. There can be more than one problem.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 10.0),
                decoration: BoxDecoration(color: Colors.red),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 200.0),
                    Text('STAGE 4: GENERATING SOLUTIONS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40.0)),
                    SizedBox(height: 100.0),
                    Text(
                        '1) Ask Person (B) and then Person (A): What can you do...',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text('- ... to help solve this problem? OR ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text(
                        '- ... differently next time so this problem doesn\'t happen again?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text('2) Ask Person (A) to comment on Person (B)\'s idea:',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text('- What do you think of that idea?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 20.0),
                    Text('- Do you have any other suggestions?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text('3) Ask Person (B) to comment on Person (A)\'s ideas.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '4) Ask which suggestions will solve the problem for both of them.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '5) Mediator summarises the agreement and checks if correct.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                  ],
                )),
            Container(
                padding: const EdgeInsets.only(
                    left: 40.0, right: 40.0, bottom: 10.0),
                decoration: BoxDecoration(color: Colors.green),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 200.0),
                    Text('STAGE 5: REACHING AGREEMENT AND CLOSURE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40.0)),
                    SizedBox(height: 100.0),
                    Text(
                        '1) Do you think the agreement solves the problem? Are you both happy now?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text(
                        '2) Write the Agreement on the Mediation Report Form and ask disputants to sign it.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text('3) Arrange a check back date and time.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                    Text('4) Congratulate disputants on reaching an agreement.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 25.0)),
                    SizedBox(height: 40.0),
                  ],
                )),
          ],
        ));
  }
}
