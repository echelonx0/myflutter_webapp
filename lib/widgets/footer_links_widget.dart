import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/footer_links_content.dart';

enum FooterColumNumber {
  columnOne,
  columnTwo,
  columThree,
  ColumnFour

}

class FooterLinksWidget extends StatelessWidget {
  final String title;
  final columnNumber;


  FooterLinksWidget({this.title, this.columnNumber});



  final list = ListItems();

  final List<String> listOne = [
    "Team",
    "Services",
    "Careers",
    "Contact",
    "Blog",
    "Case Studies",
    "Outsourcing Explained",
  ];

  final List<String> listTwo = [
    "AI / ML / BigData",
    "Mobile Applications",
    "eCommerce",
    "Web Applications",
    "Gaming and Gambling",
    "Fintech",
    "Cryptocurrencies",
    "Project Management (PM-O)",
  ];

  final List<String> listThree = [

    "Big Data",
    "Blockchain",
    "Business Intelligence (BI)",
    "Cloud Solutions",
    "Data Science",
    "Digital Transformation",
    "High Availability Solutions",
    "Machine Learning & AI",
    "Progressive Web Apps",
    "UI/UX"
  ];

  List<String>  listFour = [
    "Databases",
    "Development Languages",
    "CI/CD",
    "Frameworks",
    "Cloud"

  ];


  @override
  Widget build(BuildContext context) {
    List<Links> columnFourLinks = [];
    List<Links> columnThreeLinks = [];
    List<Links> columnTwoLinks = [];
    List<Links> columnOneLinks = [];
    listOne.forEach((item)=> columnOneLinks.add(Links(text: item)) );
    listTwo.forEach((item)=> columnTwoLinks.add(Links(text: item)) );
    listThree.forEach((item)=> columnThreeLinks.add(Links(text: item)) );
    listFour.forEach((item)=> columnFourLinks.add(Links(text: item)) );

    return
      (columnNumber == 1)? Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title.toUpperCase(),
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),

        SizedBox(
          height: 25,
        ),

        //Todo iterate over each list item and return a widget
         Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: columnOneLinks),
      ],
    ): (columnNumber == 2) ? Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),

          SizedBox(
            height: 25,
          ),

          //Todo iterate over each list item and return a widget
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnTwoLinks),
        ],
      ): (columnNumber == 3) ? Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),

          SizedBox(
            height: 25,
          ),

          //Todo iterate over each list item and return a widget
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnThreeLinks),
        ],
      ): Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title.toUpperCase(),
            style: TextStyle(fontSize: 14, color: Colors.white),
          ),

          SizedBox(
            height: 25,
          ),

          //Todo iterate over each list item and return a widget
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: columnFourLinks),
        ],
      );
  }
}

class Links extends StatelessWidget {
  Links({
    this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.arrow_right,
          color: Colors.blue,
          size: 16,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          text,
          style: TextStyle(
              color: Colors.grey, fontSize: 13, fontFamily: 'OpenSans', fontWeight: FontWeight.w200),
        ),
      ],
    );
  }
}
