import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/constants.dart';

class CircleImageWidget extends StatelessWidget {
  final image;
  final label;
  CircleImageWidget({this.image, this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 190.0,
                height: 190.0,
                decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    image:  DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            image)
                    )
                )),
            Text(label,
                textScaleFactor: 1.5, style: kBlueItalicsTextStyle,)
          ],
        ));
  }
}
