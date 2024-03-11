import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/app/notifications/app_notification.dart';
import 'package:nomo_ui_kit/components/buttons/secondary/nomo_secondary_button.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_notification.theme_data.g.dart';

@NomoComponentThemeData('notificationTheme')
class NomoNotification extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget leading;

  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(BorderRadius.all(Radius.circular(16)))
  final BorderRadius? borderRadius;

  @NomoSizingField(16.0)
  final double? spacing;

  @NomoSizingField(280.0)
  final double? maxWidth;

  @NomoConstant(TextStyle())
  final TextStyle? titleStyle;

  @NomoConstant(TextStyle())
  final TextStyle? subtitleStyle;

  const NomoNotification({
    super.key,
    required this.title,
    required this.subtitle,
    required this.leading,
    this.titleStyle,
    this.subtitleStyle,
    this.padding,
    this.borderRadius,
    this.spacing,
    this.maxWidth,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: theme.maxWidth,
        minWidth: 0,
      ),
      child: NomoCard(
        padding: theme.padding,
        borderRadius: theme.borderRadius,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            leading,
            theme.spacing.hSpacing,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NomoText(
                    title,
                    style: theme.titleStyle,
                  ),
                  4.hSpacing,
                  NomoText(
                    subtitle,
                    style: theme.subtitleStyle,
                  ),
                ],
              ),
            ),
            theme.spacing.hSpacing,
            SecondaryNomoButton(
              shape: BoxShape.circle,
              icon: Icons.close,
              border: Border.fromBorderSide(BorderSide.none),
              padding: EdgeInsets.all(4),
              onPressed: () {
                InAppNotification.dismiss(context: context);
              },
            )
          ],
        ),
      ),
    );
  }
}
