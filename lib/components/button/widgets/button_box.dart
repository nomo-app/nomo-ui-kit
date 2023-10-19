import 'package:flutter/material.dart';

class ButtonBox extends StatelessWidget {
  final double elevation;
  final BorderRadiusGeometry borderRadius;
  final BorderSide border;
  final Widget child;
  final Color color;
  final Color disabledColor;
  final Color highlightColor;
  final Color splashColor;

  const ButtonBox({
    super.key,
    required this.color,
    required this.disabledColor,
    required this.highlightColor,
    required this.splashColor,
    required this.elevation,
    required this.borderRadius,
    required this.border,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: color,
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
        side: border,
      ),
      child: child,
    );
  }
}
