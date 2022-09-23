import 'package:flutter/material.dart';

Color primary = const Color(0xFF687daf);

class Styles {
  static Color primaryColor = primary;
  static Color textColor = Color.fromARGB(255, 110, 110, 110);
  static Color textGrayColor = Color.fromARGB(255, 0, 0, 0);
  static Color textWhiteColor = Color.fromARGB(255, 255, 255, 255);
  static Color bgColor = Color.fromARGB(255, 248, 248, 248);
  static Color orangeColor = Color.fromARGB(255, 106, 129, 182);
  static TextStyle textStyle = TextStyle(
      fontSize: 16, color: textGrayColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(
      fontSize: 26, color: textGrayColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(
      fontSize: 21, color: textGrayColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 =
      TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 =
      TextStyle(fontSize: 14, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle5 = TextStyle(
      fontSize: 14, color: textWhiteColor, fontWeight: FontWeight.w500);
}
