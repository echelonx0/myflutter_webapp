import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutter_webapp/utilities/constants.dart';
import 'package:myflutter_webapp/widgets/CustomWidgetThree.dart';

class ServicesWidget extends StatefulWidget {
  @override
  _ServicesWidgetState createState() => _ServicesWidgetState();
}

class _ServicesWidgetState extends State<ServicesWidget> {

  double topOne = 0;
  double topTwo = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height + 300,
            foregroundDecoration: BoxDecoration(
              color: Colors.black.withOpacity(0.8),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
                image: DecorationImage(
                  image: AssetImage("assets/imgs/banner3.jpg"),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 20, 80, 0),
            child: ListView(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text: 'Services ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSansBold',
                            color: Colors.white, fontSize: 25),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Provided/',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'OpenSans',
                                  color: Colors.white, fontSize: 25)),
                        ],
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Industries ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'OpenSansBold',
                            color: Colors.white, fontSize: 25),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'We Serve',
                              style: TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'OpenSans',
                                  color: Colors.white, fontSize: 25)),
                        ],
                      ),
                    ),
                  ],
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1200),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: CustomWidgetThree(
                              icon: Icons.person_add,
                              title: "Artificial Intelligence / ML",
                              content:
                              "Our specialists can support your AI engine with Supervised, Unsupervised and Reinforcement Learning models. We plan, build and deploy working Machine Learning packages which will meet your business needs.")),
                      Expanded(
                          child: CustomWidgetThree(
                              icon: FontAwesomeIcons.bitcoin,
                              title: "Blockchain",
                              content:
                              "UI/UX designers create stunning and intuitive user interfaces, ensuring that your product looks beautiful and trendy and provides a personalized customer experience.")),
                      Expanded(
                          child: CustomWidgetThree(
                              icon: Icons.folder_shared,
                              title: "Ecommerce",
                              content:
                              "Keeping operations lightweight and running your eCommerce platforms customer-centric is key in a competing world of online merchants. Our specialists build platforms that integrate into your workflow. They can also connect you to trading platforms such as Amazon." ))
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1200),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: CustomWidgetThree(
                              icon: Icons.search,
                              title: "Gaming and Gambling",
                              content:
                              "Building certified solutions for the gaming and gambling industry. From content platforms to Random Numbers Generators, our experts can help in a variety of ways to build compelling products which ensure consumer interaction and steady revenue flows for our customers." )),
                      Expanded(
                          child: CustomWidgetThree(
                            icon: FontAwesomeIcons.calculator,
                            title: "High Availability Solutions",
                            content:
                            "We build high load and availability architectures, powered by the most efficient technologies available. Technological Stacks include e.g. Java, Python, GoLang, NodeJS, React, Cassandra and MongoDB.",
                          )),
                      Expanded(
                          child: CustomWidgetThree(
                              icon: FontAwesomeIcons.pennyArcade,
                              title: "Content Management / Web Apps",
                              content:
                              "Whether it's custom web design for your corporate presence, releasing a complicated web site for sports events, or an online wallet for your banking service, our web experts will analyze, mock, design, build, test and deploy it. Targeting 100 users or a million, we have the tech." ))
                    ],
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1200),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: CustomWidgetThree(
                              icon: Icons.mouse,
                              title: "Fintech/Banking",
                              content:
                              "Building innovative products in the Banking and Fintech industry is a speciality we are proud of. We help to build complicated and interoperable services that integrate into your corporate legacy infrastructure, adding value to your bank or Fintech operation.")),
                      Expanded(
                          child: CustomWidgetThree(
                            icon: Icons.screen_lock_landscape,
                            title: "Mobile Applications",
                            content:
                            "CodeCoda provides outsourced mobile development specialists. From mobile games to communication apps, highly skilled UI/UX designers and technicians integrate and deploy your custom application to iOS and Android App Stores.",
                          )),
                      Expanded(
                          child: CustomWidgetThree(
                            icon: Icons.star,
                            title: "Media Services",
                            content:
                            "We serve industry clients in the Print, Publishing and other IT related industries like eCommerce by providing end-to-end media services, ranging from image post processing, clipping, masking to content provisioning and copywriting.",
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              text: 'These are some of our ',
                              style: kRichTextStyleAlpha,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'services',
                                    style: kRichTextStyleBeta),
                              ],
                            ),
                          ),

                          RichText(
                            text: TextSpan(
                              text: 'Learn more about our ',
                              style: kRichText2,
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'expertise!',
                                    style: kRichText2),
                              ],
                            ),
                          ),
                        ],
                      ),
                      RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          "All Services",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w200),
                        ),
                        onPressed: () {
                          print("I was pressed. Give me a job!");
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],

      ),
    );
  }
}
