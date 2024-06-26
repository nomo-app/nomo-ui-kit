import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/app/animator.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_elevation.theme_data.g.dart';

@NomoComponentThemeData('elevation')
class NomoElevation extends StatelessWidget {
  final Widget child;
  final BoxShape shape;
  final Clip clipBehavior;
  final BorderRadiusGeometry? borderRadius;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoColorField(Colors.black26)
  final Color? shadowColor;

  @NomoSizingField(1.0)
  final double? elevation;

  @NomoConstant(Duration(milliseconds: 200))
  final Duration? animationDuration;

  @NomoConstant<Curve>(Curves.fastOutSlowIn)
  final Curve? animationCurve;

  const NomoElevation({
    required this.child,
    this.borderRadius = BorderRadius.zero,
    this.shape = BoxShape.rectangle,
    this.clipBehavior = Clip.none,
    this.backgroundColor,
    this.shadowColor,
    this.elevation,
    this.animationDuration,
    this.animationCurve,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return AnimatedPhysicalModel(
      curve: theme.animationCurve,
      duration: theme.animationDuration,
      shape: shape,
      clipBehavior: clipBehavior,
      elevation: theme.elevation,
      color: theme.backgroundColor,
      shadowColor: theme.shadowColor,
      animateColor: false,
      borderRadius: borderRadius?.resolve(Directionality.of(context)) ??
          BorderRadius.zero,
      child: child,
    );
  }
}
