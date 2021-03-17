import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/attractionModel.dart';

class placeDetail extends StatefulWidget {
  String placeIndex;
  placeDetail(this.placeIndex);
  @override
  _placeDetailState createState() => _placeDetailState(placeIndex);
}

class _placeDetailState extends State<placeDetail> {
  String apiUrl;
  _placeDetailState(this.apiUrl);

  @override
  void initState() {
    super.initState();
    print('init state');
    getData();
  }

  int check;
  AttractionModel attractionFromApi;
  Future<void> getData() async {
    //print('get data');
    var response = await http.get(apiUrl, headers: {
      "Content-Type": "text/json",
      "Authorization":
          "Bearer GEB8uSK07hqDuOUkcxBlQCL2mtamGR6EKexjGe4ox9hZOKTK6mZGBh0MpTX2MD(F7rIm(su0ejtnUSZEmcGuuvG=====2",
      "Accept-Language": "TH",
    });
    if (response.body == null) {
      setState(() {
        check = 0;
      });
    } else if (response.body != null) {
      setState(() {
        attractionFromApi = attractionModelFromJson(response.body);
        check = 1;
      });
    }
    //print(response.body);
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
            child: check == 1
                ? Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 30, 30, 20),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: [
                                Text(
                                  attractionFromApi.result.placeName,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.indigo[900],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "จังหวัด ${attractionFromApi.result.destination}",
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
                        child: attractionFromApi.result.thumbnailUrl == ""
                            ? Center(child: Text("No Image"))
                            : Image.network(
                                attractionFromApi.result.thumbnailUrl),
                      ),
                      dividerNews(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                        child: Text(
                            "\t\t\t\t\t\t\t\t${attractionFromApi.result.placeInformation.detail} "),
                      ),
                    ],
                  )
                : Center(
                    child: Text(
                    "ไม่พบข้อมูล",
                    style: TextStyle(
                      fontSize: 26,
                    ),
                  )),
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
