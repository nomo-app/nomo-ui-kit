import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nomo_ui_kit/components/button/widgets/button_box.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'button_const.dart';

class NomoButton extends HookWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color? color;
  final Color? disabledColor;
  final Color? highlightColor;
  final Color? splashColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final BorderRadiusGeometry borderRadius;
  final BorderSide border;
  final double elevation;
  final bool isEnabled;
  final double? width;
  final double? height;
  final bool isLoading;
  final Widget? loadingWidget;
  final ButtonSize size;
  final Widget? leading;
  final Widget? trailing;

  const NomoButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.size = ButtonSize.small,
    this.width,
    this.height,
    this.color,
    this.isEnabled = ButtonConstants.isEnabled,
    this.disabledColor,
    this.highlightColor,
    this.splashColor,
    this.padding = ButtonConstants.padding,
    this.margin = ButtonConstants.margin,
    this.borderRadius = ButtonConstants.borderRadius,
    this.border = ButtonConstants.border,
    this.elevation = ButtonConstants.elevation,
    this.isLoading = ButtonConstants.isLoading,
    this.loadingWidget,
    this.leading,
    this.trailing,
  });

  factory NomoButton.text({
    required VoidCallback onPressed,
    required String text,
    ButtonSize? size,
    Widget? leading,
    Widget? trailing,
    Color? color,
    Color? disabledColor,
    Color? highlightColor,
    Color? splashColor,
    TextStyle? textStyle,
    EdgeInsetsGeometry padding = ButtonConstants.padding,
    EdgeInsetsGeometry margin = ButtonConstants.margin,
    BorderRadiusGeometry borderRadius = ButtonConstants.borderRadius,
    BorderSide border = ButtonConstants.border,
    double elevation = ButtonConstants.elevation,
    bool isEnabled = ButtonConstants.isEnabled,
    bool isLoading = ButtonConstants.isLoading,
    Widget? loadingWidget,
  }) {
    double? width;
    double? height;

    switch (size) {
      case ButtonSize.small:
        width = ButtonConstants.smallTextButtonWidth;
        height = ButtonConstants.smallTextButtonHeight;
        break;
      case ButtonSize.medium:
        width = ButtonConstants.mediumTextButtonWidth;
        height = ButtonConstants.mediumTextButtonHeight;
        break;
      case ButtonSize.large:
        width = ButtonConstants.largeTextButtonWidth;
        height = ButtonConstants.largeTextButtonHeight;
        break;
      default:
        break;
    }

    return NomoButton(
      onPressed: onPressed,
      color: color,
      disabledColor: disabledColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      padding: padding,
      margin: margin,
      borderRadius: borderRadius,
      border: border,
      elevation: elevation,
      isEnabled: isEnabled,
      width: width,
      height: height,
      isLoading: isLoading,
      loadingWidget: loadingWidget,
      leading: leading,
      trailing: trailing,
      child: NomoText(text, style: textStyle),
    );
  }

  factory NomoButton.icon({
    required VoidCallback onPressed,
    required Widget icon,
    ButtonSize? size,
    Color? color,
    Color? disabledColor,
    Color? highlightColor,
    Color? splashColor,
    EdgeInsetsGeometry padding = ButtonConstants.padding,
    EdgeInsetsGeometry margin = ButtonConstants.margin,
    BorderRadiusGeometry borderRadius = ButtonConstants.borderRadius,
    BorderSide border = ButtonConstants.border,
    double elevation = ButtonConstants.elevation,
    bool isEnabled = ButtonConstants.isEnabled,
    bool isLoading = ButtonConstants.isLoading,
    Widget? loadingWidget,
  }) {
    double? width;
    double? height;

    switch (size) {
      case ButtonSize.small:
        width = ButtonConstants.smallIconButtonWidth;
        height = ButtonConstants.smallIconButtonHeight;
        break;
      case ButtonSize.medium:
        width = ButtonConstants.mediumIconButtonWidth;
        height = ButtonConstants.mediumIconButtonHeight;
        break;
      case ButtonSize.large:
        width = ButtonConstants.largeIconButtonWidth;
        height = ButtonConstants.largeIconButtonHeight;
        break;
      default:
        break;
    }
    return NomoButton(
      onPressed: onPressed,
      color: color,
      disabledColor: disabledColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      padding: padding,
      margin: margin,
      borderRadius: borderRadius,
      border: border,
      elevation: elevation,
      isEnabled: isEnabled,
      width: width,
      height: height,
      isLoading: isLoading,
      loadingWidget: loadingWidget,
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? context.colors.primary;
    final disabledColor = this.disabledColor ?? context.colors.disabledColor;
    final highlightColor = this.highlightColor ?? context.colors.secondary;
    final splashColor = this.splashColor ?? context.colors.surface;

    var isPressed = useState(false);
    final widget = getWidget(child, context);

    return ButtonBox(
      color: getColor(isPressed.value, color, disabledColor, highlightColor),
      disabledColor: disabledColor,
      highlightColor: highlightColor,
      splashColor: splashColor,
      border: border,
      borderRadius: borderRadius,
      elevation: elevation,
      child: isEnabled
          ? InkWell(
              borderRadius: borderRadius.resolve(TextDirection.ltr),
              onTap: () {
                isPressed.value
                    ? isPressed.value = false
                    : isPressed.value = true;
                onPressed();
              },
              splashColor: splashColor,
              child: widget,
            )
          : widget,
    );
  }

  getColor(
      bool isPressed, Color color, Color disabledColor, Color highlightColor) {
    if (isPressed) {
      return highlightColor == ButtonConstants.highlightColor
          ? color
          : highlightColor;
    }
    return isEnabled ? color : disabledColor;
  }

  getWidget(Widget child, BuildContext context) {
    if (child is NomoText && child.style == null) {
      child = NomoText(
        child.data!,
        style: context.typography.b2.copyWith(
          color: context.colors.onPrimary,
        ),
      );
    }
    if (child is Icon && child.color == null) {
      child = Icon(
        child.icon,
        color: context.colors.onPrimary,
      );
    }

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
      ),
      child: Padding(
        padding: padding!,
        child: Center(
          child: isLoading
              ? SizedBox(
                  width: height! - padding!.horizontal,
                  height: height! - padding!.horizontal,
                  child: loadingWidget ??
                      CircularProgressIndicator(
                        color: context.colors.onPrimary,
                      ),
                )
              : leading != null || trailing != null
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (leading != null)
                          Expanded(
                            flex: 1,
                            child: leading!,
                          ),
                        Expanded(
                          flex: 2,
                          child: child,
                        ),
                        if (trailing != null)
                          Expanded(flex: 1, child: trailing!),
                      ],
                    )
                  : FittedBox(
                      fit: BoxFit.fitWidth,
                      child: child,
                    ),
        ),
      ),
    );
  }
}
