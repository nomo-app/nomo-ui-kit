import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_sider.g.dart';

@NomoComponentThemeData('siderTheme')
class NomoSider extends StatelessWidget {
  final Widget child;

  @NomoColorField(primaryColor)
  final Color? backgroundColor;

  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(80.0)
  final double? width;

  @NomoColorField(Border(
    right: BorderSide(color: Colors.black12, width: 1),
  ))
  final Border? border;

  const NomoSider({
    super.key,
    required this.child,
    this.backgroundColor,
    this.border,
    this.padding,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return Container(
      width: theme.width,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        border: theme.border,
      ),
      child: Padding(
        padding: theme.padding,
        child: Align(
          alignment: Alignment.topCenter,
          child: child,
        ),
      ),
    );
  }
}
