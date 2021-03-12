import 'package:flutter/material.dart';

import 'package:trainstation_app/screen/navBottom.dart';
import 'package:trainstation_app/screen/login/registerScreen.dart';

class loginScreen extends StatefulWidget {
  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  Color mainColor = Colors.indigo[700];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
          )
        ],
        elevation: 0.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: <Widget>[
                Text(
                  'Sign in',
                  style: TextStyle(
                    color: Colors.indigo[900],
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: TextStyle(
                    color: mainColor,
                    fontSize: 18,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: mainColor,
                  fontSize: 18,
                ),
                suffixIcon: Icon(
                  Icons.visibility,
                  color: mainColor,
                ),
              ),
            ),
          ),
          FlatButton(
            padding: EdgeInsets.fromLTRB(50, 50, 50, 0),
            child: Container(
              constraints: BoxConstraints.expand(height: 50),
              child: Center(
                child: Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.green[400],
              ),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => registerScreen()));
            },
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: Container(
                constraints: BoxConstraints.expand(height: 50),
                child: Center(
                  child: Text(
                    'Forgot password',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                )),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 287, 0, 0),
          ),
          FlatButton(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => homeScreen()));
            },
            child: Container(
              constraints: BoxConstraints.expand(height: 50),
              decoration: BoxDecoration(
                color: Colors.indigo[700],
              ),
              child: Center(
                child: Text(
                  'Enter',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
