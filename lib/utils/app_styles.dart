import 'package:flutter/material.dart';


// Color secondary = Colors.indigo;
// Color? bgSec = Colors.blueGrey[200];
// Color? bgPri = Colors.blueGrey[100];

class Styles{
  static Color primary = Colors.indigoAccent;
  static Color secondary = Colors.indigo;
  static Color? bgSec = Colors.blueGrey[200];
  static Color? boxColor = Colors.grey[50];
  static Color? bgPri = Colors.blueGrey[100];
  static Color textColor = const Color(0xFF3b3b3b);
  static Color iconColor = Colors.grey.shade500;
  static Color white = Colors.white;
  static Color red = Colors.red.shade300;
  static Color greyShade5 = Colors.grey.shade500;
  static Color greyShade9 = Colors.grey.shade900;

  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle textLinkStyle = TextStyle(fontSize: 16, color: secondary, fontWeight: FontWeight.w500);
  static TextStyle headLine1 = TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLine2 = TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLine3 = TextStyle(fontSize: 17, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
  static TextStyle headLine4 = TextStyle(fontSize: 15, color: Colors.grey.shade500, fontWeight: FontWeight.w700);
}