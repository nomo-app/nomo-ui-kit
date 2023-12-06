import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class NomoDialog extends StatelessWidget {
  const NomoDialog({
    this.actions,
    required this.content,
    this.title,
    super.key,
    this.showCloseButton = true,
    this.border,
    this.elevation = 2,
    this.borderRadius = const BorderRadius.all(
      Radius.circular(12),
    ),
    this.titleStyle,
    this.widthRatio = 0.75,
    this.padding = const EdgeInsets.all(12),
    this.margin = const EdgeInsets.only(bottom: 16),
    this.closeButtonColor,
    this.closeButtonIconColor,
    this.maxWidth,
    this.maxHeight,
    this.backgroundColor,
    this.titleWidget,
  }) : assert(titleWidget == null || title == null,
            'title and titleWidget cannot be used together');
  final String? title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final Widget content;
  final List<Widget>? actions;
  final BorderSide? border;
  final double? elevation;
  final bool? showCloseButton;
  final double? widthRatio;

  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? closeButtonColor;
  final Color? closeButtonIconColor;
  final double? maxWidth;
  final double? maxHeight;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * widthRatio!;
    final height = MediaQuery.of(context).size.height *
        MediaQuery.of(context).systemGestureInsets.top;
    final rowWidth = width - padding!.horizontal - 100;

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
                            if (title != null)
                              Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  constraints: BoxConstraints(
                                    maxWidth: rowWidth,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: NomoText(
                                      title!,
                                      style: titleStyle ??
                                          context.theme.typographyTheme.h1,
                                    ),
                                  ),
                                ),
                              ),
                            if (titleWidget != null) titleWidget!,
                            // if (showCloseButton!)
                            //   Align(
                            //     alignment: Alignment.topRight,
                            //     child: SizedBox(
                            //       width: 40,
                            //       height: 40,
                            //       child: closeButton ??
                            //           NomoButton.icon(
                            //             onPressed: Navigator.of(context).pop,
                            //             borderRadius: BorderRadius.circular(100),
                            //             icon: const Icon(
                            //               Icons.close,
                            //             ),
                            //           ),
                            //     ),
                            //   ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxHeight: maxHeight ??
                                MediaQuery.of(context).size.height * 0.5,
                          ),
                          child: content,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        if (actions != null && actions!.isNotEmpty)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: actions!,
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
