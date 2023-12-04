import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/elevatedBox/elevated_box.dart';

class NomoCard extends StatelessWidget {
  final Widget child;
  final double elevation;
  final Offset? offset;
  final Color? shadowColor;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;

  const NomoCard({
    required this.child,
    super.key,
    this.elevation = 1,
    this.offset,
    this.shadowColor,
    this.border,
    this.borderRadius,
    this.backgroundColor,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedBox(
      border: border,
      offset: offset,
      elevation: elevation,
      shadowColor: shadowColor,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: backgroundColor,
      ),
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: child,
      ),
    );
  }
}
