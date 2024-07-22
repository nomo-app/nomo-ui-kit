import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/buttons/secondary/nomo_secondary_button.dart';
import 'package:nomo_ui_kit/components/dialog/nomo_dialog.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class DialogSection extends StatelessWidget {
  const DialogSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      children: [
        const NomoText("Dialogs"),
        const NomoText("Dialogs are used to display information or actions."),
        const NomoText(
            "Dialogs can be used to display information or actions."),
        16.vSpacing,
        Align(
          alignment: Alignment.center,
          child: PrimaryNomoButton(
            width: 224,
            height: 48,
            text: "Show Dialog",
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => NomoDialog(
                  backgroundColor: Colors.white,
                  scrollabe: true,
                  content: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: [
                        const NomoText("Content"),
                        16.vSpacing,
                        const NomoText("Content"),
                        // 2000.vSpacing,
                      ],
                    ),
                  ),
                  title: "Title",
                  titleStyle: context.typography.h1,
                  showCloseButton: true,
                  actions: [
                    SecondaryNomoButton(
                      width: 100,
                      height: 32,
                      padding: EdgeInsets.zero,
                      text: "Action",
                      onPressed: () {},
                    ),
                    16.hSpacing,
                    PrimaryNomoButton(
                      width: 100,
                      height: 32,
                      padding: EdgeInsets.zero,
                      text: "Action",
                      onPressed: () {},
                    ),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
