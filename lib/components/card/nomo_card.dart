import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

import 'package:nomo_ui_kit/components/card/card_const.dart';

class NomoCard extends StatelessWidget {

  const NomoCard({
    required this.child, super.key,
    this.color,
    this.elevation = CardConst.elevation,
    this.borderRadius,
    this.padding = CardConst.padding,
    this.margin = EdgeInsets.zero,
    this.offset = const Offset(0, 1),
    this.width,
    this.height,
    this.onPressed,
    this.decoration,
    this.shape,
  }) : assert(elevation < 10);
  final Widget child;
  final Color? color;
  final double elevation;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final VoidCallback? onPressed;
  final double? width;
  final double? height;
  final Offset offset;
  final Decoration? decoration;
  final BoxShape? shape;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed?.call(),
      child: Container(
        decoration: decoration ??
            context.theme.getCardDecoration(
              color: color,
              borderRadius: borderRadius,
              elevation: elevation,
              offset: offset,
              shape: shape,
            ),
        width: width,
        height: height,
        padding: padding,
        margin: margin,
        child: child,
      ),
    );
  }
}
