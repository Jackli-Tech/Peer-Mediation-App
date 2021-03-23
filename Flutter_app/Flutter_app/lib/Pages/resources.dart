import 'package:flutter/material.dart';

class ResourcePage extends StatefulWidget {
  @override
  _ResourcePageState createState() => _ResourcePageState();
}

class _ResourcePageState extends State<ResourcePage> {
  int _currentTabIndex = 0;

  onTapped(int index) {
    setState(() {
      _currentTabIndex = index;
    });
  }

  List<Widget> tabs = [
    //resources(),
    //form(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("-AppName-")),
      body: SingleChildScrollView(
        //child: Container(

        child: ConstrainedBox(
            //height: MediaQuery.of(context).size.height,
            //child: Column(

            constraints: BoxConstraints(),
            //the 3 following lines are very important(!!!) for scrolling mechanics. wrap a widget ina listview!!
            child: ListView(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              children: <Widget>[
                SizedBox(height: 40.0),

                Container(
                  alignment: Alignment.center,
                  child: Text('Mediation Process',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                ),
                SizedBox(height: 80.0),
                //this is where the main text paragraphs happen
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('Need some help? Here\'s a quick catch-up!',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                ),
                SizedBox(height: 40.0),
                Image(
                  //image can be changed.
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: double.infinity,
                  image: AssetImage('assets/images/placeholderResources.jpeg'),
                ),
                SizedBox(height: 50.0),
                Container(
                  alignment: Alignment.center,
                  child: Text('The Primary Mediation Process (in brief)',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 40.0),
                Container(
                    alignment: Alignment.center,
                    child: Text('STAGE 1: INTRODUCTION AND RULES',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text('1) Introduce yourselves',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text(
                      '2) Ask if they agree to mediation – move to a quiet area',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text('3) Get agreement to the 5 Rules of Mediation:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- Listen to each other - You\'ll each get a turn.',
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- One person speaks at a time.',
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- Be respectful.',
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- Be honest - tell the truth.',
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- Agree to try and solve the problem together.',
                    )),
                SizedBox(height: 40.0),
                Container(
                    alignment: Alignment.center,
                    child: Text('STAGE 2: DEFINING THE PROBLEM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text(
                      '1) Who will talk first? Value the person going second.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '2) Ask Person (A) what happened? Repeat back facts and ask how they feel. How are you feeling about this? Repeat feelings.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '3) Ask Person (B) what happened? Repeat back facts and ask how they feel. How are you feeling about this? Repeat feelings.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text(
                      '4) Ask (A) and (B): "Do you have anything else to add about what happened?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text(
                      '5) Repeat back facts & repeat this question until they have nothing more to add.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 40.0),
                Container(
                    alignment: Alignment.center,
                    child: Text('STAGE 3: SUMMARISE WITH ONE SENTENCE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20.0, bottom: 10.0),
                  child: Text(
                      '1) My understanding is that the problem is ..., is that correct?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '2) Persons (A) and (B) need to both agree. There can be more than one problem.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 40.0),
                Container(
                    alignment: Alignment.center,
                    child: Text('STAGE 4: GENERATING SOLUTIONS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '1) Ask Person (B) and then Person (A): What can you do...',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- ... to help solve this problem? OR ',
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- ... differently next time so this problem doesn\'t happen again?',
                    )),
                SizedBox(height: 20.0),

                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '2) Ask Person (A) to comment on Person (B)\'s idea:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- What do you think of that idea?',
                    )),
                Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 50.0, bottom: 5.0),
                    child: Text(
                      '- Do you have any other suggestions?',
                    )),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '3) Ask Person (B) to comment on Person (A)\'s ideas.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '4) Ask which suggestions will solve the problem for both of them.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '5) Mediator summarises the agreement and checks if correct.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 40.0),
                Container(
                    alignment: Alignment.center,
                    child: Text('STAGE 5: REACHING AGREEMENT AND CLOSURE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0))),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '1) Do you think the agreement solves the problem? Are you both happy now?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '2) Write the Agreement on the Mediation Report Form and ask disputants to sign it.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('3) Arrange a check back date and time.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '4) Congratulate disputants on reaching an agreement.',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 80.0),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      'Feel a bit lost? Don\'t worry, Here are some useful open questions to help you get on track!',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('1) What is your problem?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('2) What happened?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('3) Can you tell me more?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('4) Can you be a bit more specific?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('5) And then?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('6) How are you feeling about this?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('7) What are your thoughts on this?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('8) What do you need right now?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('9) What can you do differently next time?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('10) How could you act differently next time?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text(
                      '11) What are you willing to do to solve this problem?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('12) Is there anything else you want to share?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('13) What else can you tell me?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      left: 20.0, bottom: 10.0, right: 20.0),
                  child: Text('14) What can you do to help solve the problem?',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 20.0),
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
          }),
    );
  }
}
