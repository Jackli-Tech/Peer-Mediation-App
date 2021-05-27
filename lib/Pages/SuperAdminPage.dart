import 'SignUpUserPage.dart';
import 'SignInPage.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'SignUpAdminPage.dart';
import 'SignUpSuperAdminPage.dart';
class SuperAdminPage extends StatefulWidget {
  @override
  _SuperAdminPageState createState() => _SuperAdminPageState();
}

class _SuperAdminPageState extends State<SuperAdminPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.green[200]],
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.repeated),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: Column(
            children: [
              SizedBox(height: 40.0),
              Text(
                "This is the SuperAdmin Page",
                style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 2),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 6),
              Text(
                "Please Click the buttons to do the operations",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 38,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpUserPage(),
                      ));
                    },
                    child: Text(
                      "Sign up a Mediator",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpAdminPage(),
                      ));
                    },
                    child: Text(
                      "Sign up a Coordinator",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUpSuperAdminPage(),
                      ));
                    },
                    child: Text(
                      "Sign up a SuperAdmin",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                    },
                    child: Text(
                      "HomePage",
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  

  Widget boxContainer(String path, String text, onclick) {
    return InkWell(
      onTap: onclick,
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width - 140,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Image.asset(
                  path,
                  height: 25,
                  width: 25,
                ),
                SizedBox(width: 20),
                Text(text,
                    style: TextStyle(fontSize: 16, color: Colors.black87)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
