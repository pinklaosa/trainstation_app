import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/cityModel.dart';
import 'package:trainstation_app/screen/mainmenu/subscreen/attractionSelected.dart';

CityFromApi cityFromApi;
var cities = new List(77);

class attractionSearch extends StatefulWidget {
  @override
  _attractionSearchState createState() => _attractionSearchState();
}

class _attractionSearchState extends State<attractionSearch> {
  String apiUrl =
      'https://opend.data.go.th/govspending/bbgfmisprovince?api-key=kMAmZXGRGdgtTRPKb0aCCsgIeuNBO6Mj';

  @override
  void initState() {
    super.initState();
    print('init state');
    getData();
  }

  Future<void> getData() async {
    print('get data');
    var response = await http.get(apiUrl);
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
      appBar: AppBar(
        title: Text("เลือกจังหวัด"),
      ),
      body: ListView.builder(
        itemCount: cities.length,
        itemBuilder: (context, index) {
          return listCities(index);
        },
      ),
    );
  }

  ListTile listCities(int index) {
    return ListTile(
      title: Text(cities[index]),
      leading: Icon(Icons.location_on),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => attractionSelected(
                    "https://tatapi.tourismthailand.org/tatapi/v5/places/search?categorycodes=ATTRACTION&destination=" +
                        cities[index])));
      },
    );
  }
}
