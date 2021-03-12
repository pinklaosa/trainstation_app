import 'dart:ui';

import 'package:flutter/material.dart';

class PageAccount extends StatefulWidget {
  @override
  _PageAccountState createState() => _PageAccountState();
}

class _PageAccountState extends State<PageAccount> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 150,
        child: Stack(
          children: <Widget>[
            ClipPath(
              clipper: CustomShape(),
              child: Container(
                height: 100,
                color: Colors.indigo[700],
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.indigo[700], width: 4.0),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://scontent.futp1-1.fna.fbcdn.net/v/t1.0-9/'
                              '150581360_3615110401907301_7402365834889272493_o.jpg?'
                              '_nc_cat=102&ccb=1-3&_nc_sid=8bfeb9&_nc_eui2=AeGQJgORYcE6g_fXJb8BFeI7IPX4Y5UhUK8g9fhjlSFQr4pW7JLHyEGOMRg4pXJUz2Repl_'
                              'qNtoYifu7njkrE362&_nc_ohc=offDPYEP2jIAX-UWLhO&_nc_ht=scontent.futp1-1.'
                              'fna&oh=e109bbffee2efbe34e28e532cf18172b&oe=606A6CA5')),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Padding(padding: EdgeInsets.all(5.0)),
      Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(15.0)),
          Text(
            'Name : ปิ่นเกล้า',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 2.0,
              fontFamily: 'EkkamaiNew',
            ),
          ),
          Padding(padding: EdgeInsets.all(2.0)),
          Text(
            'สาดี',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'EkkamaiNew',
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.drive_file_rename_outline),
            onPressed: null,
            disabledColor: Colors.indigo[700],
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(5.0)),
      Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(10.0)),
          Text(
            ' Ticket :',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'EkkamaiNew',
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.sticky_note_2),
            onPressed: null,
            disabledColor: Colors.indigo[700],
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(5.0)),
      Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(6.0)),
          Text(
            '   Email :                                    ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'EkkamaiNew',
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.email),
            onPressed: null,
            disabledColor: Colors.indigo[700],
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(5.0)),
      Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(7.0)),
          Text(
            '  Address :                                 ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'EkkamaiNew',
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: null,
            disabledColor: Colors.indigo[700],
          ),
        ],
      ),
      Padding(padding: EdgeInsets.all(5.0)),
      Row(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(4.0)),
          Text(
            '   PhoneNumber :                             ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'EkkamaiNew',
            ),
          ),
          Spacer(),
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: null,
            disabledColor: Colors.indigo[700],
          ),
        ],
      ),
    ]);
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, height, width, height - 100);
    path.lineTo(width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
