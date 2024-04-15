import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/buttons/base/nomo_button.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_secondary_button.theme_data.g.dart';

@NomoComponentThemeData('secondaryButton')
class SecondaryNomoButton extends StatelessWidget with NomoButtonMixin {
  final String? text;
  final IconData? icon;
  final double? spacing;
  final TextStyle? textStyle;
  final double? iconSize;
  final ActionType type;
  final Widget? child;
  final bool? translate;
  final Axis direction;

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

  ///
  /// Theme Fields
  ///
  @override
  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @override
  @NomoColorField(Color(0xAA000000))
  final Color? foregroundColor;

  @override
  @NomoColorField(0.0)
  final double? elevation;

  @override
  @NomoColorField(primaryColor)
  final Color? selectionColor;

  @override
  @NomoColorField(Border.fromBorderSide(BorderSide(color: Color(0xAA000000))))
  final Border? border;

  @override
  @NomoColorField<BorderRadiusGeometry>(BorderRadius.all(Radius.circular(8)))
  final BorderRadiusGeometry? borderRadius;

  @override
  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;

  const SecondaryNomoButton({
    super.key,
    this.text,
    this.type = ActionType.def,
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
    this.border,
    this.selectionColor,
    this.child,
    this.expandToConstraints,
    this.translate,
    this.direction = Axis.horizontal,
  }) : assert(child == null || (icon == null && text == null),
            'Either Specify child or text and icon',);

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    final effectiveChild = switch (direction) {
      _ when child != null => child!,
      Axis.horizontal => Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) Icon(icon, size: iconSize),
            if (icon != null && text != null) SizedBox(width: spacing),
            if (text != null)
              NomoText(
                text!,
                style: textStyle,
                translate: translate ?? true,
                useInheritedTheme: true,
              ),
          ],
        ),
      Axis.vertical => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) Icon(icon, size: iconSize),
            if (icon != null && text != null) SizedBox(height: spacing),
            if (text != null)
              Expanded(
                child: NomoText(
                  text!,
                  style: textStyle,
                  translate: translate ?? true,
                  useInheritedTheme: true,
                ),
              ),
          ],
        ),
    };

    return NomoButton(
      elevation: theme.elevation,
      backgroundColor: switch (type) {
        ActionType.disabled ||
        ActionType.nonInteractive =>
          context.colors.disabled,
        _ => theme.backgroundColor,
      },
      foregroundColor: switch (type) {
        ActionType.nonInteractive ||
        ActionType.disabled =>
          context.colors.onDisabled,
        ActionType.danger => context.colors.error,
        _ => theme.foregroundColor,
      },
      shape: shape,
      margin: margin,
      width: width,
      height: height,
      border: theme.border,
      padding: padding,
      borderRadius: theme.borderRadius,
      onPressed: switch (type) {
        ActionType.nonInteractive => null,
        _ => onPressed,
      },
      cursor: switch (type) {
        ActionType.nonInteractive => SystemMouseCursors.forbidden,
        _ => SystemMouseCursors.click,
      },
      enabled: enabled,
      selectionColor: switch (type) {
        ActionType.danger => context.colors.error.darken(),
        ActionType.disabled => context.colors.onDisabled.darken(),
        ActionType.nonInteractive => context.colors.onDisabled,
        _ => theme.selectionColor,
      },
      expandToConstraints: expandToConstraints,
      child: effectiveChild,
    );
  }
}
