import 'package:flutter/material.dart';

class trainPage extends StatefulWidget {
  @override
  _trainPageState createState() => _trainPageState();
}

class _trainPageState extends State<trainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      // appBar: AppBar(
      //   toolbarHeight: 100,
      //   title: Text('สถานนีรถไฟ'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.map,
      //         color: Colors.white,
      //       ),
      //     )
      //   ],
      // ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 20,
            ),
            child: Text(
              "ตัวเลือก",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[700],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.indigo[700],
                    borderRadius: BorderRadius.circular(10 * 1.8),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10 * 1.8),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
