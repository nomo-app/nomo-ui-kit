import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class NoData extends StatelessWidget {
  final String text;
  final IconData icon;
  final double iconSize;
  final double height;

  const NoData({
    super.key,
    this.text = 'no_data',
    this.icon = Icons.sentiment_very_dissatisfied,
    this.iconSize = 42,
    this.height = 100,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: context.colors.primary,
            size: iconSize,
          ),
          8.vSpacing,
          NomoText(
            text,
            style: context.typography.b1,
          ),
        ],
      ),
    );
  }
}
