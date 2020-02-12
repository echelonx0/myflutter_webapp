import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/hover_extensions.dart';


class HoverWidget extends StatelessWidget {
  final String title;
  final String content;

  HoverWidget({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 200,
        height: 250,
        child: Card(
          color: Colors.grey.withOpacity(0.1),
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(title, style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18), textAlign: TextAlign.left,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(content, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200, color: Colors.grey), textAlign: TextAlign.left,),
                )
              ],
            ),
          ),
        ),
      ),
    ).moveUpOnHover;
  }
}

//import 'dart:html' as html;
//extension HoverExtensions on Widget {
//  // Get a regerence to the body of the view
//  static final appContainer =
//  html.window.document.getElementById('app-container');
//  Widget get showCursorOnHover {
//    return MouseRegion(
//      child: this,
//      // When the mouse enters the widget set the cursor to pointer
//      onHover: (event) {
//        appContainer.style.cursor = 'pointer';
//      },
//      // When it exits set it back to default
//      onExit: (event) {
//        appContainer.style.cursor = 'default';
//      },
//    );
//  }
//}