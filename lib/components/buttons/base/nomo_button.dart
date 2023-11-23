import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/elevatedBox/elevatedBox.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/multi_wrapper.dart';

mixin NomoButtonMixin on Widget {
  EdgeInsetsGeometry? get padding;
  EdgeInsetsGeometry? get margin;
  VoidCallback? get onPressed;
  bool? get enabled;
  double? get elevation;
  double? get width;
  double? get height;
  Color? get backgroundColor;
  Color? get foregroundColor;
  Color? get selectionColor;
  BorderRadiusGeometry? get borderRadius;
  Border? get border;
  BoxShape? get shape;
}

class NomoButton extends StatefulWidget with NomoButtonMixin {
  final Widget child;
  final bool enableInkwellFeedback;
  final MouseCursor cursor;

  @override
  final VoidCallback? onPressed;
  @override
  final bool? enabled;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  @override
  final Color? selectionColor;
  @override
  final double elevation;
  @override
  final Border? border;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final EdgeInsetsGeometry? margin;
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
  final BoxShape? shape;

  const NomoButton({
    required this.child,
    super.key,
    this.onPressed,
    this.enableInkwellFeedback = true,
    this.enabled,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.borderRadius,
    this.elevation = 0.0,
    this.border,
    this.selectionColor,
    this.foregroundColor,
    this.shape,
    this.cursor = SystemMouseCursors.click,
  });

  @override
  State<NomoButton> createState() => _NomoButtonState();
}

class _NomoButtonState extends State<NomoButton> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Color?> animation;

  @override
  void didChangeDependencies() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
    animation = ColorTween(
      begin: widget.foregroundColor,
      end: widget.selectionColor,
    ).animate(_controller);

    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(NomoButton oldWidget) {
    animation = ColorTween(
      begin: widget.foregroundColor,
      end: widget.selectionColor,
    ).animate(_controller);
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final borderRadius = switch (widget.borderRadius) {
      final BorderRadiusGeometry borderRadius => borderRadius.resolve(Directionality.of(context)),
      null when widget.shape == BoxShape.circle => BorderRadius.circular(1E3),
      null => null,
    };

    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: MultiWrapper(
          wrappers: [
            if (widget.selectionColor != null && widget.border != null)
              (child) {
                return AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    return ElevatedBox(
                      elevation: widget.elevation,
                      border: widget.border!.copyWithColor(animation.value),
                      decoration: BoxDecoration(
                        color: widget.backgroundColor,
                        borderRadius: widget.borderRadius.ifElseNull(widget.shape != BoxShape.circle),
                        shape: widget.shape ?? BoxShape.rectangle,
                      ),
                      child: child!,
                    );
                  },
                  child: child,
                );
              }
            else
              (child) {
                return ElevatedBox(
                  elevation: widget.elevation,
                  border: widget.border ?? const Border.fromBorderSide(BorderSide.none),
                  decoration: BoxDecoration(
                    color: widget.backgroundColor,
                    borderRadius: widget.borderRadius.ifElseNull(widget.shape != BoxShape.circle),
                    shape: widget.shape ?? BoxShape.rectangle,
                  ),
                  child: child,
                );
              },
          ],
          child: Material(
            type: MaterialType.transparency,
            child: MouseRegion(
              onEnter: (_) => _controller.forward(),
              onExit: (_) => _controller.reverse(),
              child: InkWell(
                onTap: widget.onPressed,
                borderRadius: borderRadius,
                hoverColor: widget.backgroundColor
                    ?.darken(0.05)
                    .ifElse(
                      widget.selectionColor == null,
                      other: Colors.transparent,
                    )
                    .ifElse(
                      widget.enableInkwellFeedback,
                      other: Colors.transparent,
                    ),
                splashColor: Colors.black.withOpacity(0.06).ifElse(
                      widget.enableInkwellFeedback,
                      other: Colors.transparent,
                    ),
                focusColor: widget.backgroundColor
                    ?.darken(0.05)
                    .ifElse(
                      widget.selectionColor == null,
                      other: Colors.black.withOpacity(0.06),
                    )
                    .ifElse(
                      widget.enableInkwellFeedback,
                      other: Colors.transparent,
                    ),
                mouseCursor: widget.cursor,
                child: Padding(
                  padding: widget.padding ?? EdgeInsets.zero,
                  child: MultiWrapper(
                    wrappers: [
                      if (widget.width != null) (child) => Center(child: child),
                      if (widget.height != null && widget.width == null)
                        (child) => Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [child],
                            ),
                      if (widget.selectionColor != null)
                        (child) {
                          return AnimatedBuilder(
                            animation: animation,
                            builder: (context, child) {
                              final colorValue = animation.value!;
                              return NomoTextTheme(
                                color: colorValue,
                                child: IconTheme(
                                  data: IconTheme.of(context).copyWith(
                                    color: colorValue,
                                  ),
                                  child: child!,
                                ),
                              );
                            },
                            child: child,
                          );
                        },
                      if (widget.selectionColor == null && widget.foregroundColor != null)
                        (child) => NomoTextTheme(
                              color: widget.foregroundColor!,
                              child: IconTheme(
                                data: IconTheme.of(context).copyWith(
                                  color: widget.foregroundColor,
                                ),
                                child: child,
                              ),
                            ),
                    ],
                    child: widget.child,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

extension BorderUtil on Border {
  Border copyWithColor(Color? color) {
    return Border(
      top: top.copyWith(color: color),
      bottom: bottom.copyWith(color: color),
      left: left.copyWith(color: color),
      right: right.copyWith(color: color),
    );
  }
}