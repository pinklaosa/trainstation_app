import 'package:flutter/material.dart';
import 'package:trainstation_app/screen/login/loadingScreen.dart';

void main() => runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'EkkamaiNew',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: Colors.indigo[700],
        accentColor: Colors.indigo[700],
      ),
      home: loadingScreen(),
    );
  }
}
