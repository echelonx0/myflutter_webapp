import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/constants.dart';
import 'package:myflutter_webapp/widgets/hover_responsive_widget.dart';

class TechExpertise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: RichText(
              text: TextSpan(
                text: 'Our ',
                style: kRichTextStyleThree,
                children: <TextSpan>[
                  TextSpan(
                      text: 'Tech Expertise',
                      style: kRichTextStyleOne),
                ],
              ),
            ),
          ),
          ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: HoverWidget(
                  title: "Progressive Web Applications",
                  content:
                      "CodeCoda builds Progressive Web Applications, offering next generation, ultra fast, offline available, content driven applications. We engage this technology where speed is critical, or offline capabilities matter.",
                )),
                Expanded(
                    child: HoverWidget(
                        title: "UI/UX",
                        content:
                            "UI/UX designers create stunning and intuitive user interfaces, ensuring that your product looks beautiful and trendy and provides a personalized customer experience.")),
                Expanded(
                    child: HoverWidget(
                  title: "Big Data",
                  content:
                      "We deal with data of any size, velocity and variety helping organizations drive tangible business benefits. We use big data analytics and work with a number of technologies including Hadoop, Spark, Hive, Pig and others.",
                ))
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: HoverWidget(
                      title: "Digital Transformation",
                      content:
                      "Diverse technological expertise and experience across a multitude of industries allows us to implement digital transformations from A to Z. We help your organization to digitally innovate.",
                    )),
                Expanded(
                    child: HoverWidget(
                      title: "High Availability Solutions",
                      content:
                      "We build high load and availability architectures, powered by the most efficient technologies available. Technological Stacks include e.g. Java, Python, GoLang, NodeJS, React, Cassandra and MongoDB.",
                    )),
                Expanded(
                    child: HoverWidget(
                      title: "Blockchain",
                      content:
                      "We develop Blockchain Applications, ranging from Smart Contracts to self sustained cryptocurrencies. CodeCoda also provides consultation and operational support to our clients.",
                    ))
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1200),
            child: Row(
              children: <Widget>[
                Expanded(
                    child: HoverWidget(
                  title: "Machine Learning & AI",
                  content:
                      "We develop Deep Learning and Self learning Neural Networks which allow your business to make use of intelligence that never rests. Integration into existing business processes becomes reality.",
                )),
                Expanded(
                    child: HoverWidget(
                  title: "Data Science",
                  content:
                      "We create analytical solutions for businesses which allows you to dive deep into competitive intelligence. We apply the latest knowledge in data collection, processing and process adoption.",
                )),
                Expanded(
                    child: HoverWidget(
                  title: "Business intelligence",
                  content:
                      "We develop scalable solutions that your business can manage easily and effectively. We use a broad library of Business Intelligence Tools, which can cover all business aspects.",
                ))
              ],
            ),
          ),

          RaisedButton(
            color: Colors.blueAccent,
            child: Text("More Tech Expertise...", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
            onPressed: (){
              print("I was pressed. Give me a job!");
            },
          )
        ],
      ),
    );
  }
}
