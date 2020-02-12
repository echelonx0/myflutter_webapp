import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/constants.dart';

class SectionOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      child: Stack(
        children: <Widget>[
          Container(
            width: screenWidth,
            height: screenHeight,
          //  color: Colors.blue.withOpacity(0.5),
            foregroundDecoration: BoxDecoration(color: Colors.blue.withOpacity(0.8)),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage('assets/imgs/bg_image.jpg' ),
                fit: BoxFit.cover
              )
            ),
          ),
          Positioned(
            bottom: 200,
            child: Padding(
              padding: const EdgeInsets.only(left: 150.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      text: 'We are ',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.normal),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Code',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'OpenSans',
                                fontSize: 45,
                                color: Colors.white)),
                        TextSpan(
                            text: 'Coda,',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSansBold',
                                fontSize: 45,
                                color: Colors.white))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(
                        "we",
                        style: kRichTextStyleFive,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      RotateAnimatedTextKit(
                          onTap: () {
                            print("Tap Event");
                          },
                          text: [
                            "Design",
                            "Deploy",
                            "Analyse",
                            "Plan",
                            "Build"
                          ],
                          textStyle: kRichTextStyleFour,
                          textAlign: TextAlign.start,
                          alignment: AlignmentDirectional
                              .topStart // or Alignment.topLeft
                          ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        "complex Software Solutions",
                        style: kRichTextStyleFive,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: screenWidth,
              height: 100,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "The fastest way to build dedicated teams with the leader in ",
                    style: kRichText2,
                  ),
                  Text(
                    "Technology",
                    style: kBlueItalicsTextStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
