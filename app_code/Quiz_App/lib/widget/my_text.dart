import 'package:flutter/material.dart';

Widget myText({
    required String text,
    required double fontSize,
    Color? color,
    required bool? mainText
  }) {
  if (mainText == true) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
          fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  } else {
    if (color != null) {
      return Text(
        text,
        style: TextStyle(
          fontSize: fontSize, 
          color: color),
      );
    } else {
      return Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          color: Colors.white,
        ),
      );
    }
  }
}
