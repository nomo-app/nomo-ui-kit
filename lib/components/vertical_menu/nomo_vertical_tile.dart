import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_vertical_tile.theme_data.g.dart';

@NomoComponentThemeData('verticalListTileTheme')
class NomoVerticalListTile<T> extends StatefulWidget {
  @NomoConstant(TextStyle())
  final TextStyle? titleStyle;

  @NomoConstant(TextStyle())
  final TextStyle? subtitleStyle;

  @NomoConstant(TextStyle())
  final TextStyle? traillingStyle;

  const NomoVerticalListTile({
    required this.item,
    required this.menuTheme,
    super.key,
    this.collapsed = false,
    this.onTap,
    this.selected = false,
    this.titleStyle,
    this.subtitleStyle,
    this.traillingStyle,
  });
  final NomoMenuItem<T> item;
  final NomoVerticalMenuThemeData menuTheme;

  final bool collapsed;
  final VoidCallback? onTap;
  final bool selected;

  double getIntrinsicWidth(BuildContext context) {
    final theme = getFromContext(context, this);

    final titleWidth = calculateTextSize(
      text: item.title,
      style: theme.titleStyle,
    ).width;

    final subTitleWidth = item.subtitle != null
        ? calculateTextSize(
            text: item.subtitle!,
            style: theme.subtitleStyle,
          ).width
        : 0;

    final _titleWidth = max(titleWidth, subTitleWidth);

    return (menuTheme.hPadding * 2) + menuTheme.spacing + _titleWidth + 24;
  }

  @override
  State<NomoVerticalListTile<T>> createState() => _NomoVerticalListTileState();
}

class _NomoVerticalListTileState<T> extends State<NomoVerticalListTile<T>>
    with TickerProviderStateMixin {
  NomoVerticalMenuThemeData get menuTheme => widget.menuTheme;

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
  late Animation<BorderSide?> borderAnimation;

  @override
  void initState() {
    foreGroundAnimation = ColorTween(
      begin: widget.menuTheme.foreground,
      end: widget.menuTheme.selectedForeground,
    ).animate(foregroundController);

    backgroundAnimation = ColorTween(
      begin: widget.menuTheme.background,
      end: widget.menuTheme.selectedBackground,
    ).animate(backgroundController);

    borderAnimation = BorderSideTween(
      begin: widget.menuTheme.border,
      end: widget.menuTheme.selectedBorder,
    ).animate(backgroundController);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant NomoVerticalListTile<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    foreGroundAnimation = ColorTween(
      begin: widget.menuTheme.foreground,
      end: widget.menuTheme.selectedForeground,
    ).animate(foregroundController);

    backgroundAnimation = ColorTween(
      begin: widget.menuTheme.background,
      end: widget.menuTheme.selectedBackground,
    ).animate(backgroundController);

    borderAnimation = BorderSideTween(
      begin: widget.menuTheme.border,
      end: widget.menuTheme.selectedBorder,
    ).animate(
      CurvedAnimation(
        parent: backgroundController,
        curve: Curves.fastLinearToSlowEaseIn,
      ),
    );
  }

  @override
  void dispose() {
    foregroundController.dispose();
    backgroundController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, widget);

    if (widget.selected) {
      foregroundController.forward();
      backgroundController.forward();
    } else {
      foregroundController.reverse();
      backgroundController.reverse();
    }

    return SizedBox(
      height: menuTheme.height,
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
            final border = borderAnimation.value;

            final icon = switch (widget.item) {
              final NomoMenuIconItem<T> iconItem => Icon(
                  iconItem.icon,
                  color: foreground,
                  size: menuTheme.iconSize,
                ),
              final NomoMenuImageItem<T> imageItem
                  when imageItem.imagePath.contains('svg') =>
                SvgPicture.asset(
                  imageItem.imagePath,
                  color: foreground,
                  width: menuTheme.iconSize,
                  //colorFilter: ,
                ),
              final NomoMenuImageItem<T> imageItem => Image.asset(
                  imageItem.imagePath,
                  color: foreground,
                  width: menuTheme.iconSize,
                  fit: BoxFit.contain,
                ),
              _ => null
            };
            return Material(
              color: background,
              shape: RoundedRectangleBorder(
                side: border ?? BorderSide.none,
                borderRadius: menuTheme.borderRadius,
              ),
              child: InkWell(
                onTap: widget.onTap,
                borderRadius: menuTheme.borderRadius,
                hoverColor: Colors.transparent,
                splashColor: Colors.white10,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        menuTheme.hPadding.whenElse(!widget.collapsed, 0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: switch (widget.collapsed) {
                      true => MainAxisAlignment.center,
                      false => MainAxisAlignment.start,
                    },
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      if (icon != null) icon,
                      if (!widget.collapsed) ...[
                        SizedBox(width: widget.menuTheme.spacing),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            NomoText(
                              widget.item.title,
                              color: foreground,
                              style: theme.titleStyle,
                            ),
                            if (widget.item.subtitle != null)
                              NomoText(
                                widget.item.subtitle!,
                                color: foreground,
                                style: theme.subtitleStyle,
                              ),
                          ],
                        ),
                        const Spacer(),
                        if (widget.item.trailling != null)
                          NomoTextTheme(
                            color: foreground!,
                            child: NomoDefaultTextStyle(
                              style: theme.traillingStyle,
                              child: widget.item.trailling!,
                            ),
                          ),
                      ],
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

class BorderSideTween extends Tween<BorderSide> {
  BorderSideTween({
    super.begin,
    super.end,
  });

  @override
  BorderSide lerp(double t) {
    return BorderSide.lerp(begin ?? BorderSide.none, end ?? BorderSide.none, t);
  }
}
