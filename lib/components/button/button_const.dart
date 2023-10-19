import 'package:flutter/material.dart';

enum ButtonSize {
  small,
  medium,
  large,
}

class ButtonConstants {
  //Colors
  static const Color color = Color(0xFFFFFFFF);
  static const Color disabledColor = Color(0xFF9E9E9E);
  static const Color highlightColor = Color(0xFFFFFFFF);
  static const Color splashColor = Color(0xFFEEEEEE);

  //Dimensions
  static const double smallTextButtonWidth = 100;
  static const double smallTextButtonHeight = 40;

  static const double mediumTextButtonWidth = 150;
  static const double mediumTextButtonHeight = 50;

  static const double largeTextButtonWidth = 200;
  static const double largeTextButtonHeight = 60;

  static const double smallIconButtonWidth = 35;
  static const double smallIconButtonHeight = 35;

  static const double mediumIconButtonWidth = 50;
  static const double mediumIconButtonHeight = 50;

  static const double largeIconButtonWidth = 60;
  static const double largeIconButtonHeight = 60;

  static const EdgeInsetsGeometry padding = EdgeInsets.all(8.0);
  static const EdgeInsetsGeometry margin = EdgeInsets.all(0);

  //Border
  static const BorderRadiusGeometry borderRadius =
      BorderRadius.all(Radius.circular(5.0));
  static const BorderSide border = BorderSide.none;

  //Other
  static const double elevation = 1.0;
  static const bool isEnabled = true;
  static const bool isLoading = false;
  static const Widget loadingWidget = CircularProgressIndicator();

  //TextStyle
  static const TextStyle textStyle = TextStyle(
    color: Color(0xFF000000),
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.0,
  );
}
