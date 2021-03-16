import 'package:flutter/material.dart';
import 'package:trainstation_app/component/headerHome.dart';
import 'package:trainstation_app/component/titleWithMore.dart';
import 'package:trainstation_app/component/recomendEvents.dart';
import 'package:trainstation_app/screen/mainmenu/subscreen/eventReacomend.dart';
import 'package:trainstation_app/component/recomendPlace.dart';
import 'package:trainstation_app/screen/mainmenu/attractionPage.dart';

class bodyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          headerWithAccount(size: size),
          titleWithMore(
            title: "กิจกรรมที่กำลังจะจัดขึ้น",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => categoryLocation()));
            },
          ),
          eventsRecommend(),
          titleWithMore(
            title: "เที่ยวไหนดี",
            press: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => attractionPage()));
            },
          ),
          recomendPlace(),
        ],
      ),
    );
  }
}
