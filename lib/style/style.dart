import 'package:flutter/material.dart';

abstract class Styles{
  static const TextStyle eventTitleStyle = TextStyle(
      fontSize: 12.9,
      color: Colors.black45,
      fontWeight: FontWeight.w900,
      letterSpacing: 0.2
  );
  static const TextStyle locationStyle = TextStyle(
    fontSize: 11.5,
    color: Colors.black38,
  );
  static const TextStyle contentStyle = TextStyle(
    fontSize: 12.0,
      color: Colors.black38
  );
  static const TextStyle iconTextStyle = TextStyle(
    fontSize: 12.0,
    color: infotessColor,
  );

  static const Color infotessColor = Color.fromRGBO(44, 21, 82, 1);
  static Color scaffoldColor = Colors.grey[200];

}