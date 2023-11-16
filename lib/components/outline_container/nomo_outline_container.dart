import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_outline_container.g.dart';

@NomoComponentThemeData('outlineContainerTheme')

///
/// A container with a border and a background color.
///
class NomoOutlineContainer extends StatelessWidget {

  const NomoOutlineContainer({
    required this.child, this.foreground,
    this.radius,
    this.border,
    this.width,
    this.height,
    this.background,
    this.padding,
    this.shape,
    this.spacing,
    super.key,
  });
  @NomoColorField(Colors.black)
  final Color? foreground;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField(BoxShape.rectangle)
  final BoxShape? shape;

  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsets? padding;

  @NomoSizingField(16)
  final double? spacing;

  final BoxBorder? border;

  final Widget child;

  final double? radius;

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return Container(
      decoration: BoxDecoration(
        border: border,
        color: theme.background,
        shape: theme.shape,
        borderRadius: BorderRadius.circular(radius ?? 8),
      ),
      padding: theme.padding,
      width: width,
      height: height,
      child: child,
    );
  }
}
