import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/constants.dart';
//import '../secondPage.dart';

class InfoColumn extends StatelessWidget {
  InfoColumn({this.title, this.description, this.icon, this.bgColor});

  final String title;
  final description;
  final icon;
  final bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.all(Radius.circular(10)),
        color: bgColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 35,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontFamily: 'OpenSansBold',
                fontSize: 12,
                color: Colors.white,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              description,
              style: kInfoColumnTextStyle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
