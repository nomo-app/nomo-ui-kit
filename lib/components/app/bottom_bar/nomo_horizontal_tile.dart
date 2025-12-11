import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nomo_ui_kit/components/app/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class NomoHorizontalListTile<T> extends StatefulWidget {
  const NomoHorizontalListTile({
    required this.item,
    required this.theme,
    this.widthFactor,
    this.itemWidth,
    super.key,
    this.style,
    this.onTap,
    this.selected = false,
    this.direction,
  });
  final NomoMenuItem<T> item;
  final NomoBottomBarThemeData theme;
  final TextStyle? style;
  final double? widthFactor;
  final double? itemWidth;
  final Axis? direction;

  final VoidCallback? onTap;
  final bool selected;

  @override
  State<NomoHorizontalListTile<T>> createState() =>
      _NomoHorizontalListTileState();
}

class _NomoHorizontalListTileState<T> extends State<NomoHorizontalListTile<T>>
    with TickerProviderStateMixin {
  NomoBottomBarThemeData get theme => widget.theme;

  late final AnimationController foregroundController = AnimationController(
    duration: kDuration,
    vsync: this,
  );

  late final AnimationController backgroundController = AnimationController(
    duration: kDuration,
    vsync: this,
  );

  late Animation<Color?> foreGroundAnimation;
  late Animation<Color?> backgroundAnimation;

  @override
  void initState() {
    foreGroundAnimation = ColorTween(
      begin: widget.theme.foreground,
      end: widget.theme.selectedForeground,
    ).animate(foregroundController);

    backgroundAnimation = ColorTween(
      begin: widget.theme.itemBackground,
      end: widget.theme.selectedBackground,
    ).animate(backgroundController);

    super.initState();
  }

  @override
  void dispose() {
    foregroundController.dispose();
    backgroundController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(NomoHorizontalListTile<T> oldWidget) {
    foreGroundAnimation = ColorTween(
      begin: widget.theme.foreground,
      end: widget.theme.selectedForeground,
    ).animate(foregroundController);

    backgroundAnimation = ColorTween(
      begin: widget.theme.itemBackground,
      end: widget.theme.selectedBackground,
    ).animate(backgroundController);

    super.didUpdateWidget(oldWidget);
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

    return MouseRegion(
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
            final NomoMenuIconItem<T> iconItem => Icon(
                iconItem.icon,
                color: foreground,
                size: theme.iconSize,
                weight: 4,
              ),
            final NomoMenuImageItem<T> imageItem
                when imageItem.imagePath.contains('svg') =>
              SvgPicture.asset(
                imageItem.imagePath,
                width: theme.iconSize,
                colorFilter: foreground != null
                    ? ColorFilter.mode(foreground, BlendMode.srcIn)
                    : null,
              ),
            final NomoMenuImageItem<T> imageItem => Image.asset(
                imageItem.imagePath,
                color: foreground,
                width: theme.iconSize,
                fit: BoxFit.contain,
              ),
            _ => null
          };
          return Material(
            color: background,
            borderRadius: theme.itemBorderRadius,
            child: InkWell(
              onTap: widget.onTap,
              borderRadius: theme.itemBorderRadius,
              splashColor: context.colors.primary.withValues(alpha: 0.2),
              hoverColor: context.colors.primary.withValues(alpha: 0.06),
              focusColor: context.colors.primary.withValues(alpha: 0.1),
              highlightColor: context.colors.primary.withValues(alpha: 0.06),
              child: Container(
                width: widget.itemWidth,
                padding: widget.theme.itemPadding,
                child: Center(
                  widthFactor: widget.widthFactor,
                  child: Flex(
                    direction: widget.direction ?? Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      if (icon != null) icon,
                      8.hSpacing,
                      Row(
                        children: [
                          if (widget.item.leading != null)
                            NomoTextTheme(
                              color: foreground!,
                              child: widget.item.leading!,
                            ),
                          NomoText(
                            widget.item.title,
                            color: foreground,
                            style: widget.style,
                            maxLines: 1,
                          ),
                          if (widget.item.trailling != null)
                            NomoTextTheme(
                              color: foreground!,
                              child: widget.item.trailling!,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
