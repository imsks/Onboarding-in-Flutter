import 'package:flutter/material.dart';

Widget callToAction() {
  return Container(
    height: 70,
    width: double.infinity,
    color: Colors.white,
    child: GestureDetector(
      onTap: () => print('ss'),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Get Started',
            style: TextStyle(
                color: Color(0xFF5B16D0),
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    ),
  );
}