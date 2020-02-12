import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myflutter_webapp/utilities/constants.dart';
import 'package:myflutter_webapp/widgets/circle_image_widget.dart';

class ContactFooterWidget extends StatelessWidget {
  final String title;

  ContactFooterWidget({this.title});

  List<ContactLink> contactColumnList = [
    ContactLink(iconLink: 'assets/imgs/us.png', linkContent: '0774 430 0080'),
    ContactLink(iconLink: 'assets/imgs/uk.png', linkContent: '020 3290 9900'),
    ContactLink(iconLink: 'assets/imgs/italy.png', linkContent: '01 443 4300'),
    ContactLink(
        iconLink: 'assets/imgs/sweden.png', linkContent: '08 501 64 300'),
  ];


  @override
  Widget build(BuildContext context) {
    List<ContactTileWidget> contactColumnElements = [];
    contactColumnList.forEach((item) {
      final iconLink = item.iconLink;
      final iconContent = item.linkContent;

      final contactTile = ContactTileWidget(
        iconLink: iconLink,
        iconElement: iconContent,
      );
      contactColumnElements.add(contactTile);
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title.toUpperCase(),
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
        SizedBox(
          height: 20,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: contactColumnElements),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.remove_circle_outline, color: Colors.white,),
              Text(
                "9 Exchange Place, IFSC, Dublin 1, Ireland",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.mail, color: Colors.white,),
              Text(
                "info@codecoda.com",
                style: TextStyle(color: Colors.white, fontSize: 14),
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(FontAwesomeIcons.facebook),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.twitter),
              color: Colors.white,
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(FontAwesomeIcons.linkedin),
              color: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class ContactTileWidget extends StatelessWidget {
  final iconLink;
  final iconElement;
  ContactTileWidget({this.iconLink, this.iconElement});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Container(
              width: 30.0,
              height: 30.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.scaleDown, image: new AssetImage(iconLink)))),
          SizedBox(
            width: 15,
          ),
          Text(
            iconElement,
            style: TextStyle(
                color: Colors.white, fontSize: 14, fontFamily: 'OpenSans'),
          )
        ],
      ),
    );
  }
}

class ContactLink {
  String iconLink;
  String linkContent;
  ContactLink({
    this.iconLink,
    this.linkContent,
  });
}
