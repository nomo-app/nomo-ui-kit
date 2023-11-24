import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class TextSection extends StatelessWidget {
  const TextSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      children: [
        NomoText(
          "Typography",
          style: context.typography.h3,
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
