import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';

import 'package:nomo_ui_kit/components/app/bottom_bar/nomo_horizontal_tile.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/entities/nomo_decoration.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_bottom_bar.theme_data.g.dart';

@NomoComponentThemeData('bottomBar')
class NomoBottomBar<T> extends StatelessWidget {
  const NomoBottomBar({
    required this.items,
    required this.selected,
    this.itemWidth,
    this.widthFactor,
    super.key,
    this.height,
    this.style,
    this.onTap,
    this.title,
    this.background,
    this.foreground,
    this.selectedForeground,
    this.itemBackground,
    this.selectedBackground,
    this.itemBorderRadius,
    this.spacing,
    this.padding,
    this.iconSize,
    this.itemPadding,
    this.itemDecorator,
    this.elevation,
    this.borderRadius,
    this.mainAxisAlignment,
    this.childDirection,
    this.crossAxisAlignment,
    this.border,
  }) : assert(
          items.length > 0 && items.length <= 5,
          'Items must be between 1 and 5',
        );
  final List<NomoMenuItem<T>> items;
  final TextStyle? style;
  final Widget? title;
  final void Function(NomoMenuItem<T> item)? onTap;
  final Widget Function(NomoMenuItem<T> item, Widget child)? itemDecorator;
  final T? selected;
  final double? widthFactor;
  final double? itemWidth;
  final MainAxisAlignment? mainAxisAlignment;
  final CrossAxisAlignment? crossAxisAlignment;
  final BoxBorder? border;
  final Axis? childDirection;

  @NomoSizingField(56.0)
  final double? height;

  @NomoSizingField<double>(0.0)
  final double? spacing;

  @NomoSizingField(28.0)
  final double? iconSize;

  @NomoSizingField<EdgeInsetsGeometry>(EdgeInsets.all(4))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(16.0)
  final double? elevation;

  @NomoSizingField<EdgeInsetsGeometry>(EdgeInsets.symmetric(horizontal: 8))
  final EdgeInsetsGeometry? itemPadding;

  @NomoColorField(Colors.black)
  final Color? foreground;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField(Colors.red)
  final Color? selectedForeground;

  @NomoColorField(Colors.transparent)
  final Color? itemBackground;

  @NomoColorField(Colors.transparent)
  final Color? selectedBackground;

  @NomoColorField(BorderRadius.all(Radius.circular(8)))
  final BorderRadius? itemBorderRadius;

  @NomoColorField(BorderRadius.zero)
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return Container(
      height: theme.height,
      decoration: NomoDecoration(
        color: theme.background,
        elevation: theme.elevation,
        borderRadius: theme.borderRadius,
        border: this.border,
      ),
      padding: theme.padding,
      child: Row(
        mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.stretch,
        spacing: theme.spacing,
        children: [
          for (final item in items)
            () {
              final widget = NomoHorizontalListTile(
                itemWidth: itemWidth,
                widthFactor: widthFactor,
                item: item,
                theme: theme,
                selected: item.key == selected,
                style: style,
                direction: childDirection,
                onTap: () => onTap?.call(item),
              );
              return itemDecorator?.call(item, widget) ?? widget;
            }.call(),
        ],
      ),
    );
  }
}
