import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/expandable/expandable.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class ExpandableSection extends StatelessWidget {
  const ExpandableSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      children: [
        NomoText(
          "Expandable",
          style: context.typography.h3,
        ),
        8.vSpacing,
        NomoText(
          "The Expandable Widget can be used to expand things",
          style: context.typography.b1,
        ),
        32.vSpacing,
        NomoOutlineContainer(
          child: Column(
            children: [
              Expandable(
                title: Text(
                  "Simple Expandable",
                  style: context.typography.h1,
                ),
                children: [
                  Container(
                    height: 64,
                    color: Colors.red,
                  ),
                  Container(
                    height: 64,
                    color: Colors.white,
                  ),
                  Container(
                    height: 64,
                    color: Colors.red,
                  )
                ],
              ),
              Expandable(
                title: Text(
                  "Nested Expandable",
                  style: context.typography.h1,
                ),
                children: [
                  Expandable(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    title: Text(
                      "Child Expandable",
                      style: context.typography.h1,
                    ),
                    children: [
                      Container(
                        height: 64,
                        color: Colors.red,
                      ),
                      Container(
                        height: 64,
                        color: Colors.white,
                      ),
                      Container(
                        height: 64,
                        color: Colors.blue,
                      )
                    ],
                  ),
                  Container(
                    height: 64,
                    color: Colors.white,
                  ),
                  Container(
                    height: 64,
                    color: Colors.red,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
