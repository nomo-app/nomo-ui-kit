import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_vertical_menu.g.dart';

const kDuration = Duration(milliseconds: 200);
const kCurve = Curves.easeInOut;

@NomoComponentThemeData('verticalMenuTheme')
class NomoVerticalMenu extends StatelessWidget {
  final List<NomoMenuItem> items;
  final TextStyle? style;
  final Widget? title;
  final void Function(NomoMenuItem item)? onTap;
  final ValueNotifier<NomoMenuItem?> selectedNotifier;

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

  const NomoVerticalMenu({
    required this.items,
    required this.selectedNotifier,
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
    super.key,
  });

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
              theme: theme,
              style: style,
              onTap: () {
                onTap?.call(item);
              },
            ),
        ].any((tile) => tile.intrinsicWidth > width);

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (title != null && !collapsed) ...[
              title!,
              (theme.spacing * 2).vSpacing,
            ],
            ValueListenableBuilder(
              valueListenable: selectedNotifier,
              builder: (context, selected, child) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final item = items[index];
                    return NomoVerticalListTile(
                      item: item,
                      theme: theme,
                      style: style,
                      collapsed: collapsed,
                      onTap: () {
                        onTap?.call(items[index]);
                      },
                      selected: item == selected,
                    );
                  },
                  separatorBuilder: (context, index) => theme.spacing.vSpacing,
                  itemCount: items.length,
                );
              },
            ),
          ],
        );
      },
    );
  }
}

class NomoVerticalListTile extends StatefulWidget {
  final NomoMenuItem item;
  final NomoVerticalMenuThemeData theme;
  final TextStyle? style;
  final bool collapsed;
  final VoidCallback? onTap;
  final bool selected;

  const NomoVerticalListTile({
    super.key,
    required this.item,
    required this.theme,
    this.collapsed = false,
    this.style,
    this.onTap,
    this.selected = false,
  });

  double get intrinsicWidth {
    return (theme.hPadding * 2) +
        theme.spacing +
        calculateTextSize(text: item.title, style: style).width;
  }

  @override
  State<NomoVerticalListTile> createState() => _NomoVerticalListTileState();
}

class _NomoVerticalListTileState extends State<NomoVerticalListTile>
    with TickerProviderStateMixin {
  NomoVerticalMenuThemeData get theme => widget.theme;

  late final AnimationController foregroundController = AnimationController(
    duration: kDuration,
    vsync: this,
  );

  late final AnimationController backgroundController = AnimationController(
    duration: kDuration,
    vsync: this,
  );

  late final Animation<Color?> foreGroundAnimation;
  late final Animation<Color?> backgroundAnimation;

  @override
  void initState() {
    foreGroundAnimation = ColorTween(
      begin: widget.theme.foreground,
      end: widget.theme.selectedForeground,
    ).animate(foregroundController);

    backgroundAnimation = ColorTween(
      begin: widget.theme.background,
      end: widget.theme.selectedBackground,
    ).animate(backgroundController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selected) {
      foregroundController.forward();
      backgroundController.forward();
    } else {
      foregroundController.reverse();
      backgroundController.reverse();
    }

    print("Building ${widget.item.title}: ${widget.selected}");
    return SizedBox(
      height: theme.height,
      child: MouseRegion(
        onEnter: (event) {
          if (widget.selected) return;
          foregroundController.forward();
        },
        onExit: (event) {
          if (widget.selected) return;
          foregroundController.reverse();
        },
        child: AnimatedBuilder(
          animation: Listenable.merge([
            foregroundController,
            backgroundController,
          ]),
          builder: (context, snapshot) {
            final foreground = foreGroundAnimation.value;
            final background = backgroundAnimation.value;

            final icon = switch (widget.item) {
              NomoMenuIconItem iconItem => Icon(
                  iconItem.icon,
                  color: foreground,
                  size: theme.iconSize,
                ),
              NomoMenuImageItem imageItem => Image(
                  image: imageItem.image,
                  color: foreground,
                ),
            };
            return Material(
              color: background,
              borderRadius: theme.borderRadius,
              child: InkWell(
                onTap: widget.onTap,
                borderRadius: theme.borderRadius,
                hoverColor: Colors.transparent,
                splashColor: Colors.white10,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: theme.hPadding.whenElse(!widget.collapsed, 0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: switch (widget.collapsed) {
                      true => MainAxisAlignment.center,
                      false => MainAxisAlignment.start,
                    },
                    children: [
                      icon,
                      if (!widget.collapsed) ...[
                        SizedBox(width: widget.theme.spacing),
                        NomoText(
                          widget.item.title,
                          color: foreground,
                          style: widget.style,
                        ),
                      ]
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

sealed class NomoMenuItem {
  final String title;

  const NomoMenuItem({required this.title});
}

final class NomoMenuIconItem extends NomoMenuItem {
  final IconData icon;

  const NomoMenuIconItem({
    required String title,
    required this.icon,
  }) : super(title: title);
}

final class NomoMenuImageItem extends NomoMenuItem {
  final ImageProvider image;

  const NomoMenuImageItem({
    required String title,
    required this.image,
  }) : super(title: title);
}
