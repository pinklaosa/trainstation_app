import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/trainstationStartCityModel.dart';

class hereStay extends StatefulWidget {
  @override
  _hereStayState createState() => _hereStayState();
}

class _hereStayState extends State<hereStay> {
  String apiUrl =
      "https://opend.data.go.th/opend-search/vir_7617_1599551966/agg?dsname=vir_7617_1599551966&path=vir_7617_1599551966&groupby=col_10&groupby=col_6&property=col_12&operator=CONTAINS&valueLiteral=TRUE&loadAll=1&type=json&limit=100&offset=0";

  @override
  void initState() {
    super.initState();
    print('init state');
    getplace();
  }

  TrainstationCityEngModel trainstationCityFormApi;
  Future<void> getplace() async {
    print('get data');

    var response = await http.get(apiUrl, headers: {
      "api-key": "kMAmZXGRGdgtTRPKb0aCCsgIeuNBO6Mj",
    });
    // print(response.body);
    setState(() {
      trainstationCityFormApi = trainstationCityEngModelFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("เลือกต้นสาย"),
      ),
      body: ListView.builder(
        itemCount: trainstationCityFormApi.data.length.toInt(),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              trainstationCityFormApi.data[index].nameStEng,
            ),
            leading: Icon(
              Icons.location_city,
            ),
          );
        },
      ),
    );
  }
}
