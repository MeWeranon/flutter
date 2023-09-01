import 'package:flutter/material.dart';

class MyConstant {

  static Color primary = Color.fromARGB(0, 34, 30, 241);
  static Color succes = Color.fromARGB(0, 3, 157, 75);
  static Color warning = Color.fromARGB(0, 175, 69, 19);
  static Color danger = Color.fromARGB(0, 157, 2, 2);
  static Color info = Color.fromARGB(0, 240, 240, 100);

  TextStyle h1stlye() {
    return TextStyle(
      fontFamily: 'Raleway',
      fontSize: 20,
      color: const Color.fromARGB(255, 236, 235, 235),
      fontWeight: FontWeight.bold
    );
  }

  TextStyle h2stlye() {
    return TextStyle(
      fontFamily: 'Raleway',
      fontSize: 18,
      color: primary,
      fontWeight: FontWeight.bold
    );
  }
}