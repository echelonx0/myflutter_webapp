import 'package:flutter/material.dart';
import 'package:myflutter_webapp/widgets/centered_view.dart';
import 'package:myflutter_webapp/widgets/circle_image_widget.dart';

class SectionTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var screenheight = MediaQuery.of(context).size.height;
    var textContentOne =
        'provider with delivery centres in Bulgaria and Ireland and over 150 expert Software Engineers. We partner with technology businesses globally helping them to build successful engineering teams and create innovative software products. We offer offshore, nearshore and bespoke software development services to Small and Medium Size companies and Fortune 500 enterprises';

    const textStyle = TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontWeight: FontWeight.w100, fontFamily: 'OpenSans');

    return Container(
      height: screenheight,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CenteredView(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: 'Advanced ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 35,
                        fontWeight: FontWeight.w200, fontFamily: 'OpenSans'),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Custom Software Development',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'OpenSansBold')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(80, 45, 80, 45),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: "Code Coda is a ",
                      style: textStyle,
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Custom Software Development ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'OpenSansBold', color: Colors.black)),
                        TextSpan(
                            text: textContentOne,
                            style: textStyle),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[],
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              CircleImageWidget(image: 'assets/imgs/top_img_1.jpg', label: "Analysis",),
              CircleImageWidget(image: 'assets/imgs/top_img_2.jpg', label: "Planning",),
              CircleImageWidget(image: 'assets/imgs/top_img_3.jpg', label: "Build"),
              CircleImageWidget(image: 'assets/imgs/top_img_4.jpg', label: "Deploy",),
            ],
          )
        ],
      ),
    );
  }
}
