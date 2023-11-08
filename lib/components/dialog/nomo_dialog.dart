import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class NomoDialog extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final Widget content;
  final List<Widget> actions;
  final BorderSide? border;
  final double? elevation;
  final bool? showCloseButton;
  final double? widthRatio;
  final NomoButton? closeButton;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? closeButtonColor;
  final Color? closeButtonIconColor;
  final double? maxWidth;
  final double? maxHeight;

  const NomoDialog({
    super.key,
    required this.title,
    required this.actions,
    required this.content,
    this.showCloseButton = true,
    this.border,
    this.closeButton,
    this.elevation = 2,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(12.0),
    ),
    this.titleStyle,
    this.widthRatio = 0.75,
    this.padding = const EdgeInsets.all(12.0),
    this.margin = const EdgeInsets.only(bottom: 16),
    this.closeButtonColor,
    this.closeButtonIconColor,
    this.maxWidth,
    this.maxHeight,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width * widthRatio!;
    final double height = MediaQuery.of(context).size.height *
        MediaQuery.of(context).systemGestureInsets.top;
    final double rowWidth = width - padding!.horizontal - 100;

    return SizedBox(
      height: height,
      child: Column(
        children: [
          Expanded(
              child: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: maxWidth ?? width),
              child: Material(
                type: MaterialType.transparency,
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor ?? context.colors.surface,
                    borderRadius: borderRadius,
                  ),
                  width: width,
                  margin: margin,
                  padding: padding,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              constraints: BoxConstraints(
                                maxWidth: rowWidth,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: NomoText(
                                  title,
                                  style: titleStyle ??
                                      context.theme.typographyTheme.h1,
                                ),
                              ),
                            ),
                          ),
                          if (showCloseButton!)
                            Align(
                              alignment: Alignment.topRight,
                              child: SizedBox(
                                width: 40,
                                height: 40,
                                child: closeButton ??
                                    NomoButton.icon(
                                      onPressed: Navigator.of(context).pop,
                                      borderRadius: BorderRadius.circular(100),
                                      icon: Icon(
                                        Icons.close,
                                      ),
                                    ),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(
                          maxHeight: maxHeight ??
                              MediaQuery.of(context).size.height * 0.5,
                          minHeight: 0,
                        ),
                        child: content,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      if (actions.isNotEmpty)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: actions,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
