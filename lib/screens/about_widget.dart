import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/constants.dart';
import 'package:myflutter_webapp/widgets/centered_view.dart';

class AboutWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    var descriptionOne =
        "Excellency is achieved by supporting our customers in their technical ventures from the very beginning, throughout the planning phase, and way beyond technical implementation.";
    var descriptionTwo =
        "We work in a range of high tech industries such as AI, banking, ecommerce, gaming, gambling, fintech, media and risk. Our experts are here to provide their expertise to your projects.";
    var descriptionThree =
        "All time spent on execution of tasks or writing code are completely transparent. We get payed only for the hours we work on your project. Visibility on all processes managed by us is guaranteed.";
    var descriptionFour =
        "CodeCoda is scalable. We scale on demand and based on our customers' needs, so are our software solutions and other propositions. simply Scalable!";
    var descriptionfive =
        " CodeCoda is a software development service company with 150+ highly skilled software engineers onboard that power innovative technology businesses. Since 2015 CodeCoda has formed lasting partnerships with global industry leaders and over 300 other medium and large-scale enterprises. With delivery centres in Bulgaria and Ireland we stand for advanced software engineering and provide extensive expertise in a range of high-tech verticals including finance, banking, healthcare, hospitality, gaming, gambling and content management. At the core we are helping our clients to innovate and implement technology transformations. Typically we work with startups, small to medium size companies and Fortune 500 enterprises to provide first class custom software development and R&D services. We engage in all sizes of projects, spanning from several months to long term software development projects, lasting years. We scale fast. Typically within 15 to 30 days of contract acceptance we have the highly skilled teams assembled to work on your project. ";



    return Container(
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
      ),
      child: CenteredView(
        child: Row(
          children: <Widget>[
            Container(
              width: 800,
              //  color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25, 10, 0, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: 'Who ',
                        style: kRichTextStyleThree,
                        children: <TextSpan>[
                          TextSpan(
                              text: 'We Are',
                              style: kRichTextStyleOne),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'CodeCoda is your ',
                        style: TextStyle(
                            color: Colors.grey, fontSize: 16),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Advanced Software Engineering',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'OpenSans',
                                  fontSize: 16,
                                  color: Colors.black)),
                          TextSpan(
                              text: ' partner located in Europe.'),
                        ],
                      ),
                    ),
                    Text(
                      descriptionfive,
                      style: kRichTextStyleTwo,
                    ),
                    GestureDetector(
                      child: Row(
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text("View More"),
                          Icon(
                            Icons.arrow_right,
                            size: 45,
                          ),
                        ],
                      ),
                      onTap: () {},
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 45,
            ),
            Container(
              height: 300,
              width: 350,
              color: Colors.blue,
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.format_quote,
                    size: 45,
                    color: Colors.white,
                  ),
                  Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          " I personally guarantee our customers full satisfaction. No if or but. We deliver! Dr. Andreas Maier, CEO",
                          style: TextStyle(color: Colors.white),
                        ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
