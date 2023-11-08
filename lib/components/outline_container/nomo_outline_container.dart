import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_outline_container.g.dart';

@NomoComponentThemeData("outlineContainerTheme")
class NomoOutlineContainer extends StatelessWidget {
  @NomoColorField(Colors.black)
  final Color? foreground;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField(BoxShape.rectangle)
  final BoxShape? shape;

  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsets? padding;

  @NomoSizingField(16.0)
  final double? spacing;

  final BoxBorder? border;

  final Widget child;

  final double? radius;

  final double? width;
  final double? height;

  const NomoOutlineContainer({
    this.foreground,
    required this.child,
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
