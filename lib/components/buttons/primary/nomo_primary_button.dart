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

@NomoComponentThemeData('primaryButtonTheme')
class PrimaryNomoButton extends StatelessWidget with NomoButtonMixin {
  final String? text;
  final IconData? icon;
  final double? spacing;
  final TextStyle? textStyle;
  final double? iconSize;
  final ActionType type;

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

  /// Not used
  @override
  Color? get selectionColor => null;
  @override
  Border? get border => null;

  const PrimaryNomoButton({
    super.key,
    this.type = ActionType.def,
    this.text,
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
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return NomoButton(
      elevation: theme.elevation,
      backgroundColor: switch (type) {
        ActionType.danger => context.colors.error,
        ActionType.disabled || ActionType.nonInteractive => context.colors.disabled,
        _ => theme.backgroundColor,
      },
      foregroundColor: switch (type) {
        ActionType.nonInteractive => context.colors.onDisabled,
        _ => theme.foregroundColor,
      },
      shape: shape,
      margin: margin,
      width: width,
      height: height,
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
      child: Row(
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
          if (icon != null && text != null) SizedBox(width: spacing),
          if (text != null && type == ActionType.loading) SizedBox(width: spacing),
          if (text != null) NomoText(text!, style: textStyle),
        ],
      ),
    );
  }
}
