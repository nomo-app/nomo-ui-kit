import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_bottom_bar.g.dart';

@NomoComponentThemeData('bottomBarTheme')
class NomoBottomBar extends StatelessWidget {
  @NomoSizingField(56.0)
  final double? height;

  @NomoColorField(Colors.red)
  final Color? backgroundColor;

  const NomoBottomBar({
    super.key,
    this.backgroundColor,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return Container(
      height: theme.height,
      color: theme.backgroundColor,
      child: Row(
        children: [
          Text("Test"),
        ],
      ),
    );
  }
}
