import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/layout/bottom_bar/nomo_horizontal_tile.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/entities/nomo_decoration.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_bottom_bar.g.dart';

@NomoComponentThemeData('bottomBarTheme')
class NomoBottomBar extends StatelessWidget {
  const NomoBottomBar({
    required this.items,
    required this.selected,
    super.key,
    this.height,
    this.style,
    this.onTap,
    this.title,
    this.background,
    this.foreground,
    this.selectedForeground,
    this.borderRadius,
    this.spacing,
    this.padding,
    this.iconSize,
    this.itemPadding,
  }) : assert(
          items.length > 0 && items.length <= 5,
          'Items must be between 1 and 5',
        );
  final List<NomoMenuItem> items;
  final TextStyle? style;
  final Widget? title;
  final void Function(NomoMenuItem item)? onTap;
  final NomoMenuItem? selected;

  @NomoSizingField(56.0)
  final double? height;

  @NomoSizingField(4.0)
  final double? spacing;

  @NomoSizingField(28.0)
  final double? iconSize;

  @NomoSizingField(EdgeInsets.all(4))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(EdgeInsets.symmetric(horizontal: 8))
  final EdgeInsetsGeometry? itemPadding;

  @NomoColorField(Colors.black)
  final Color? foreground;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField(Colors.red)
  final Color? selectedForeground;

  @NomoColorField(BorderRadius.all(Radius.circular(8)))
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return Container(
      height: theme.height,
      decoration: NomoDecoration(
        color: theme.background,
        elevation: 16,
      ),
      padding: theme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (final item in items)
            NomoHorizontalListTile(
              item: item,
              theme: theme,
              selected: item == selected,
              onTap: () => onTap?.call(item),
            ),
        ],
      ),
    );
  }
}
