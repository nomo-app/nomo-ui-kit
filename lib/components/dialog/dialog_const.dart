import 'package:flutter/material.dart';

class DialogConst {
  // Colors
  static const Color backgroundColor = Color(0xFFFFFFFF);

  // Sizes
  static const double width = 400;
  static const double height = 400;

  //title style
  static const TextStyle titleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  //border
  static const EdgeInsetsGeometry padding = EdgeInsets.all(8.0);
  static const BorderSide border = BorderSide.none;
  static const double elevation = 3.0;
  static const BorderRadiusGeometry borderRadius = BorderRadius.all(
    Radius.circular(12.0),
  );

  static const Color closeButtonColor = Color(0xFFE0E0E0);
  static const Color closeButtonIconColor = Color(0xFF9E9E9E);
}
