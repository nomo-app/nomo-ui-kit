import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';

class NomoHorizontalListTile extends StatefulWidget {
  const NomoHorizontalListTile({
    required this.item,
    required this.theme,
    super.key,
    this.style,
    this.onTap,
    this.selected = false,
  });
  final NomoMenuItem item;
  final NomoBottomBarThemeData theme;
  final TextStyle? style;

  final VoidCallback? onTap;
  final bool selected;

  @override
  State<NomoHorizontalListTile> createState() => _NomoHorizontalListTileState();
}

class _NomoHorizontalListTileState extends State<NomoHorizontalListTile>
    with SingleTickerProviderStateMixin {
  NomoBottomBarThemeData get theme => widget.theme;

  late final AnimationController foregroundController = AnimationController(
    duration: kDuration,
    vsync: this,
  );

  late Animation<Color?> foreGroundAnimation;

  @override
  void initState() {
    foreGroundAnimation = ColorTween(
      begin: widget.theme.foreground,
      end: widget.theme.selectedForeground,
    ).animate(foregroundController);

    super.initState();
  }

  @override
  void dispose() {
    foregroundController.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(oldWidget) {
    foreGroundAnimation = ColorTween(
      begin: widget.theme.foreground,
      end: widget.theme.selectedForeground,
    ).animate(foregroundController);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selected) {
      foregroundController.forward();
    } else {
      foregroundController.reverse();
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
        animation: foregroundController,
        builder: (context, snapshot) {
          final foreground = foreGroundAnimation.value;

          final icon = switch (widget.item) {
            final NomoMenuIconItem iconItem => Icon(
                iconItem.icon,
                color: foreground,
                size: theme.iconSize,
              ),
            final NomoMenuImageItem imageItem => Image(
                image: imageItem.image,
                color: foreground,
              ),
            _ => null
          };
          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              borderRadius: theme.borderRadius,
              hoverColor: Colors.transparent,
              splashColor: Colors.white10,
              child: Padding(
                padding: theme.itemPadding,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (icon != null) icon,
                      SizedBox(height: widget.theme.spacing),
                      NomoText(
                        widget.item.title,
                        color: foreground,
                        style: widget.style,
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
