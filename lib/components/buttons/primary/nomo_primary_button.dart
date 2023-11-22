import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/buttons/base/nomo_button.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_primary_button.theme_data.g.dart';

@NomoComponentThemeData("primaryButtonTheme")
class PrimaryNomoButton extends StatelessWidget with NomoButtonMixin {
  final String? text;
  final IconData? icon;
  final double? spacing;
  final TextStyle? textStyle;
  final double? iconSize;

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
    this.text,
    this.icon,
    this.spacing,
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
      backgroundColor: theme.backgroundColor,
      foregroundColor: theme.foregroundColor,
      shape: shape,
      margin: margin,
      width: width,
      height: height,
      padding: padding,
      borderRadius: theme.borderRadius,
      onPressed: onPressed,
      enabled: enabled,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) Icon(icon, size: iconSize),
          if (icon != null && text != null) SizedBox(width: spacing),
          if (text != null) NomoText(text!, style: textStyle),
        ],
      ),
    );
  }
}
