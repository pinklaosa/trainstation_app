import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/eventsModel.dart';
import 'package:trainstation_app/screen/mainmenu/subscreen/eventsDetail.dart';

class categoryLocation extends StatefulWidget {
  @override
  _categoryLocationState createState() => _categoryLocationState();
}

class _categoryLocationState extends State<categoryLocation> {
  String apiUrl =
      "https://tatapi.tourismthailand.org/tatapi/v5/events?numberOfResult=50";
  @override
  void initState() {
    super.initState();
    print('init state');
    getData();
  }

  String date;
  EventsFromApi eventsFromApi;
  DateTime timeStart = DateTime.now();
  DateTime timeEnd = DateTime.now();
  var dateTimeStart = List(50);
  var dateTimeEnd = List(50);
  int lengthData;
  Future<void> getData() async {
    print('get data');
    var response = await http.get(apiUrl, headers: {
      "Content-Type": "text/json",
      "Authorization":
          "Bearer GEB8uSK07hqDuOUkcxBlQCL2mtamGR6EKexjGe4ox9hZOKTK6mZGBh0MpTX2MD(F7rIm(su0ejtnUSZEmcGuuvG=====2",
      "Accept-Language": "TH",
    });
    print(response.body);
    setState(() {
      eventsFromApi = eventsFromApiFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[100],
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: Text('กิจกรรมที่กำลังจะจัดขึ้น'),
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
      body: eventsDataApi(),
    );
  }

  ListView eventsDataApi() {
    return ListView.builder(
      itemCount: eventsFromApi.result.length,
      itemBuilder: (context, index) {
        return FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => eventsDetail(index)));
          },
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: AspectRatio(
                  aspectRatio: 1.75,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    decoration: BoxDecoration(
                      color: Colors.indigo[200],
                      borderRadius: BorderRadius.circular(10 * 1.8),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: eventsFromApi.result[index].thumbnailUrl != ""
                              ? Image.network(
                                  eventsFromApi.result[index].thumbnailUrl)
                              : Center(child: Text("No Image")),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                eventsFromApi.result[index].eventName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(eventsFromApi
                                        .result[index].displayEventPeriodDate),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                        "จังหวัด : ${eventsFromApi.result[index].location}"),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
      padding: EdgeInsets.only(bottom: 100),
    );
  }
}
