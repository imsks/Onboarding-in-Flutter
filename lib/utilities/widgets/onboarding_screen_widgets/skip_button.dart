import 'package:flutter/material.dart';

Widget skipButton() {
  return FlatButton(
    onPressed: () => print('SKIP'),
    child: Text(
      'SKIP',
      style: TextStyle(
          fontSize: 16,
          color: Colors.white,
          letterSpacing: 2
      ),
    ),
  );
}