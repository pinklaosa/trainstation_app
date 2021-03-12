import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trainstation_app/component/bodyTicket.dart';

class ticketPage extends StatefulWidget {
  @override
  _ticketPageState createState() => _ticketPageState();
}

class _ticketPageState extends State<ticketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        title: const Text(
          'TICKET',
          style: TextStyle(
            fontFamily: 'EkkamaiNew',
            letterSpacing: 2.0,
            fontSize: 20.0,
          ),
        ),
        backgroundColor: Colors.indigo[700],
      ),
      body: PageSelect(),
    );
  }
}
