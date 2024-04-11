import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_divider.theme_data.g.dart';

@NomoComponentThemeData('divider')
class NomoDivider extends StatelessWidget {
  @NomoColorField(Colors.black38)
  final Color? color;

  @NomoSizingField(1.0)
  final double? crossAxisSize;

  @NomoSizingField(8.0)
  final double? crossAxisSpacing;

  final Axis axis;

  final Widget? middle;

  const NomoDivider({
    super.key,
    this.axis = Axis.horizontal,
    this.color,
    this.crossAxisSize,
    this.crossAxisSpacing,
    this.middle,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    if (axis == Axis.horizontal) {
      final div = Container(
        height: theme.crossAxisSize,
        margin: EdgeInsets.symmetric(vertical: theme.crossAxisSpacing),
        color: theme.color,
      );

      if (middle != null) {
        return Row(
          children: [
            Expanded(child: div),
            4.hSpacing,
            middle!,
            4.hSpacing,
            Expanded(child: div),
          ],
        );
      }

      return div;
    }

    final div = Container(
      width: theme.crossAxisSize,
      margin: EdgeInsets.symmetric(horizontal: theme.crossAxisSpacing),
      color: theme.color,
    );

    if (middle != null) {
      return Column(
        children: [
          Expanded(child: div),
          4.vSpacing,
          middle!,
          4.vSpacing,
          Expanded(child: div)
        ],
      );
    }

    return div;
  }
}
