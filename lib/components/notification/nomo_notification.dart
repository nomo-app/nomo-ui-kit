import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/app/notifications/app_notification.dart';
import 'package:nomo_ui_kit/components/buttons/secondary/nomo_secondary_button.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_notification.theme_data.g.dart';

@NomoComponentThemeData('notification')
class NomoNotification extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leading;
  final bool expand;
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final bool showCloseButton;

  @NomoColorField<Color?>(null)
  final Color? backgroundColor;

  @NomoColorField<Color?>(null)
  final Color? foregroundColor;

  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(BorderRadius.all(Radius.circular(16)))
  final BorderRadius? borderRadius;

  @NomoSizingField(16.0)
  final double? spacing;

  @NomoSizingField(double.infinity)
  final double? maxWidth;

  const NomoNotification({
    required this.title,
    required this.subtitle,
    required this.leading,
    super.key,
    this.titleStyle,
    this.subtitleStyle,
    this.padding,
    this.borderRadius,
    this.spacing,
    this.maxWidth,
    this.expand = false,
    this.backgroundColor,
    this.foregroundColor,
    this.showCloseButton = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: theme.maxWidth,
      ),
      child: NomoCard(
        padding: theme.padding,
        borderRadius: theme.borderRadius,
        backgroundColor: theme.backgroundColor,
        child: Row(
          children: [
            leading,
            theme.spacing.hSpacing,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NomoText(
                  title,
                  style: titleStyle ?? context.typography.b3,
                  maxLines: 1,
                ),
                4.hSpacing,
                NomoText(
                  subtitle,
                  style: subtitleStyle ?? context.typography.b1,
                  maxLines: 1,
                  fit: true,
                ),
              ],
            )
                .wrapIf(
                  theme.foregroundColor != null,
                  (p0) =>
                      NomoTextTheme(color: theme.foregroundColor!, child: p0),
                )
                .wrapIf(
                  expand,
                  (p0) => Expanded(child: p0),
                ),
            if (showCloseButton) ...[
              theme.spacing.hSpacing,
              SecondaryNomoButton(
                shape: BoxShape.circle,
                icon: Icons.close,
                border: const Border.fromBorderSide(BorderSide.none),
                padding: const EdgeInsets.all(4),
                onPressed: () {
                  InAppNotification.dismiss(context: context);
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
