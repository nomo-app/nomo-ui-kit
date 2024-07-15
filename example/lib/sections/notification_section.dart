import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/app/notifications/app_notification.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/notification/nomo_notification.dart';

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
              child: const NomoNotification(
                leading: Icon(Icons.check),
                title: "Notification Title",
                subtitle: "Notification Subtitle",
                showCloseButton: false,
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
