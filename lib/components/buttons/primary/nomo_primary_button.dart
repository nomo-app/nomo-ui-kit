import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/buttons/base/nomo_button.dart';
import 'package:nomo_ui_kit/components/loading/loading.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_primary_button.theme_data.g.dart';

enum ActionType {
  def,
  danger,
  disabled,
  nonInteractive,
  loading;
}

@NomoComponentThemeData('primaryButton')
class PrimaryNomoButton extends StatelessWidget with NomoButtonMixin {
  final String? text;
  final IconData? icon;
  final double? spacing;
  final TextStyle? textStyle;
  final double? iconSize;
  final ActionType type;
  final Widget? child;
  final bool? translate;
  final Axis direction;
  final Gradient? gradient;
  final CustomPainter? backgroundPainter;

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
  final EdgeInsetsGeometry? margin;
  @override
  final BoxShape? shape;
  @override
  final bool? expandToConstraints;

  final ShapeBorder? shapeBorder;

  ///
  /// Theme Fields
  ///
  @override
  @NomoColorField(primaryColor)
  final Color? backgroundColor;
  @override
  @NomoColorField(Colors.white)
  final Color? foregroundColor;
  @override
  @NomoColorField(1.0)
  final double? elevation;
  @override
  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;
  @override
  @NomoColorField<BorderRadiusGeometry>(BorderRadius.all(Radius.circular(8)))
  final BorderRadiusGeometry? borderRadius;

  @override
  @NomoColorField<Color?>(null)
  final Color? splashColor;

  @override
  @NomoColorField<Color?>(null)
  final Color? hoverColor;

  @override
  @NomoColorField<Color?>(null)
  final Color? highlightColor;

  @override
  @NomoColorField<Color?>(null)
  final Color? focusColor;

  /// Not used
  @override
  Color? get selectionColor => null;
  @override
  BorderSide? get border => null;

  const PrimaryNomoButton({
    super.key,
    this.shapeBorder,
    this.type = ActionType.def,
    this.gradient,
    this.text,
    this.backgroundPainter,
    this.icon,
    this.spacing = 12,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.onPressed,
    this.enabled,
    this.borderRadius,
    this.textStyle,
    this.iconSize,
    this.shape,
    this.child,
    this.expandToConstraints,
    this.translate,
    this.splashColor,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.focusNode,
    this.direction = Axis.horizontal,
    this.onSecondaryPressed,
  }) : assert(
          child == null || (icon == null && text == null),
          'Either Specify child or text and icon',
        );

  factory PrimaryNomoButton.iconButton({
    required IconData icon,
    required void Function() onTap,
    Color backgroundColor = Colors.transparent,
  }) {
    return PrimaryNomoButton(
      icon: icon,
      padding: EdgeInsets.zero,
      shape: BoxShape.circle,
      onPressed: onTap,
      backgroundColor: backgroundColor,
      width: 48,
      height: 48,
      elevation: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    final foregroundColor = switch (type) {
      ActionType.nonInteractive ||
      ActionType.disabled =>
        context.colors.onDisabled,
      _ => theme.foregroundColor,
    };
    final textStyle = this
        .textStyle
        ?.copyWith(color: foregroundColor, fontWeight: FontWeight.bold);

    final effectiveChild = switch (direction) {
      _ when child != null => child!,
      Axis.horizontal => Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (type == ActionType.loading)
              Loading(
                size: switch (height) {
                  final double height => height / 3,
                  _ => 24,
                },
                color: foregroundColor,
              )
            else if (icon != null)
              Icon(icon, size: iconSize),
            if (icon != null && text != null) SizedBox(width: spacing),
            if (text != null && type == ActionType.loading)
              SizedBox(width: spacing),
            if (text != null)
              NomoText(
                text!,
                style: textStyle,
                translate: translate ?? true,
              ),
          ],
        ),
      Axis.vertical => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (type == ActionType.loading)
              Loading(
                size: switch (height) {
                  final double height => height / 3,
                  _ => 24,
                },
                color: foregroundColor,
              )
            else if (icon != null)
              Icon(icon, size: iconSize),
            if (icon != null && text != null) SizedBox(height: spacing),
            if (text != null && type == ActionType.loading)
              SizedBox(height: spacing),
            if (text != null)
              NomoText(
                text!,
                style: textStyle,
                translate: translate ?? true,
              ),
          ],
        ),
    };

    return NomoButton(
      elevation: theme.elevation,
      backgroundColor: switch (type) {
        ActionType.danger => context.colors.error,
        ActionType.disabled ||
        ActionType.nonInteractive =>
          context.colors.disabled,
        _ => theme.backgroundColor,
      },
      backgroundPainter: backgroundPainter,
      gradient: gradient,
      focusNode: focusNode,
      splashColor: theme.splashColor,
      focusColor: theme.focusColor,
      hoverColor: theme.hoverColor,
      highlightColor: theme.highlightColor,
      foregroundColor: foregroundColor,
      shape: shape,
      margin: margin,
      width: width,
      shapeBorder: shapeBorder,
      height: height,
      padding: theme.padding,
      borderRadius: theme.borderRadius,
      onSecondaryPressed: onSecondaryPressed,
      onPressed: switch (type) {
        ActionType.nonInteractive => null,
        _ => onPressed,
      },
      cursor: switch (type) {
        ActionType.nonInteractive => SystemMouseCursors.forbidden,
        _ => SystemMouseCursors.click,
      },
      enabled: enabled,
      expandToConstraints: expandToConstraints,
      child: effectiveChild,
    );
  }
}
