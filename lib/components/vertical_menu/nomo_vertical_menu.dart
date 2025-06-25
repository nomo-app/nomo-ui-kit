import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_tile.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';
import 'package:nomo_ui_kit/components/divider/nomo_divider.dart';
import 'package:nomo_ui_kit/components/expandable/expandable.dart';
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
    this.padding,
    this.itemSpacing,
    this.borderRadius,
    this.iconSize,
    this.style,
    this.spacing,
    this.title,
    this.onTap,
    this.border,
    this.selectedBorder,
    this.itemDecorator,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.splashColor,
    this.collapsed,
    this.seperatorBulder,
    this.iconForeground,
    this.subMenuIconSpacing,
    this.expandIcon,
    super.key,
  });
  final List<NomoMenuItem<T>> items;
  final TextStyle? style;
  final Widget? title;
  final void Function(NomoMenuItem<T> item)? onTap;
  final Widget Function(NomoMenuItem<T> item, Widget child)? itemDecorator;
  final Widget Function(int index)? seperatorBulder;
  final T? selected;
  final bool? collapsed;

  @NomoColorField<BorderSide>(BorderSide.none)
  final BorderSide? border;

  @NomoColorField<BorderSide>(BorderSide.none)
  final BorderSide? selectedBorder;

  @NomoColorField(Colors.black)
  final Color? foreground;

  @NomoColorField(Colors.black)
  final Color? iconForeground;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField(Colors.red)
  final Color? selectedBackground;

  @NomoColorField(Colors.red)
  final Color? selectedForeground;

  @NomoColorField(BorderRadius.all(Radius.circular(16)))
  final BorderRadius? borderRadius;

  @NomoSizingField<EdgeInsetsGeometry>(EdgeInsets.symmetric(horizontal: 8))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(8.0)
  final double? itemSpacing;

  @NomoSizingField(8.0)
  final double? spacing;

  @NomoSizingField(56.0)
  final double? height;

  @NomoSizingField(28.0)
  final double? iconSize;

  @NomoColorField<Color?>(null)
  final Color? splashColor;

  @NomoColorField<Color?>(null)
  final Color? hoverColor;

  @NomoColorField<Color?>(null)
  final Color? highlightColor;

  @NomoColorField<Color?>(null)
  final Color? focusColor;

  @NomoSizingField<double>(8)
  final double? subMenuIconSpacing;

  @NomoColorField<IconData?>(null)
  final IconData? expandIcon;

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = items[index];

        final widget = item.children != null
            ? ItemWrapper(
                item: item,
                theme: theme,
                selected: selected,
                collapsed: collapsed,
                style: style,
                onTap: (item) {
                  if (item is NomoMenuItem<T>) {
                    onTap?.call(item);
                  }
                },
              )
            : NomoVerticalListTile(
                item: item,
                menuTheme: theme,
                titleStyle: style,
                collapsed: collapsed ?? false,
                splashColor: theme.splashColor,
                hoverColor: theme.hoverColor,
                highlightColor: theme.highlightColor,
                focusColor: theme.focusColor,
                iconForeground: theme.iconForeground,
                onTap: () {
                  onTap?.call(items[index]);
                },
                selected: item.key == selected,
              );

        return itemDecorator?.call(item, widget) ?? widget;
      },
      separatorBuilder: (context, index) => switch (seperatorBulder) {
        final Widget Function(int) seperatorBulder => seperatorBulder(index),
        _ => itemSpacing?.vSpacing ?? SizedBox.shrink(),
      },
      itemCount: items.length,
    );
  }
}

class ItemWrapper<T> extends StatefulWidget {
  final NomoMenuItem<T> item;
  final NomoVerticalMenuThemeData theme;
  final T selected;
  final TextStyle? style;
  final bool? collapsed;
  final void Function(NomoMenuItem<T> item) onTap;

  const ItemWrapper({
    super.key,
    required this.item,
    required this.theme,
    required this.selected,
    required this.onTap,
    this.style,
    this.collapsed,
  });

  @override
  State<ItemWrapper<T>> createState() => _ItemWrapperState<T>();
}

class _ItemWrapperState<T> extends State<ItemWrapper<T>>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _heightFactor;
  bool _expanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 140),
      vsync: this,
    );
    _heightFactor = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _expanded = !_expanded;
      if (_expanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final hasChildren =
        widget.item.children != null && widget.item.children!.isNotEmpty;

    final parentTile = NomoVerticalListTile(
      item: widget.item,
      menuTheme: widget.theme,
      titleStyle: widget.style,
      collapsed: widget.collapsed ?? false,
      splashColor: widget.theme.splashColor,
      hoverColor: widget.theme.hoverColor,
      highlightColor: widget.theme.highlightColor,
      focusColor: widget.theme.focusColor,
      iconForeground: widget.theme.iconForeground,
      onTap: hasChildren ? _toggleExpand : () {},
      selected: widget.item.key == widget.selected,
      // Optionally, you can add an expand/collapse icon here
      trailling: hasChildren
          ? AnimatedRotation(
              turns: _expanded ? 0.5 : 0.0,
              duration: const Duration(milliseconds: 250),
              child: Icon(widget.theme.expandIcon ?? Icons.arrow_downward),
            )
          : null,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        parentTile,
        if (hasChildren) widget.theme.subMenuIconSpacing.vSpacing,
        if (hasChildren)
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return ClipRect(
                child: Align(
                  heightFactor: _heightFactor.value,
                  child: (_controller.value > 0.0)
                      ? SizedBox(
                          height: widget.item.children!.length *
                                  widget.theme.height +
                              (widget.item.children!.length - 1) *
                                  widget.theme.subMenuIconSpacing,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Column(
                                children: [
                                  16.vSpacing,
                                  Expanded(
                                    child: NomoDivider(
                                      axis: Axis.vertical,
                                      color: const Color(0xFFE5E5EA),
                                      crossAxisSize: 2,
                                      crossAxisSpacing: 16,
                                      borderRadius: BorderRadius.circular(1),
                                    ),
                                  ),
                                  (widget.theme.height / 2).vSpacing,
                                ],
                              ),
                              Expanded(
                                child: ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    final child = widget.item.children![index];
                                    return NomoVerticalListTile(
                                      item: child,
                                      menuTheme: widget.theme,
                                      titleStyle: widget.style,
                                      collapsed: widget.collapsed ?? false,
                                      splashColor: widget.theme.splashColor,
                                      hoverColor: widget.theme.hoverColor,
                                      highlightColor:
                                          widget.theme.highlightColor,
                                      focusColor: widget.theme.focusColor,
                                      iconForeground:
                                          widget.theme.iconForeground,
                                      onTap: () {
                                        widget.onTap?.call(child);
                                      },
                                      selected: child.key == widget.selected,
                                    );
                                  },
                                  itemCount: widget.item.children!.length,
                                  separatorBuilder: (context, index) {
                                    return widget
                                        .theme.subMenuIconSpacing.vSpacing;
                                  },
                                ),
                              ),
                            ],
                          ),
                        )
                      : null,
                ),
              );
            },
          ),
      ],
    );
  }
}
