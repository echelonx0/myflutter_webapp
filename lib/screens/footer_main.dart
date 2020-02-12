import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myflutter_webapp/utilities/footer_links_content.dart';
import 'package:myflutter_webapp/widgets/centered_view.dart';
import 'package:myflutter_webapp/widgets/contact_footer_widget.dart';
import 'package:myflutter_webapp/widgets/footer_links_widget.dart';

class Footer extends StatelessWidget {

  final list = ListItems();

  final String assetName = 'assets/imgs/foot_logo_4.svg';

  @override
  Widget build(BuildContext context) {

//    Widget svg = SvgPicture.asset(
//        assetName,
//        semanticsLabel: 'Acme Logo',
//
//    );

    return Container(
      color: Colors.black87,
      height: MediaQuery.of(context).size.height,
      child: CenteredView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FooterLinksWidget(title: "Info", columnNumber: 1,),
                FooterLinksWidget(
                  title: "Services",
                  columnNumber: 2,
                ),
                FooterLinksWidget(
                  title: "Expertise",
                  columnNumber: 3,
                ),
                FooterLinksWidget(
                  title: "Technologies",
                ),
                ContactFooterWidget(
                  title: "Contact Us",
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                //mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/imgs/foot_logo_1.png',
                      )),
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/imgs/foot_logo_2.png',
                      )),
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(
                        'assets/imgs/foot_logo_3.png',
                       // scale: 3,
                      )),

                  //Todo: Find out why the SVG library is not loading
//                  SizedBox(
//                      width: 200,
//                      height: 200,
//                      child: svg
//                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

