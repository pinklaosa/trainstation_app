import 'package:flutter/material.dart';

class eventsDetail extends StatefulWidget {
  @override
  _eventsDetailState createState() => _eventsDetailState();
}

class _eventsDetailState extends State<eventsDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.indigo[700],
            expandedHeight: 200,
            pinned: true,
            floating: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Testing 001 "),
            ),
          ),
          SliverFillRemaining(
            child: Text("test"),
          )
        ],
      ),
    );
  }
}
