import 'package:flutter/material.dart';

List<Widget> pageIndicator(int numOfPages, int currentPage) {
  List<Widget> list = [];

  for(int i = 0; i < numOfPages; i++) {
    list.add(i == currentPage ? currentPageIndicator(true) : currentPageIndicator(false));
  }

  return list;
}

Widget currentPageIndicator(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: 8,
    width: isActive ? 24 : 16,
    decoration: BoxDecoration(
      color: isActive ? Colors.white : Color(0xFF7B51D3),
      borderRadius: BorderRadius.all(Radius.circular(50)),
    ),
  );
}