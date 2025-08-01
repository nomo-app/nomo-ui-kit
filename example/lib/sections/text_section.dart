import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class TextSection extends StatelessWidget {
  const TextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      children: [
        NomoText(
          "lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco",
          style: context.typography.h3,
          fit: true,
          maxLines: 2,
        ),
        32.vSpacing,
        ...[
          NomoText(
            "Heading 1",
            style: context.typography.h1,
          ),
          NomoText(
            "Heading 2",
            style: context.typography.h2,
          ),
          NomoText(
            "Heading 3",
            style: context.typography.h3,
          ),
          NomoText(
            "Body 1",
            style: context.typography.b1,
          ),
          NomoText(
            "Body 2",
            style: context.typography.b2,
          ),
          NomoText(
            "Body 3",
            style: context.typography.b3,
          ),
        ].spacingV(16)
      ],
    );
  }
}
