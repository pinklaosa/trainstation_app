import 'dart:ui';
import 'package:flutter/material.dart';

class PageSelect extends StatefulWidget {
  @override
  _PageSelectState createState() => _PageSelectState();
}

class _PageSelectState extends State<PageSelect> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Card(
          child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(5.0)),
                  IconButton(
                    icon: Icon(Icons.confirmation_number),
                    onPressed: null,
                    iconSize: 25.0,
                    disabledColor: Colors.indigo[700],
                  ),
                  Padding(padding: EdgeInsets.all(2.0)),
                  Text(
                    'No :',
                    style: TextStyle(
                      fontFamily: 'EkkamaiNew',
                      fontSize: 18.0,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    '1047-068-0091-01/01 868719',
                    style: TextStyle(
                      fontFamily: 'EkkamaiNew',
                      color: Colors.lightBlue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
                  ),
                  IconButton(
                    icon: Icon(Icons.train),
                    onPressed: null,
                    disabledColor: Colors.indigo[700],
                  ),
                  Text(
                    'ต้นทาง: กรุงเทพ',
                    style: TextStyle(
                      fontFamily: 'EkkamaiNew',
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_right),
                        onPressed: null,
                        padding: EdgeInsets.all(0.1),
                      ),
                      Text(
                        'ปลายทาง: อุบลราชธานี',
                        style: TextStyle(
                          fontFamily: 'EkkamaiNew',
                          fontSize: 13.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
                  ),
                  IconButton(
                    icon: Icon(Icons.traffic_outlined),
                    onPressed: null,
                    disabledColor: Colors.indigo[700],
                  ),
                  Text(
                    'ขบวนที่ 982',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'EkkamaiNew',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'วันเดินทาง : 8 มี.ค. 64',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontFamily: 'EkkamaiNew',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
                  ),
                  IconButton(
                    icon: Icon(Icons.access_time),
                    onPressed: null,
                    disabledColor: Colors.indigo[700],
                  ),
                  Text(
                    'เวลารถออก : 19.00',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: 'EkkamaiNew',
                      fontWeight: FontWeight.w800,
                      color: Colors.red[900],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text(
                    'ถึง : 06.10',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: 'EkkamaiNew',
                      fontSize: 14.0,
                      color: Colors.green[700],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
                  ),
                  IconButton(
                    icon: Icon(Icons.location_city),
                    onPressed: null,
                    disabledColor: Colors.indigo[700],
                  ),
                  Text(
                    'สถานีรถไฟ : หัวลำโพง ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'EkkamaiNew',
                      fontSize: 15.0,
                      color: Colors.red[700],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline),
                    onPressed: null,
                    disabledColor: Colors.indigo[700],
                  ),
                  Text(
                    'เพศ: ชาย  ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'EkkamaiNew',
                      fontSize: 15.0,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    'เตียงล่าง ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'EkkamaiNew',
                      fontSize: 15.0,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text(
                    'ผู้ใหญ่ 01-01',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'EkkamaiNew',
                      fontSize: 15.0,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 1, 1, 10),
                  ),
                  IconButton(
                    icon: Icon(Icons.attach_money),
                    onPressed: null,
                    disabledColor: Colors.indigo[700],
                  ),
                  Text(
                    'ราคา : XXXX  บาท',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'EkkamaiNew',
                      fontSize: 15.0,
                      color: Colors.blueGrey[700],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
