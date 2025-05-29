import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/elevatedBox/elevated_box.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';
import 'package:nomo_ui_kit/utils/multi_wrapper.dart';

mixin NomoButtonMixin on Widget {
  EdgeInsetsGeometry? get padding;
  EdgeInsetsGeometry? get margin;
  VoidCallback? get onPressed;
  VoidCallback? get onSecondaryPressed;
  bool? get enabled;
  double? get elevation;
  double? get width;
  double? get height;
  Color? get backgroundColor;
  Color? get foregroundColor;
  Color? get selectionColor;
  BorderRadiusGeometry? get borderRadius;
  BorderSide? get border;
  BoxShape? get shape;
  bool? get expandToConstraints;
  Color? get splashColor;
  Color? get focusColor;
  Color? get highlightColor;
  Color? get hoverColor;
  FocusNode? get focusNode;
}

class NomoButton extends StatefulWidget with NomoButtonMixin {
  final Widget child;
  final bool enableInkwellFeedback;
  final MouseCursor cursor;
  final Gradient? gradient;
  final CustomPainter? backgroundPainter;
  @override
  final BoxShape? shape;
  @override
  final FocusNode? focusNode;

  @override
  final VoidCallback? onSecondaryPressed;

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
  final BorderSide? border;

  final ShapeBorder? shapeBorder;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final EdgeInsetsGeometry? margin;
  @override
  final BorderRadiusGeometry? borderRadius;

  @override
  final bool? expandToConstraints;

  @override
  final Color? splashColor;

  final Color? hoverColor;

  final Color? highlightColor;

  final Color? focusColor;

  const NomoButton({
    required this.child,
    this.focusNode,
    super.key,
    this.onPressed,
    this.shapeBorder,
    this.enableInkwellFeedback = true,
    this.enabled,
    this.backgroundColor,
    this.padding,
    this.margin,
    this.width,
    this.height,
    this.borderRadius,
    this.elevation = 0.0,
    this.backgroundPainter,
    this.border,
    this.selectionColor,
    this.foregroundColor,
    this.shape,
    this.expandToConstraints,
    this.cursor = SystemMouseCursors.click,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.splashColor,
    this.onSecondaryPressed,
    this.gradient,
  });

  @override
  State<NomoButton> createState() => _NomoButtonState();
}

class _NomoButtonState extends State<NomoButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );
  }

  @override
  void didChangeDependencies() {
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
      _ when widget.shape == BoxShape.circle => BorderRadius.circular(1E3),
      final BorderRadiusGeometry borderRadius =>
        borderRadius.resolve(Directionality.of(context)),
      null => null,
    };

    final _shapeBorder = switch (widget.shapeBorder) {
      final ShapeBorder shapeBorder => shapeBorder,
      null when widget.shape == BoxShape.circle => StadiumBorder(
          side: widget.border ?? BorderSide.none,
        ),
      null when widget.borderRadius != null => RoundedRectangleBorder(
          borderRadius: widget.borderRadius!,
          side: widget.border ?? BorderSide.none,
        ),
      _ => null,
    };

    final child = MultiWrapper(
      wrappers: [
        if (widget.selectionColor != null && widget.border != null)
          (child) {
            return AnimatedBuilder(
              animation: animation,
              builder: (context, child) {
                return Material(
                  elevation: widget.elevation,
                  shape: _shapeBorder?.copyWithColor(animation.value),
                  color: widget.backgroundColor,
                  child: child,
                );
              },
              child: child,
            );
          }
        else
          (child) {
            return Material(
              elevation: widget.elevation,
              shape: _shapeBorder,
              color: widget.backgroundColor,
              child: child,
            );
          },
      ],
      child: CustomPaint(
        painter: widget.backgroundPainter,
        child: MouseRegion(
          onEnter: (_) => _controller.forward(),
          onExit: (_) => _controller.reverse(),
          child: InkWell(
            focusNode: widget.focusNode,
            onTap: widget.enabled ?? true ? widget.onPressed : null,
            customBorder: widget.shapeBorder,
            onSecondaryTap: widget.onSecondaryPressed,
            hoverColor: widget.hoverColor ?? Colors.transparent,
            splashColor: widget.splashColor ?? Colors.transparent,
            highlightColor: widget.highlightColor ?? Colors.transparent,
            focusColor: widget.focusColor ?? Colors.transparent,
            mouseCursor: (widget.enabled ?? true)
                ? widget.cursor
                : SystemMouseCursors.basic,
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
                  if (widget.selectionColor == null &&
                      widget.foregroundColor != null)
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
    ).wrapIf(
      widget.gradient != null,
      (child) => DecoratedBox(
        decoration: BoxDecoration(
          gradient: widget.gradient,
          borderRadius: widget.borderRadius,
          shape: widget.shape ?? BoxShape.rectangle,
        ),
        child: child,
      ),
    );

    if (widget.expandToConstraints != null && widget.expandToConstraints!) {
      return LayoutBuilder(
        builder: (context, constraints) {
          final maxWidth = constraints.maxWidth;
          final effectiveWidth = switch (maxWidth) {
            double.infinity => widget.width,
            _ when widget.expandToConstraints ?? false => maxWidth,
            _ => widget.width,
          };

          return Padding(
            padding: widget.margin ?? EdgeInsets.zero,
            child: SizedBox(
              width: effectiveWidth,
              height: widget.height,
              child: child,
            ),
          );
        },
      );
    }

    return Padding(
      padding: widget.margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: widget.width,
        height: widget.height,
        child: child,
      ),
    );
  }
}

extension BorderUtil on ShapeBorder {
  ShapeBorder copyWithColor(Color? color) {
    return switch (this) {
      final OutlinedBorder border => border.copyWith(
          side: border.side.copyWith(color: color),
        ),
      _ => this,
    };
  }
}
