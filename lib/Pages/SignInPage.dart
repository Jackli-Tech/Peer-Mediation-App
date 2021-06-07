import 'dart:convert';
// import 'dart:developer';
import '../Pages/home.dart';
import './teacherhome.dart';
import 'package:Flutter_app/Pages/SuperAdminPage.dart';
import 'package:flutter/material.dart';
import '../NetworkHandler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class UsernameValidatorr {
  static String validate(bool validate,String errorText) {
    return validate ? null : errorText;
  }
}
class PasswordValidatorr {
  static String validate(bool validate,String errorText) {
    return validate ? null : errorText;
  }
}

class _SignInPageState extends State<SignInPage> {
  bool vis = true;
  final _globalkey = GlobalKey<FormState>();
  NetworkHandler networkHandler = new NetworkHandler();
  TextEditingController _usernameController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();
  String errorText;
  bool validate = false;
  bool circular = false;
  final storage = new FlutterSecureStorage();

  // Sign in page for the application
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.green[200]],
              begin: const FractionalOffset(0.0, 1.0),
              end: const FractionalOffset(0.0, 1.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.repeated),
        ),
        child: Form(
          key: _globalkey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              usernameTextField(),
              SizedBox(
                height: 20,
              ),
              passwordTextField(),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    circular = true;
                  });
                  Map<String, String> data = {
                    "username": _usernameController.text,
                    "password": _passwordController.text,
                  };
                  var response = await networkHandler.post("/user/login", data);
                  if (response.statusCode == 200 ||
                      response.statusCode == 201) {
                    Map<String, dynamic> output = json.decode(response.body);
                    print(response);
                    print("!!!!!!!");
                    print(output);
                    await storage.write(key: "token", value: output["token"]);

                    setState(() {
                      validate = true;
                      circular = false;
                    });
                    if (output["role"] == "user") {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                          (route) => false);
                    }

                    if (output["role"] == "admin") {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TeacherHome(),
                          ),
                          (route) => false);
                    }

                    if (output["role"] == "superadmin") {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuperAdminPage(),
                          ),
                          (route) => false);
                    }
                  } else {
                    String output = json.decode(response.body);
                    setState(() {
                      validate = false;
                      errorText = output;
                      circular = false;
                    });
                  }
                },
                child: Container(
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff00A86B),
                  ),
                  child: Center(
                      child: circular
                          ? CircularProgressIndicator()
                          : Text(
                              "Sign In",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget usernameTextField() {
    return Column(
      children: [
        Text("Username"),
        TextFormField(
          controller: _usernameController,
          decoration: InputDecoration(
              errorText: UsernameValidatorr.validate(validate,errorText),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ))),
        )
      ],
    );
  }

  Widget passwordTextField() {
    return Column(
      children: [
        Text("Password"),
        TextFormField(
          controller: _passwordController,
          obscureText: vis,
          decoration: InputDecoration(
              errorText: PasswordValidatorr.validate(validate,errorText),
              suffixIcon: IconButton(
                icon: Icon(vis ? Icons.visibility_off : Icons.visibility),
                onPressed: () {
                  setState(() {
                    vis = !vis;
                  });
                },
              ),
              helperStyle: TextStyle(
                fontSize: 16,
              ),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 2,
              ))),
        )
      ],
    );
  }
}
