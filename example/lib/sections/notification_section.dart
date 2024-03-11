import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/app/notifications/app_notification.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class NotificationSection extends StatelessWidget {
  const NotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      child: Center(
        child: PrimaryNomoButton(
          text: "Show Notification",
          padding: const EdgeInsets.all(16),
          onPressed: () {
            InAppNotification.show(
              right: 32,
              top: 32,
              duration: const Duration(seconds: 3),
              child: NomoCard(
                padding: const EdgeInsets.all(16),
                borderRadius: BorderRadius.circular(8),
                elevation: 4,
                child: SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NomoText(
                        "Title",
                        style: context.typography.h3,
                      ),
                      12.vSpacing,
                      NomoText(
                        "This is a notification",
                        style: context.typography.b1,
                      ),
                      24.vSpacing,
                      PrimaryNomoButton(
                        text: "Close",
                        expandToConstraints: true,
                        onPressed: () {
                          InAppNotification.dismiss(context: context);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              context: context,
              useRootNavigator: false,
            );
          },
        ),
      ),
    );
  }
}
