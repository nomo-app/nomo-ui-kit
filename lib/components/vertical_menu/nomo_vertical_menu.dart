import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_tile.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_vertical_menu.theme_data.g.dart';

const kDuration = Duration(milliseconds: 200);
const kCurve = Curves.easeInOut;

@NomoComponentThemeData('verticalMenu')
class NomoVerticalMenu<T> extends StatelessWidget {
  const NomoVerticalMenu({
    required this.items,
    required this.selected,
    this.foreground,
    this.background,
    this.selectedBackground,
    this.selectedForeground,
    this.height,
    this.hPadding,
    this.itemSpacing,
    this.borderRadius,
    this.iconSize,
    this.style,
    this.spacing,
    this.title,
    this.onTap,
    this.border,
    this.selectedBorder,
    super.key,
  });
  final List<NomoMenuItem<T>> items;
  final TextStyle? style;
  final Widget? title;
  final void Function(NomoMenuItem<T> item)? onTap;
  final T? selected;

  @NomoColorField<BorderSide>(BorderSide.none)
  final BorderSide? border;

  @NomoColorField<BorderSide>(BorderSide.none)
  final BorderSide? selectedBorder;

  @NomoColorField(Colors.black)
  final Color? foreground;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField(Colors.red)
  final Color? selectedBackground;

  @NomoColorField(Colors.red)
  final Color? selectedForeground;

  @NomoColorField(BorderRadius.all(Radius.circular(16)))
  final BorderRadius? borderRadius;

  @NomoSizingField(16.0)
  final double? hPadding;

  @NomoSizingField(8.0)
  final double? itemSpacing;

  @NomoSizingField(8.0)
  final double? spacing;

  @NomoSizingField(56.0)
  final double? height;

  @NomoSizingField(28.0)
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final collapsed = [
          for (final item in items)
            NomoVerticalListTile(
              item: item,
              menuTheme: theme,
              titleStyle: style,
              onTap: () {
                onTap?.call(item);
              },
            ),
        ].any((tile) => tile.getIntrinsicWidth(context) > width);

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null && !collapsed) ...[
              title!,
              (theme.spacing * 2).vSpacing,
            ],
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                final item = items[index];
                return NomoVerticalListTile(
                  item: item,
                  menuTheme: theme,
                  titleStyle: style,
                  collapsed: collapsed,
                  onTap: () {
                    onTap?.call(items[index]);
                  },
                  selected: item.key == selected,
                );
              },
              separatorBuilder: (context, index) => theme.spacing.vSpacing,
              itemCount: items.length,
            ),
          ],
        );
      },
    );
  }
}
