import 'package:flutter/material.dart';

import 'card_const.dart';

class NomoCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final double elevation;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Decoration? decoration;
  final BoxShape? shape;

  const NomoCard({
    super.key,
    required this.child,
    this.color = CardConst.backgroundColor,
    this.elevation = CardConst.elevation,
    this.borderRadius = CardConst.borderRadius,
    this.padding = CardConst.padding,
    this.margin = CardConst.margin,
    this.width,
    this.height,
    this.onPressed,
    this.decoration,
    this.shape,
  }) : assert(elevation < 10);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed?.call(),
      child: Container(
        decoration: decoration == null
            ? BoxDecoration(
                color: color,
                shape: shape ?? BoxShape.rectangle,
                borderRadius: borderRadius,
                boxShadow: [
                  if (elevation > 0)
                    BoxShadow(
                      color: Colors.grey[300]!,
                      spreadRadius: 2,
                      blurRadius: 3 * elevation,
                      offset:
                          const Offset(2.0, 2.0), // changes position of shadow
                    ),
                ],
              )
            : decoration!,
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        child: child,
      ),
    );
  }
}
