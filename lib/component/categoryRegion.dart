import 'package:flutter/material.dart';

class categoryRegion extends StatelessWidget {
  const categoryRegion({
    Key key,
    this.textRegion,
    this.textDescrip,
    this.colorRegion,
    this.pressRegion,
    this.imgRegion,
  }) : super(key: key);
  final String textRegion;
  final String textDescrip;
  final String imgRegion;
  final Color colorRegion;
  final Function pressRegion;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.65,
      child: Container(
        padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
        decoration: BoxDecoration(
          color: colorRegion,
          borderRadius: BorderRadius.circular(10 * 1.8),
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Column(
                  children: <Widget>[
                    Text(
                      textRegion,
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      textDescrip,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            AspectRatio(
                aspectRatio: 0.71,
                child: Image.asset(
                  imgRegion,
                )),
          ],
        ),
      ),
    );
  }
}
