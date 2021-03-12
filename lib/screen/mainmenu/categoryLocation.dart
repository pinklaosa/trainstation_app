import 'package:flutter/material.dart';
import 'package:trainstation_app/component/categoryRegion.dart';

class categoryLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: Text('สถานที่ท่องเที่ยว'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.filter_list_alt,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: categoryRegion(
              textRegion: "ภาคเหนือ",
              textDescrip: "ตอนบนของประเทศไทย",
              colorRegion: Colors.blue[800],
              imgRegion: "assets/img4.png",
              pressRegion: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: categoryRegion(
              textRegion: "ภาคอิสาน",
              textDescrip: "ตอนบนของประเทศไทย",
              colorRegion: Colors.green[800],
              imgRegion: "assets/img3.png",
              pressRegion: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: categoryRegion(
              textRegion: "ภาคกลาง",
              textDescrip: "ตอนบนของประเทศไทย",
              colorRegion: Colors.red[900],
              imgRegion: "assets/img5.png",
              pressRegion: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8, 8, 100),
            child: categoryRegion(
              textRegion: "ภาคใต้",
              textDescrip: "ตอนบนของประเทศไทย",
              colorRegion: Colors.yellow[800],
              imgRegion: "assets/img6.png",
              pressRegion: () {},
            ),
          ),
        ],
      ),
    );
  }
}
