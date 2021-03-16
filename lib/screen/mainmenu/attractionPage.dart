import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/placeModel.dart';
import 'package:trainstation_app/screen/mainmenu/subscreen/attractionDetail.dart';
import 'package:trainstation_app/api/cityModel.dart';

var cities = new List(77);

class attractionPage extends StatefulWidget {
  @override
  _attractionPageState createState() => _attractionPageState();
}

class _attractionPageState extends State<attractionPage> {
  String apiUrl =
      "https://tatapi.tourismthailand.org/tatapi/v5/places/search?numberofresult=50&categorycodes=ALL";
  String apiUrlCities =
      "https://opend.data.go.th/govspending/bbgfmisprovince?api-key=kMAmZXGRGdgtTRPKb0aCCsgIeuNBO6Mj";
  @override
  void initState() {
    super.initState();
    print('init state');
    getplace();
    getCities();
  }

  int lengthData;
  PlaceFromApi placeFromApi;
  CityFromApi cityFromApi;
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

  Future<void> getCities() async {
    print('get data');
    var response = await http.get(apiUrlCities, headers: {
      "Authorization":
          "Bearer GEB8uSK07hqDuOUkcxBlQCL2mtamGR6EKexjGe4ox9hZOKTK6mZGBh0MpTX2MD(F7rIm(su0ejtnUSZEmcGuuvG=====2",
      "Accept-Language": "TH",
    });
    // print(response.body);
    setState(() {
      cityFromApi = cityFromApiFromJson(response.body);
    });
    for (var i = 0; i < 77; i++) {
      cities[i] = cityFromApi.result[i].provName;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
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
            onPressed: () {
              showSearch(context: context, delegate: Search());
            },
          ),
        ],
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

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  String selectedResult = "";

  // ตรงนี้จะเป็นส่วนที่เวลากดจังหวัดอะไร แล้วให้ทำงานตามจังหวัดนั้น
  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text(selectedResult),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List suggestionList = cities.where((p) => p.startsWith(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'EkkamaiNew',
                ),
                children: [
                  TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'EkkamaiNew',
                      ))
                ]),
          ),
          leading: query.isEmpty ? Icon(Icons.location_city) : SizedBox(),
          onTap: () {
            selectedResult = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
