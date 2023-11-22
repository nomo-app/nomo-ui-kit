import 'package:example/theme.dart';
import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/buttons/base/nomo_button.dart';
import 'package:nomo_ui_kit/components/buttons/link/nomo_link_button.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/buttons/secondary/nomo_secondary_button.dart';
import 'package:nomo_ui_kit/components/buttons/text/nomo_text_button.dart';
import 'package:nomo_ui_kit/components/layout/dynamic_row/dynamic_row.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class TextButtonWrapper extends StatelessWidget {
  const TextButtonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(builder: (context, route) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          NomoText(
            "Nomo Button",
            style: context.typography.h3,
            fontWeight: FontWeight.bold,
            minFontSize: 28,
          ),
          12.vSpacing,
          NomoText(
            "To trigger an operation.",
            style: context.typography.b1,
          ),
          36.vSpacing,
          NomoText(
            "When to use",
            style: context.typography.h2,
            fontWeight: FontWeight.bold,
          ),
          12.vSpacing,
          NomoText(
            "A button means an operation (or a series of operations). Clicking a button will trigger corresponding business logic.",
            style: context.typography.b1,
          ),
          12.vSpacing,
          NomoText(
            "In Nomo UI Kit, we provide 2 types of buttons: text button and icon button.",
            style: context.typography.b1,
          ),
          NomoText(
            "There are 3 pre defined sizes for buttons:",
            style: context.theme.typographyTheme.b1,
          ),
          const SizedBox(
            height: 12,
          ),
          dotRow("ButtonSize.small", context),
          dotRow("ButtonSize.medium", context),
          dotRow("ButtonSize.large", context),
          const SizedBox(
            height: 12,
          ),
          36.vSpacing,
          NomoText("Examples", style: context.typography.h2),
          12.vSpacing,
          NomoOutlineContainer(
            child: PrimaryNomoButtonThemeOverride(
              data: PrimaryNomoButtonThemeDataNullable(
                elevation: 2,
                borderRadius: BorderRadius.circular(16),
              ),
              child: DynamicRow(
                hSpacing: 16,
                children: [
                  PrimaryNomoButton(
                    foregroundColor: primaryColor.lighten(0.5),
                    text: "Primary",
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    onPressed: () {},
                    textStyle: context.typography.h1,
                  ),
                  PrimaryNomoButton(
                    foregroundColor: primaryColor.lighten(0.5),
                    text: "Primary with Icon",
                    height: 48,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    onPressed: () {},
                    textStyle: context.typography.h1,
                    icon: Icons.textsms,
                    spacing: 8,
                  ),
                  PrimaryNomoButton(
                    foregroundColor: primaryColor.lighten(0.5),
                    onPressed: () {},
                    textStyle: context.typography.h1,
                    icon: Icons.textsms,
                    shape: BoxShape.circle,
                    height: 48,
                    width: 48,
                  ),
                  PrimaryNomoButton(
                    foregroundColor: primaryColor.lighten(0.4),
                    onPressed: () {},
                    textStyle: context.typography.h1,
                    icon: Icons.textsms,
                    height: 48,
                    width: 48,
                  ),
                ],
              ),
            ),
          ),
          24.vSpacing,
          NomoOutlineContainer(
            child: SecondaryNomoButtonThemeOverride(
              data: SecondaryNomoButtonThemeDataNullable(
                elevation: 0,
                backgroundColor: Colors.white12,
                border: Border.all(
                  color: context.colors.foreground1,
                  width: 2,
                ),
                foregroundColor: context.colors.foreground1,
              ),
              child: DynamicRow(
                hSpacing: 16,
                children: [
                  SecondaryNomoButton(
                    text: "Secondary",
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    onPressed: () {},
                    textStyle: context.typography.h1,
                  ),
                  SecondaryNomoButton(
                    text: "Secondary with Icon",
                    height: 48,
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    onPressed: () {},
                    textStyle: context.typography.h1,
                    icon: Icons.ac_unit,
                    spacing: 8,
                  ),
                  SecondaryNomoButton(
                    onPressed: () {},
                    textStyle: context.typography.h1,
                    icon: Icons.dashboard_customize,
                    shape: BoxShape.circle,
                    height: 48,
                    width: 48,
                  ),
                  SecondaryNomoButton(
                    onPressed: () {},
                    textStyle: context.typography.h1,
                    icon: Icons.access_alarm_outlined,
                    height: 48,
                    width: 48,
                  ),
                ],
              ),
            ),
          ),
          24.vSpacing,
          NomoOutlineContainer(
            child: SecondaryNomoButtonThemeOverride(
              data: SecondaryNomoButtonThemeDataNullable(
                elevation: 0,
                backgroundColor: Colors.white12,
                border: Border.all(
                  color: context.colors.foreground1,
                  width: 2,
                ),
                foregroundColor: context.colors.foreground1,
              ),
              child: DynamicRow(
                hSpacing: 16,
                children: [
                  NomoTextButton(
                    text: "Text Button",
                    onPressed: () {},
                    textStyle: context.typography.h1,
                    padding: EdgeInsets.all(16),
                    foregroundColor: Colors.black,
                  ),
                  NomoLinkButton(
                    text: "Link Button",
                    height: 48,
                    onPressed: () {},
                    textStyle: context.typography.h1,
                  ),
                ],
              ),
            ),
          ),
          24.vSpacing,
        ],
      );
    });
  }

  Widget dotRow(String text, BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.fiber_manual_record,
          size: 12,
          color: context.colors.foreground1,
        ),
        const SizedBox(width: 8),
        NomoText(
          text,
          style: context.typography.b2,
        ),
      ],
    );
  }
}
//   Widget buttonSectionIcon(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             NomoButton.icon(
//               size: ButtonSize.small,
//               borderRadius: BorderRadius.circular(100.0),
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               borderRadius: BorderRadius.circular(100.0),
//               size: ButtonSize.medium,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               borderRadius: BorderRadius.circular(100.0),
//               size: ButtonSize.large,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.icon(
//               size: ButtonSize.small,
//               borderRadius: BorderRadius.circular(8.0),
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               size: ButtonSize.medium,
//               borderRadius: BorderRadius.circular(8.0),
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               size: ButtonSize.large,
//               borderRadius: BorderRadius.circular(8.0),
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.icon(
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(8.0),
//               elevation: 3.0,
//               size: ButtonSize.small,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               size: ButtonSize.medium,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(8.0),
//               elevation: 3.0,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               size: ButtonSize.large,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(8.0),
//               elevation: 3.0,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.icon(
//               border: BorderSide.none,
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(100.0),
//               size: ButtonSize.small,
//               elevation: 3.0,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               isEnabled: false,
//               border: BorderSide.none,
//               color: Colors.red,
//               elevation: 3.0,
//               borderRadius: BorderRadius.circular(100.0),
//               size: ButtonSize.medium,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               elevation: 3.0,
//               border: BorderSide.none,
//               highlightColor: Colors.green,
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(100.0),
//               size: ButtonSize.large,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.icon(
//               size: ButtonSize.small,
//               isLoading: true,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(100.0),
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               isLoading: true,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(100.0),
//               size: ButtonSize.medium,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.icon(
//               isLoading: true,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(100.0),
//               size: ButtonSize.large,
//               onPressed: () => (),
//               icon: const Icon(Icons.download),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget buttonSectionText(BuildContext context) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Row(
//           children: [
//             NomoButton.text(
//               elevation: 0.0,
//               border: const BorderSide(color: Color(0xFF272626)),
//               size: ButtonSize.small,
//               onPressed: () {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               size: ButtonSize.medium,
//               onPressed: () {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               color: Colors.red,
//               textStyle: context.typography.h1.copyWith(
//                 color: Colors.black,
//               ),
//               size: ButtonSize.large,
//               onPressed: () {},
//               text: "Search",
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.text(
//               size: ButtonSize.small,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               size: ButtonSize.medium,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               size: ButtonSize.large,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.text(
//               size: ButtonSize.small,
//               leading: const Icon(Icons.search),
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               size: ButtonSize.medium,
//               leading: const Icon(Icons.search),
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//               trailing: const Icon(Icons.search),
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               size: ButtonSize.large,
//               leading: const Icon(Icons.search),
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search for something good",
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.text(
//               color: Colors.red,
//               splashColor: Colors.green,
//               textStyle: const TextStyle(color: Colors.white, fontSize: 16),
//               size: ButtonSize.small,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               isEnabled: false,
//               size: ButtonSize.medium,
//               color: Colors.green,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               highlightColor: Colors.green,
//               color: Colors.blue,
//               size: ButtonSize.large,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//           ],
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             NomoButton.text(
//               isLoading: true,
//               size: ButtonSize.small,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               isLoading: true,
//               size: ButtonSize.medium,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//             const SizedBox(width: 16),
//             NomoButton.text(
//               isLoading: true,
//               size: ButtonSize.large,
//               elevation: 3.0,
//               border: BorderSide.none,
//               borderRadius: BorderRadius.circular(12.0),
//               onPressed: () => {},
//               text: "Search",
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }
