import 'package:flutter/material.dart';

class registerScreen extends StatefulWidget {
  @override
  _registerScreenState createState() => _registerScreenState();
}

class _registerScreenState extends State<registerScreen> {
  Color mainColor = Colors.indigo[700];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: Column(
              children: <Widget>[
                Text(
                  'Sign up',
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
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Repeat password',
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
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 20, 20, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: mainColor,
                          fontSize: 18,
                        )),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 50, 0),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Lastname',
                        labelStyle: TextStyle(
                          color: mainColor,
                          fontSize: 18,
                        )),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: mainColor,
                    fontSize: 18,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 20, 50, 0),
            child: TextFormField(
              keyboardType: TextInputType.streetAddress,
              decoration: InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(
                    color: mainColor,
                    fontSize: 18,
                  )),
            ),
          ),
          FlatButton(
            padding: EdgeInsets.fromLTRB(0, 106, 0, 0),
            child: Container(
                constraints: BoxConstraints.expand(height: 50),
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
                decoration: BoxDecoration(
                  color: Colors.indigo[700],
                )),
          ),
        ],
      ),
    );
  }
}
