import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:trainstation_app/screen/login/loginScreen.dart';

class loadingScreen extends StatefulWidget {
  @override
  _loadingScreenState createState() => _loadingScreenState();
}

class _loadingScreenState extends State<loadingScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => loginScreen(),
          )),
    );
  }

  Widget spinGrid = Center(
      child: SpinKitCubeGrid(
    color: Colors.white,
    size: 80.0,
  ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[700],
      body: spinGrid,
    );
  }
}
