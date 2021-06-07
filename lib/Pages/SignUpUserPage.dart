import 'package:flutter/material.dart';
import '../NetworkHandler.dart';

class SignUpUserPage extends StatefulWidget {
  @override
  _SignUpUserPageState createState() => _SignUpUserPageState();
}

class _SignUpUserPageState extends State<SignUpUserPage> {
  bool vis = true;
  final _globalkey = GlobalKey<FormState>();
  NetworkHandler networkHandler = new NetworkHandler();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String errorText;
  bool validate = false;
  bool circular = false;

  // Page where you can sign up mediators
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
        child: Form(
          key: _globalkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create a new User Account",
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
              emailTextField(),
              passwordTextField(),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    circular = true;
                  });
                  await checkUser();
                  if (_globalkey.currentState.validate() && validate) {
                    Map<String, String> data = {
                      "username": _usernameController.text,
                      "email": _emailController.text,
                      "password": _passwordController.text,
                    };
                    // print(data);
                    await networkHandler.post("/user/register", data);
                    setState(() {
                      circular = false;
                    });
                  } else {
                    setState(() {
                      circular = false;
                    });
                  }
                },
                child: circular
                    ? CircularProgressIndicator()
                    : Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff00A86B),
                        ),
                        child: InkWell(
                          child: Center(
                              child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }

  checkUser() async {
    if (_usernameController.text.length == 0) {
      setState(() {
        // circular = false;
        validate = false;
        errorText = "Username Can't be empty";
      });
    } else {
      var response = await networkHandler
          .get("/user/checkUsername/${_usernameController.text}");
      if (response['Status']) {
        setState(() {
          // circular = false;
          validate = false;
          errorText = "Username already taken";
        });
      } else {
        setState(() {
          // circular = false;
          validate = true;
        });
      }
    }
  }

  Widget usernameTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10.0),
      child: Column(
        children: [
          Text("Username"),
          TextFormField(
            controller: _usernameController,
            decoration: InputDecoration(
                errorText: validate ? null : errorText,
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                  width: 2,
                ))),
          )
        ],
      ),
    );
  }

  Widget emailTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
      child: Column(
        children: [
          Text("Email"),
          TextFormField(
            controller: _emailController,
            validator: (value) {
              if (value.isEmpty) return "Email can't be empty";
              if (!value.contains("@")) return "Email is Invalid";

              return null;
            },
            decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
              color: Colors.black,
              width: 2,
            ))),
          )
        ],
      ),
    );
  }

  Widget passwordTextField() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10.0),
      child: Column(
        children: [
          Text("Password"),
          TextFormField(
            controller: _passwordController,
            validator: (value) {
              if (value.isEmpty) return "Password can't be empty";
              if (value.length <= 8)
                return "Password length must be at least 8 characters";
              return null;
            },
            obscureText: vis,
            decoration: InputDecoration(
                suffixIcon: IconButton(
                  icon: Icon(vis ? Icons.visibility_off : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      vis = !vis;
                    });
                  },
                ),
                helperText: "Password length must be at least 8 characters",
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
      ),
    );
  }
}
