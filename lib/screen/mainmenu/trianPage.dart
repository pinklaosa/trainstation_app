import 'package:flutter/material.dart';

class trainPage extends StatefulWidget {
  @override
  _trainPageState createState() => _trainPageState();
}

class _trainPageState extends State<trainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text('สถานนีรถไฟ'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.map,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
