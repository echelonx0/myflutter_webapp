import 'package:flutter/material.dart';
import 'package:myflutter_webapp/utilities/constants.dart';
import 'package:myflutter_webapp/utilities/placeholder_container.dart';
import 'package:myflutter_webapp/widgets/centered_view.dart';

class TestimonialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            // alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
//                  gradient: LinearGradient(
//                    begin: Alignment.topCenter,
//                    end: Alignment.bottomCenter,
//                    colors: <Color>[
//                      Colors.black.withAlpha(0),
//                      Colors.red,
//                      Colors.redAccent
//                    ],
//                  ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CenteredView(
                child: Container(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  //  width: 800,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Latest Posts",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Row(

                                children: <Widget>[
                                  TestimonialSubWidget(),
                                  TestimonialSubWidget(),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 120.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "What Clients Say",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20.0),
                              ),
                              SizedBox(height: 30,),
                              Container(
                                  child: PlaceholderWidget()
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Container(
                                            width: 30.0,
                                            height: 30.0,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: AssetImage(
                                                        "assets/imgs/man.jpg")
                                                )
                                            )),),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Flexible(

                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Text("Nashat Wanli", style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold),),
                                          Text("CTO",
                                            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200, fontFamily: 'OpenSans'),),
                                          Text("at"),
                                          Text("Kingun")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TestimonialSubWidget extends StatelessWidget {
  const TestimonialSubWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
              alignment: Alignment.topLeft,
              child: Icon(Icons.label)),
          SizedBox(
            width: 15,
          ),
          Flexible(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("How to overcome Digital Strategies", style: TextStyle(color: Colors.blue, fontSize: 16),),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Text("While web traffic is increasingly shifting to mobile, progressive web apps come as a result of demand...",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w200, fontFamily: 'OpenSans'),),
                ),
                Text("See more...")
              ],
            ),
          )
        ],
      ),
    );
  }
}
