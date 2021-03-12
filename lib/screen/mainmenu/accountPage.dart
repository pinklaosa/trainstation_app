import 'package:flutter/material.dart';
import 'package:trainstation_app/component/bodyAccount.dart';

class profileScreen extends StatefulWidget {
  @override
  _profileScreenState createState() => _profileScreenState();
}

class _profileScreenState extends State<profileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[700],
        leading: SizedBox(),
        toolbarHeight: 100,
        elevation: 0.0,
      ),
      body: PageAccount(),
    );
  }
}
