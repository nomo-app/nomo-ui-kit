import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_generator/annotations.dart';

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

  const NomoOutlineContainer({
    this.foreground,
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
        color: theme.background,
        shape: theme.shape,
      ),
      padding: theme.padding,
      width: 300,
      height: 300,
      child: Row(
        children: [
          NomoText(
            "Hello",
            style: context.typography.h3,
            color: theme.foreground,
          ),
          SizedBox(width: theme.spacing),
          NomoText(
            "World",
            style: context.typography.h3,
            color: theme.foreground,
          ),
        ],
      ),
    );
  }
}
