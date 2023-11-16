import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

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
        calculateTextSize(text: item.title, style: style).width +
        24;
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

  late Animation<Color?> foreGroundAnimation;
  late Animation<Color?> backgroundAnimation;

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
  void didUpdateWidget(covariant NomoVerticalListTile oldWidget) {
    super.didUpdateWidget(oldWidget);

    foreGroundAnimation = ColorTween(
      begin: widget.theme.foreground,
      end: widget.theme.selectedForeground,
    ).animate(foregroundController);

    backgroundAnimation = ColorTween(
      begin: widget.theme.background,
      end: widget.theme.selectedBackground,
    ).animate(backgroundController);
  }

  @override
  void dispose() {
    foregroundController.dispose();
    backgroundController.dispose();
    super.dispose();
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
              _ => null
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
                      if (icon != null) icon,
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
