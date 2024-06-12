import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_snackbar.theme_data.g.dart';

@NomoComponentThemeData('snackBar')
class NomoSnackBar extends StatelessWidget {
  final Widget leading;
  final Widget content;
  final SnackBarBehavior behavior;
  final double? width;
  final bool indentBySider;

  @NomoSizingField(64.0)
  final double? height;

  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsets? margin;

  @NomoSizingField(12.0)
  final double? spacing;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoColorField(Colors.black)
  final Color? foregroundColor;

  @NomoColorField(0.0)
  final double? elevation;

  @NomoConstant(BorderRadius.all(Radius.circular(8.0)))
  final BorderRadius? borderRadius;

  @NomoColorField(BorderSide.none)
  final BorderSide? border;

  const NomoSnackBar({
    required this.leading,
    required this.content,
    super.key,
    this.indentBySider = false,
    this.backgroundColor,
    this.foregroundColor,
    this.height,
    this.width,
    this.spacing,
    this.margin,
    this.elevation,
    this.borderRadius,
    this.border,
    this.behavior = SnackBarBehavior.floating,
  });

  SnackBar buildSnackBar(BuildContext context) {
    final theme = getFromContext(context, this);
    return SnackBar(
      margin: width == null
          ? indentBySider
              ? theme.margin.add(
                  EdgeInsets.only(
                    left: context.componentSizes.siderSizing.width,
                  ),
                )
              : theme.margin
          : null,
      content: build(context),
      padding: EdgeInsets.zero,
      behavior: behavior,
      width: width,
      backgroundColor: theme.backgroundColor,
      elevation: theme.elevation,
      shape: RoundedRectangleBorder(
        borderRadius: theme.borderRadius,
        side: theme.border,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return Container(
      height: theme.height,
      alignment: Alignment.center,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconTheme(
            data: IconThemeData(
              color: theme.foregroundColor,
              size: 28,
            ),
            child: leading,
          ),
          SizedBox(width: theme.spacing),
          NomoDefaultTextStyle(
            style: context.typography.b3,
            child: NomoTextTheme(color: theme.foregroundColor, child: content),
          ),
        ],
      ),
    );
  }
}
