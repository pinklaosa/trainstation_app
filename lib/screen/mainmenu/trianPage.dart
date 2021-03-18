import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/trainstationModel.dart';
import 'package:trainstation_app/screen/mainmenu/subscreen/hereStay.dart';

class trainPage extends StatefulWidget {
  @override
  _trainPageState createState() => _trainPageState();
}

class _trainPageState extends State<trainPage> {
  String apiUrl =
      "https://opend.data.go.th/opend-search/vir_7617_1599551966/query?dsname=vir_7617_1599551966&path=vir_7617_1599551966&property=col_12&operator=S_EQUALS&valueLiteral=TRUE&loadAll=1&type=json&limit=100&offset=0&api-key=kMAmZXGRGdgtTRPKb0aCCsgIeuNBO6Mj";

  @override
  void initState() {
    super.initState();
    print('init state');
    getplace();
  }

  int lengthData;
  TrainstationModel trainstationFormApi;
  Future<void> getplace() async {
    print('get data');

    var response = await http.get(apiUrl, headers: {
      "api-key": "kMAmZXGRGdgtTRPKb0aCCsgIeuNBO6Mj",
    });
    // print(response.body);
    setState(() {
      trainstationFormApi = trainstationModelFromJson(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      // appBar: AppBar(
      //   toolbarHeight: 100,
      //   title: Text('สถานนีรถไฟ'),
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.map,
      //         color: Colors.white,
      //       ),
      //     )
      //   ],
      // ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 20.0,
              bottom: 20,
            ),
            child: Text(
              "ตัวเลือก",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.indigo[700],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 15,
              ),
              Expanded(
                child: FlatButton(
                  padding: EdgeInsets.only(
                    right: 0,
                    left: 0,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => hereStay()));
                  },
                  child: Container(
                    height: 150,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.indigo[500],
                      borderRadius: BorderRadius.circular(10 * 1.8),
                    ),
                    child: Center(
                      child: Text(
                        "จองตั๋วรถไฟ",
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Container(
                  height: 150,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red[400],
                    borderRadius: BorderRadius.circular(10 * 1.8),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "ขบวนรถไฟ",
            style: TextStyle(
              fontSize: 24,
              color: Colors.indigo[700],
            ),
            textAlign: TextAlign.center,
          ),
          Divider(
            color: Colors.indigo[300],
            height: 30,
          ),
          Container(
            height: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10 * 1.8),
            ),
            child: ListView.builder(
              itemCount: trainstationFormApi.data.length.toInt(),
              itemBuilder: (context, index) {
                return Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          height: 120,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        trainstationFormApi.data[index].stStart,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.start,
                                      ),
                                      Text(
                                        trainstationFormApi
                                            .data[index].nameStEng,
                                        style: TextStyle(
                                          color: Colors.black45,
                                          fontSize: 13,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Icon(
                                    Icons.navigate_next,
                                    size: 30,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Text(
                                        trainstationFormApi.data[index].stFinal,
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        trainstationFormApi
                                            .data[index].nameStEngL,
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * 1.8),
                              color: Colors.indigo[100],
                              border: Border.all(
                                color: Colors.black12,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
