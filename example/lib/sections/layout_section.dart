import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/layout/dynamic_row/dynamic_row.dart';

class LayoutSection extends StatelessWidget {
  const LayoutSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DynamicRow(
        hSpacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 6; i++)
            Container(
              height: 48,
              width: 48.5 * Random().nextInt(5),
              color: Colors.blue,
            )
        ],
      ),
    );
  }
}
