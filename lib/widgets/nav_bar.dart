import 'package:flutter/material.dart';

//The Navigation Bar Class/Widget will hold the content of the navigation bar

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          //Sized Box to hold the logo
          Padding(
            padding: const EdgeInsets.fromLTRB(80, 0, 80, 0),
            child: SizedBox(height: 80, width: 150,
            child: Image.asset('assets/imgs/codecodalogo.png'),),
          ),
          //Row to hold the clickable navigation items
          Padding(
            padding: const EdgeInsets.only(right: 150.0),
            child: Row(
              children: <Widget>[
                _NavBarItem('Company'),
                SizedBox(width: 20,),
                _NavBarItem('Services'),
                SizedBox(width: 20,),
                _NavBarItem('Tech Expertise'),
                SizedBox(width: 20,),
                _NavBarItem('Blog'),
                SizedBox(width: 20,),
                _NavBarItem('Resources'),
                SizedBox(width: 20,),
                _NavBarItem('Contact'),
              ],

            ),
          )
        ],
      ),

    );
  } 
}

class _NavBarItem  extends StatelessWidget {
  final String title;
  const _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: 'OpenSansBold'),);
  }
}
