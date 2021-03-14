import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/eventsModel.dart';
import 'package:trainstation_app/component/categoryRegion.dart';
import 'package:dio/dio.dart';

class categoryLocation extends StatefulWidget {
  @override
  _categoryLocationState createState() => _categoryLocationState();
}

class _categoryLocationState extends State<categoryLocation> {
  String apiUrl =
      "https://tatapi.tourismthailand.org/tatapi/v5/events?numberOfResult=10";

  @override
  void initState() {
    super.initState();
    print('init state');
    getData();
  }

  EventsFromApi eventsFromApi;
  Future<void> getData() async {
    print('get data');
    var response = await http.get(apiUrl, headers: {
      "Content-Type": "text/json",
      "Authorization":
          "Bearer GEB8uSK07hqDuOUkcxBlQCL2mtamGR6EKexjGe4ox9hZOKTK6mZGBh0MpTX2MD(F7rIm(su0ejtnUSZEmcGuuvG=====2",
      "Accept-Language": "TH",
    });
    print(response.body);
    print(response.body.runtimeType);
    print(eventsFromApiFromJson(response.body));
    setState(() {
      eventsFromApi = eventsFromApiFromJson(response.body);
    });
    print(eventsFromApi?.result[0].eventName.length);
  }

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
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: regions(),
    );
  }
}

ListView regions() {
  return ListView(
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
  );
}
