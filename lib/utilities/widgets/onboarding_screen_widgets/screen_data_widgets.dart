import 'package:flutter/material.dart';

List<Widget> screenData(int numOfPages) {
  List<Widget> list =[];

  for(int i = 0; i < numOfPages; i++) {
    list.add(getScreenData());
  }
  return list;
}

Widget getScreenData() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 40.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Center(
          child: Image(
            image: AssetImage(
              'assets/images/onboarding0.png',
            ),
            height: 300.0,
            width: 300.0,
          ),
        ),
        SizedBox(height: 30.0),
        Text(
          'Connect people\naround the world',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'CM Sans Serif',
            fontSize: 26.0,
            height: 1.5,
          ),
        ),
        SizedBox(height: 15.0),
        Text(
          'Lorem ipsum dolor sit amet, consect adipiscing elit, sed do eiusmod tempor incididunt ut labore et.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            height: 1.2,
          ),
        ),
      ],
    ),
  );
}