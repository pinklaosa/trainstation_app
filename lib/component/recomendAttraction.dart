import 'package:flutter/material.dart';

class recomendedAttraction extends StatelessWidget {
  const recomendedAttraction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          recomendAttraction(
            img: "assets/img1.jpg",
            title: "Moon",
            city: "Samutprakan",
            press: () {},
          ),
          recomendAttraction(
            img: "assets/img1.jpg",
            title: "Moon",
            city: "Samutprakan",
            press: () {},
          ),
          recomendAttraction(
            img: "assets/img1.jpg",
            title: "Moon",
            city: "Samutprakan",
            press: () {},
          ),
        ],
      ),
    );
  }
}

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
        left: 36,
        top: 36 / 2,
        bottom: 36 * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(img),
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
