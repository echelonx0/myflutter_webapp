import 'package:flutter/material.dart';

class PlaceholderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 450,
      color: Colors.blue,
      child: Column(
        children: <Widget>[
          Expanded(
child: Row(
  children: <Widget>[
    Text(" \" ", style: TextStyle(fontSize: 45, color: Colors.white),),
    Flexible(

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("First class service. Fabulous deliverables, incredible speed. I recommend codecoda without a second thought", style:
          TextStyle(color: Colors.white, fontSize: 18),),
      ),
    )
  ],
),

          )
        ],
      ),

    );
  }
}
