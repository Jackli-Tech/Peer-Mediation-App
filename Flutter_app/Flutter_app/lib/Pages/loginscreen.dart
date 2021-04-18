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
      decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Username or Email',
          prefixIcon: Icon(Icons.account_box, size: 30.0)),
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
      decoration: InputDecoration(
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(20.0),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          fillColor: Colors.white,
          filled: true,
          hintText: 'Password',
          prefixIcon: Icon(Icons.lock, size: 30.0)),
      keyboardType: TextInputType.visiblePassword,
      obscureText: true,
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
                        colors: [
                      Colors.yellow.withOpacity(0.75),
                      Colors.blue.withOpacity(0.75),
                      Colors.red.withOpacity(0.75)
                    ])),
                child: Column(
                  children: <Widget>[
                    ClipPath(
                      //clipper: CurveClipper(),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/placeholder4login.jpg'),
                              fit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.5),
                                  BlendMode.dstATop),
                            ),
                          )
                          /*
                          image:
                              AssetImage('assets/images/placeholder4login.jpg'),
                          color: Colors.white,
                          colorBlendMode: BlendMode.colorBurn,
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          */
                          ),
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
                    Container(
                        margin: EdgeInsets.all(50),
                        child: Form(
                            key: _formKey,
                            child: Column(children: <Widget>[
                              _buildUsername(),
                              SizedBox(height: 40.0),
                              _buildPassword(),
                              SizedBox(height: 60.0),
                              RaisedButton(
                                padding: const EdgeInsets.only(
                                    left: 25.0,
                                    top: 12.5,
                                    bottom: 12.5,
                                    right: 25.0),
                                color: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(60.0))),
                                child: Text('LOGIN',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 3.0)),
                                onPressed: () {
                                  if (!_formKey.currentState.validate()) {
                                    return;
                                  }
                                  _formKey.currentState.save();
                                  print('Username: ' + _username);
                                  print('Password: ' + _password);
                                },
                              )
                            ])))
                  ],
                ))));
  }
}
