import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      child: Column(
        children: [
          NomoCard(
            backgroundColor: context.colors.surface,
            borderRadius: BorderRadius.circular(12),
            elevation: 1,
            child: const SizedBox(
              height: 400,
              width: 400,
            ),
          ),
        ],
      ),
    );
  }
}
