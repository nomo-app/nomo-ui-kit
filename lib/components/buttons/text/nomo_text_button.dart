import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/buttons/base/nomo_button.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_text_button.theme_data.g.dart';

@NomoComponentThemeData('textButton')
class NomoTextButton extends StatelessWidget with NomoButtonMixin {
  final String? text;
  final TextStyle? textStyle;
  final Widget? child;
  final bool? translate;

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

  ///
  /// Theme Fields
  ///

  @override
  @NomoColorField(Colors.black87)
  final Color? foregroundColor;
  @override
  @NomoSizingField<EdgeInsetsGeometry>(EdgeInsets.all(16))
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
  @override
  Color? get backgroundColor => null;
  @override
  double? get elevation => null;

  const NomoTextButton({
    this.text,
    super.key,
    this.foregroundColor,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.onPressed,
    this.enabled,
    this.borderRadius,
    this.textStyle,
    this.shape,
    this.child,
    this.translate,
    this.expandToConstraints,
    this.splashColor,
    this.hoverColor,
    this.focusColor,
    this.highlightColor,
    this.focusNode,
    this.onSecondaryPressed,
  }) : assert(child != null || text != null, 'Must specify child or text');

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return NomoButton(
      foregroundColor: theme.foregroundColor,
      shape: shape,
      margin: margin,
      width: width,
      height: height,
      padding: padding,
      borderRadius: theme.borderRadius,
      onPressed: onPressed,
      enabled: enabled,
      splashColor: theme.splashColor,
      focusColor: theme.focusColor,
      hoverColor: theme.hoverColor,
      highlightColor: theme.highlightColor,
      expandToConstraints: expandToConstraints,
      onSecondaryPressed: onSecondaryPressed,
      child: child ??
          NomoText(
            text!,
            style: textStyle,
            translate: translate ?? true,
          ),
    );
  }
}
