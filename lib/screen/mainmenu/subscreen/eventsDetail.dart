import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/eventsModel.dart';

class eventsDetail extends StatefulWidget {
  var eventsIndex;
  eventsDetail(this.eventsIndex);
  @override
  _eventsDetailState createState() => _eventsDetailState(eventsIndex);
}

class _eventsDetailState extends State<eventsDetail> {
  var eventsIndex;
  _eventsDetailState(this.eventsIndex);
  String apiUrl =
      "https://tatapi.tourismthailand.org/tatapi/v5/events?numberOfResult=50";
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
    setState(() {
      eventsFromApi = eventsFromApiFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.indigo[700],
            expandedHeight: 200,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "ข้อมูลเพิ่มเติม",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.network(
                "http://p3.isanook.com/tr/0/ud/278/1391299/gallery-108-05.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 30, 30, 20),
                  child: Column(
                    children: <Widget>[
                      Text(
                        eventsFromApi.result[eventsIndex].eventName,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo[900],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "\nวันที่ ${eventsFromApi.result[eventsIndex].displayEventPeriodDate}",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.indigo[300],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                dividerNews(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: eventsFromApi.result[eventsIndex].thumbnailUrl == ""
                      ? Center(child: Text("No Image"))
                      : Image.network(
                          eventsFromApi.result[eventsIndex].thumbnailUrl),
                ),
                dividerNews(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                  child: Text(
                      "\t\t\t\t\t\t\t\t${eventsFromApi.result[eventsIndex].eventName} ${eventsFromApi.result[eventsIndex].eventIntroduction} จะถูกจัดขึ้นวันที่ ${eventsFromApi.result[eventsIndex].displayEventPeriodDate}"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Padding dividerNews() {
    return Padding(
      padding: const EdgeInsets.only(
        right: 30,
        left: 30,
      ),
      child: Divider(
        color: Colors.indigo[700],
        height: 10,
      ),
    );
  }
}
