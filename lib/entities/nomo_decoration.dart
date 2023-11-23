import 'package:flutter/material.dart';

class NomoDecoration extends BoxDecoration {
  NomoDecoration({
    super.color,
    super.borderRadius,
    super.border,
    super.backgroundBlendMode,
    super.gradient,
    super.image,
    super.shape,
    this.elevation = 0,
    this.elevationOffset = const Offset(0, 0),
    this.blurRadiusK = 2,
    this.spreadRadiusK = 0,
    this.shadowColor = Colors.black12,
  }) : super(
          boxShadow: getBoxShadow(
            shadowColor,
            elevation,
            elevationOffset,
            blurRadiusK,
            spreadRadiusK,
          ),
        );
  final double elevation;
  final Offset elevationOffset;
  final double blurRadiusK;
  final double spreadRadiusK;
  final Color shadowColor;

  static List<BoxShadow>? getBoxShadow(
    Color color,
    double elevation,
    Offset offset,
    double blurRadiusK,
    double spreadRadiusK,
  ) {
    return [
      BoxShadow(
        color: color,
        spreadRadius: spreadRadiusK * elevation,
        blurRadius: blurRadiusK * elevation,
        offset: offset,
      ),
    ];
  }
}
