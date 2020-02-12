import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutter_webapp/screens/about_widget.dart';
import 'package:myflutter_webapp/screens/footer_main.dart';
import 'package:myflutter_webapp/screens/topmost_widget.dart';
import 'package:myflutter_webapp/screens/section_two_widget.dart';
import 'package:myflutter_webapp/screens/services_widget.dart';
import 'package:myflutter_webapp/screens/tech_expertise.dart';
import 'package:myflutter_webapp/widgets/info_column_widget.dart';
import 'package:myflutter_webapp/widgets/nav_bar.dart';
import 'package:myflutter_webapp/widgets/testimonial_widget.dart';

class MainIndexDetailPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DetailPageState();
  }
}

//This is the main widget of the application UI. Used a custom Scrollview for the tower site.
// The current challenge is how to implement the disappearing appbar. I am reluctant to write a custom solution, but it may be inevitable
// Further, the expanded appbar has to be 100 transparent. Perhaps I should use a stack...

class _DetailPageState extends State<MainIndexDetailPage> {
  List images = [
    'assets/imgs/foot_logo_1.jpg',
    'assets/imgs/foot_logo_2.jpg',
    'assets/imgs/foot_logo_3.jpg',
  ];

  var descriptionOne =
      "Excellency is achieved by supporting our customers in their technical ventures from the very beginning, throughout the planning phase, and way beyond technical implementation.";
  var descriptionTwo =
      "We work in a range of high tech industries such as AI, banking, ecommerce, gaming, gambling, fintech, media and risk. Our experts are here to provide their expertise to your projects.";
  var descriptionThree =
      "All time spent on execution of tasks or writing code are completely transparent. We get payed only for the hours we work on your project. Visibility on all processes managed by us is guaranteed.";
  var descriptionFour =
      "CodeCoda is scalable. We scale on demand and based on our customers' needs, so are our software solutions and other propositions. simply Scalable!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,
            expandedHeight: 150.0,
            //ToDo: fix the BG Color
            backgroundColor: Colors.black,
            iconTheme: IconThemeData(color: Colors.white),
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              stretchModes: <StretchMode>[StretchMode.fadeTitle],
              centerTitle: true,
              background: Padding(
                padding: const EdgeInsets.fromLTRB(160, 20, 60, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              '+44 203 290 9900',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.0),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Icon(
                              Icons.mail,
                              color: Colors.white,
                              size: 15,
                            ),
                            Text(
                              'info@codecoda.com',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 12.0),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          // Considered wrapping this part with a seperate widget for tne icons, but I think that's overkill
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.facebook,
                                color: Colors.white,
                                size: 15,
                              ),
                              onPressed: () {
                                //Add Navigator
                              },
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.twitter,
                                color: Colors.white,
                                size: 15,
                              ),
                              onPressed: () {},
                            ),
                            IconButton(
                              icon: Icon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.white,
                                size: 15,
                              ),
                              onPressed: () {},
                            ),
                            Text(
                              'English',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'OpenSans',
                                  fontSize: 14.0),
                            ),
                          ],
                        ),
                      ],
                    ),
// NavigationBar(),
                  ],
                ),
              ),
              title: NavigationBar(),
              titlePadding: EdgeInsetsDirectional.fromSTEB(250, 0, 150, 0),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SectionOne(),
                SectionTwo(),
                Container(
                    height: MediaQuery.of(context).size.height,
                    child: ServicesWidget()),
                AboutWidget(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: TechExpertise(),
                ),
                Container(
                  height: 450,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          child: InfoColumn(
                        icon: FontAwesomeIcons.heart,
                        title: "Customer Support",
                        description: descriptionOne,
                        bgColor: Color(0XFF0f4c75),
                      )),
                      Expanded(
                          child: InfoColumn(
                        icon: FontAwesomeIcons.umbrella,
                        title: "Technical Expertise",
                        description: descriptionTwo,
                        bgColor: Color(0XFF3282b8),
                      )),
                      Expanded(
                          child: InfoColumn(
                        icon: FontAwesomeIcons.eye,
                        title: "Visibility",
                        description: descriptionThree,
                        bgColor: Color(0XFF4f98ca),
                      )),
                      Expanded(
                          child: InfoColumn(
                        icon: FontAwesomeIcons.expand,
                        title: "Scalability",
                        description: descriptionFour,
                        bgColor: Colors.blue.withOpacity(0.7),
                      )),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assets/imgs/map.jpg"),
                    fit: BoxFit.cover,
                  )),
                  height: 300,
                  child: Column(children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'We Speak ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Hundreds of Languages',
                                style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontFamily: 'OpenSans',
                                    fontSize: 25,
                                    color: Colors.black)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: SizedBox(
                        height: 200.0,
                        width: 200.0,
                        child: Carousel(
                          showIndicator: false,
                          borderRadius: false,
                          moveIndicatorFromBottom: 180.0,
                          noRadiusForIndicator: true,
                          overlayShadow: true,
                          overlayShadowColors: Colors.white,
                          overlayShadowSize: 0.7,
                          images: [
                            ExactAssetImage("assets/imgs/foot_logo_1.png"),
                            ExactAssetImage("assets/imgs/foot_logo_2.png"),
                            ExactAssetImage("assets/imgs/foot_logo_3.png"),
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
                TestimonialWidget(),
                Footer(),
                Container(
//height: screenheight/6,
                  color: Colors.black,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 1200),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(150, 30, 0, 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            'assets/imgs/codecodalogo.png',
                            scale: 2,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "© Copyright 2020. All Rights Reserved. - Last Update: Thu, February 06, 2020 - 4:48:48",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 10,
                                fontWeight: FontWeight.w100),
                          )
                        ],
                      ),
                    ),
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
