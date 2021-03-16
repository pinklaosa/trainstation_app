import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:trainstation_app/api/eventsModel.dart';
import 'package:trainstation_app/screen/mainmenu/subscreen/eventsDetail.dart';

String test;

class eventsRecommend extends StatefulWidget {
  @override
  _eventsRecommendState createState() => _eventsRecommendState();
}

class _eventsRecommendState extends State<eventsRecommend> {
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

  int index;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          recomendAttraction(
            img: eventsFromApi.result[0].thumbnailUrl,
            title: eventsFromApi.result[0].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 0;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[45].thumbnailUrl,
            title: eventsFromApi.result[45].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 45;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[1].thumbnailUrl,
            title: eventsFromApi.result[1].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 1;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[49].thumbnailUrl,
            title: eventsFromApi.result[49].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 49;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[35].thumbnailUrl,
            title: eventsFromApi.result[35].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 35;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[25].thumbnailUrl,
            title: eventsFromApi.result[25].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 25;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[48].thumbnailUrl,
            title: eventsFromApi.result[48].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 48;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[47].thumbnailUrl,
            title: eventsFromApi.result[47].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 47;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[46].thumbnailUrl,
            title: eventsFromApi.result[46].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 46;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
          recomendAttraction(
            img: eventsFromApi.result[44].thumbnailUrl,
            title: eventsFromApi.result[44].location,
            city: "เพิ่มเติม คลิก",
            press: () {
              index = 44;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => eventsDetail(index)));
            },
          ),
        ],
      ),
    );
  }
}

// class recomendedAttraction extends StatelessWidget {
//   const recomendedAttraction({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: [
//           recomendAttraction(
//             img: "assets/img1.jpg",
//             title: test,
//             city: "Samutprakan",
//             press: () {},
//           ),
//           recomendAttraction(
//             img: "assets/img1.jpg",
//             title: "Moon",
//             city: "Samutprakan",
//             press: () {},
//           ),
//           recomendAttraction(
//             img: "assets/img1.jpg",
//             title: "Moon",
//             city: "Samutprakan",
//             press: () {},
//           ),
//           recomendAttraction(
//             img: "assets/img1.jpg",
//             title: "Moon",
//             city: "Samutprakan",
//             press: () {},
//           ),
//           recomendAttraction(
//             img: "assets/img1.jpg",
//             title: "Moon",
//             city: "Samutprakan",
//             press: () {},
//           ),
//         ],
//       ),
//     );
//   }
// }

class recomendAttraction extends StatelessWidget {
  const recomendAttraction({
    Key key,
    this.img,
    this.title,
    this.city,
    this.press,
  }) : super(key: key);

  final String img, title, city;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: 24 / 2,
        top: 36 / 2,
        bottom: 36,
        right: 12,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.network(img),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(36 / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: Colors.indigo[700].withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$title\n",
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$city",
                          style: TextStyle(
                            color: Colors.indigo[300].withOpacity(0.5),
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
