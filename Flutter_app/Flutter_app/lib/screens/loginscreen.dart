import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String _username;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildUsername() {
    return TextFormField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter your username to sign in.';
        }
      },
      onSaved: (String value) {
        _username = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      validator: (String value) {
        if (value.isEmpty) {
          return 'Please enter your password.';
        }
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [Colors.yellow, Colors.blue, Colors.red])),
                child: Column(
                  //i reckon under this is where content happens
                  children: <Widget>[
                    Image(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: double.infinity,
                      image: AssetImage('assets/images/placeholder4login.jpg'),
                      fit: BoxFit.cover,
                    ),
                    SizedBox(height: 25.0),
                    Text('-AppName-',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0)),
                    SizedBox(height: 25.0),
                    Text('Welcome!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0)),
                    SizedBox(height: 40.0),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 15.0),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Username or Email',
                            prefixIcon: Icon(Icons.account_box, size: 30.0)),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(vertical: 15.0),
                            fillColor: Colors.white,
                            filled: true,
                            hintText: 'Password',
                            prefixIcon: Icon(Icons.lock, size: 30.0)),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(
                        height:
                            40.0), //this is a simple way to make padding/space
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        //this is the login button
                        margin: EdgeInsets.symmetric(horizontal: 60.0),
                        alignment: Alignment.center,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Text('LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 3.0)),
                      ),
                    ),
                  ],
                ))));
  }
}
