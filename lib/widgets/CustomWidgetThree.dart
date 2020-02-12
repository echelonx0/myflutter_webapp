import 'package:flutter/material.dart';

class CustomWidgetThree extends StatelessWidget {
  final String title;
  final String content;
  final icon;

  CustomWidgetThree({this.title, this.content, this.icon});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 250),
      child: Container(
        width: 250,
        height: 250,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Align(alignment: Alignment.topLeft, child: Icon(icon, color: Colors.blue, size: 35,)),
            SizedBox(width: 20,),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20,),
                    Text(
                      content,
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                          color: Colors.white),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
