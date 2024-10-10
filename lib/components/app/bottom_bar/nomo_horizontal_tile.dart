import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nomo_ui_kit/components/app/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';

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
    this.padding,
    this.axis = Axis.vertical,
    this.height,
  });
  final NomoMenuItem<T> item;
  final NomoBottomBarThemeData theme;
  final TextStyle? style;
  final double? widthFactor;
  final double? itemWidth;
  final EdgeInsetsGeometry? padding;

  final VoidCallback? onTap;
  final bool selected;
  final Axis axis;
  final double? height;

  @override
  State<NomoHorizontalListTile<T>> createState() =>
      _NomoHorizontalListTileState();
}

class _NomoHorizontalListTileState<T> extends State<NomoHorizontalListTile<T>>
    with SingleTickerProviderStateMixin {
  NomoBottomBarThemeData get theme => widget.theme;

  late final AnimationController foregroundController = AnimationController(
    duration: kDuration,
    vsync: this,
    value: widget.selected ? 1 : 0,
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
  void didUpdateWidget(NomoHorizontalListTile<T> oldWidget) {
    foreGroundAnimation = ColorTween(
      begin: widget.theme.foreground,
      end: widget.theme.selectedForeground,
    ).animate(foregroundController);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.selected == false) {
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
            final NomoMenuIconItem<T> iconItem => Icon(
                iconItem.icon,
                color: foreground,
                size: theme.iconSize,
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
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onTap,
              borderRadius: theme.borderRadius,
              hoverColor: Colors.transparent,
              splashColor: Colors.white10,
              child: SizedBox(
                width: widget.itemWidth,
                height: widget.height,
                child: switch (widget.axis) {
                  Axis.vertical => Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (icon != null) icon,
                        NomoText(
                          widget.item.title,
                          color: foreground,
                          style: widget.style,
                        ),
                      ],
                    ),
                  Axis.horizontal => Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        if (icon != null) icon,
                        NomoText(
                          widget.item.title,
                          color: foreground,
                          style: widget.style,
                        ),
                      ],
                    ),
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
