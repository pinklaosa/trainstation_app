import 'package:flutter/material.dart';

class recomendPlace extends StatefulWidget {
  @override
  _recomendPlaceState createState() => _recomendPlaceState();
}

class _recomendPlaceState extends State<recomendPlace> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          attractionRecomend(
            img:
                "https://i2.wp.com/travelblog.expedia.co.th/wp-content/uploads/2017/02/cover-island.jpg?resize=1140%2C550&ssl=1",
          ),
          attractionRecomend(
            img:
                "https://obs.line-scdn.net/0hDhbb-rdJG0dfGzEYUPFkEGVNGChsdwhEOy1KRAN1RXMgKVUQYC4BKXwcQyd6IlwZMXVSI3kYAHZ6LVkSay0B/w644",
          ),
          attractionRecomend(
            img:
                "https://i2.wp.com/www.agoda.com/wp-content/uploads/2019/10/Wat-Pho-temples-in-Bangkok-Thailand.jpg?ssl=1",
          ),
          attractionRecomend(
            img:
                "https://ed.edtfiles-media.com/ud/book/content/1/154/459335/Kiew_Kai_Ka.jpg",
          ),
          attractionRecomend(
            img:
                "https://pix10.agoda.net/hotelImages/408101/-1/7abff0dedbd2fcaae19e230e43715eb2.jpg",
          ),
        ],
      ),
    );
  }
}

class attractionRecomend extends StatelessWidget {
  const attractionRecomend({
    Key key,
    this.img,
  }) : super(key: key);

  final String img;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 30 / 2,
        top: 20,
        bottom: 100,
        right: 30,
      ),
      width: 250,
      height: 185,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(img),
        ),
      ),
    );
  }
}
