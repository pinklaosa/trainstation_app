import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/placeModel.dart';
import 'package:trainstation_app/screen/mainmenu/subscreen/attractionDetail.dart';

import 'package:trainstation_app/screen/mainmenu/subscreen/attractionSearch.dart';

var cities = new List(77);

class attractionSelected extends StatefulWidget {
  var apiAttractionWithCity;
  attractionSelected(this.apiAttractionWithCity);
  @override
  _attractionSelectedState createState() =>
      _attractionSelectedState(apiAttractionWithCity);
}

class _attractionSelectedState extends State<attractionSelected> {
  var apiUrl;
  _attractionSelectedState(this.apiUrl);

  @override
  void initState() {
    super.initState();
    print('init state');

    getplace();
  }

  int lengthData;
  PlaceFromApi placeFromApi;

  Future<void> getplace() async {
    print('get data');

    var response = await http.get(apiUrl, headers: {
      "Authorization":
          "Bearer GEB8uSK07hqDuOUkcxBlQCL2mtamGR6EKexjGe4ox9hZOKTK6mZGBh0MpTX2MD(F7rIm(su0ejtnUSZEmcGuuvG=====2",
      "Accept-Language": "TH",
    });
    // print(response.body);
    setState(() {
      placeFromApi = placeFromApiFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 100,
        title: Text('สถานที่ท่องเที่ยว'),
      ),
      body: placeDataApi(),
    );
  }

  ListView placeDataApi() {
    return ListView.builder(
      itemCount: placeFromApi.result.length.toInt(),
      itemBuilder: (context, index) {
        return FlatButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => placeDetail(
                        "https://tatapi.tourismthailand.org/tatapi/v5/attraction/" +
                            placeFromApi.result[index].placeId)));
          },
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: AspectRatio(
                  aspectRatio: 2.1,
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    decoration: BoxDecoration(
                      color: Colors.indigo[100],
                      borderRadius: BorderRadius.circular(10 * 1.8),
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: placeFromApi.result[index].thumbnailUrl != ""
                              ? Image.network(
                                  placeFromApi.result[index].thumbnailUrl)
                              : Center(child: Text("No Image")),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                placeFromApi.result[index].placeName,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Text(
                                        "จังหวัด : ${placeFromApi.result[index].location.province}"),
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
