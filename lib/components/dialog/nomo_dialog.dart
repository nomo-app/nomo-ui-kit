import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/app/app_bar/layout/appbar_layout_delegate.dart';
import 'package:nomo_ui_kit/components/buttons/secondary/nomo_secondary_button.dart';
import 'package:nomo_ui_kit/components/elevatedBox/elevated_box.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_dialog.theme_data.g.dart';

@NomoComponentThemeData('dialogTheme')
class NomoDialog extends StatelessWidget {
  const NomoDialog({
    required this.content,
    this.actions,
    this.title,
    this.showCloseButton = true,
    this.elevation = 2,
    this.borderRadius,
    this.titleStyle,
    this.widthRatio,
    this.padding,
    this.margin,
    this.maxWidth,
    this.backgroundColor,
    this.titleWidget,
    this.closeButton,
    this.contentSpacing,
    this.leading,
    super.key,
  }) : assert(
          titleWidget == null || title == null,
          'title and titleWidget cannot be used together',
        );

  final String? title;
  final TextStyle? titleStyle;
  final Widget content;
  final bool? showCloseButton;
  final List<Widget>? actions;
  final double? maxWidth;
  final Widget? titleWidget;
  final Widget? closeButton;
  final Widget? leading;

  @NomoSizingField(1.0)
  final double? elevation;

  @NomoSizingField<Widget>(SizedBox(height: 12))
  final Widget? contentSpacing;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoSizingField(0.75)
  final double? widthRatio;

  @NomoSizingField(EdgeInsets.zero)
  final EdgeInsetsGeometry? margin;

  @NomoSizingField(EdgeInsets.all(12))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField<BorderRadiusGeometry>(BorderRadius.all(Radius.circular(12)))
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    final width = MediaQuery.of(context).size.width * theme.widthRatio;
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).systemGestureInsets.top;

    return SizedBox(
      height: height,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: maxWidth ?? width),
          child: Container(
            width: width,
            margin: theme.margin,
            child: ElevatedBox(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: theme.borderRadius,
              ),
              elevation: theme.elevation,
              child: Padding(
                padding: theme.padding,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBarLayoutDelegate(
                        children: {
                          if (leading != null) AppBarItem.backButton: leading!,
                          if (title != null)
                            AppBarItem.title: NomoText(
                              title!,
                              style: titleStyle,
                            )
                          else if (titleWidget != null)
                            AppBarItem.title: titleWidget!,
                          if (showCloseButton!)
                            AppBarItem.actions: closeButton ??
                                SecondaryNomoButton(
                                  border: const Border.fromBorderSide(
                                    BorderSide.none,
                                  ),
                                  onPressed: Navigator.of(context).pop,
                                  shape: BoxShape.circle,
                                  icon: Icons.close,
                                  padding: const EdgeInsets.all(8),
                                ),
                        },
                      ),
                      theme.contentSpacing,
                      content,
                      theme.contentSpacing,
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
      ),
    );
  }
}
