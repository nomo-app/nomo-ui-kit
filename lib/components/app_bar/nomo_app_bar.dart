import 'package:flutter/material.dart';

import 'package:nomo_ui_kit/components/app_bar/layout/appbar_layout_delegate.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_app_bar.g.dart';

@NomoComponentThemeData('appBarTheme')
class NomoAppBar extends StatelessWidget {
  final Widget? title;
  final Widget? leading;
  final Widget? trailling;
  final PreferredSizeWidget? bottom;

  @NomoSizingField(16.0)
  final double? spacing;

  @NomoSizingField(0.0)
  final double? topInset;

  @NomoColorField<BorderRadiusGeometry?>(null)
  final BorderRadiusGeometry? borderRadius;

  @NomoSizingField(kToolbarHeight)
  final double? height;

  @NomoColorField(Colors.red)
  final Color? backgroundColor;

  const NomoAppBar({
    super.key,
    this.title,
    this.leading,
    this.trailling,
    this.spacing,
    this.backgroundColor,
    this.borderRadius,
    this.bottom,
    this.topInset,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return Container(
      margin: EdgeInsets.only(top: theme.topInset),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: theme.backgroundColor,
      ),
      height: theme.height,
      padding: EdgeInsets.symmetric(horizontal: theme.spacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: AppBarLayoutDelegate(
              children: {
                if (leading != null) AppBarItem.backButton: leading!,
                if (title != null) AppBarItem.title: title!,
                if (trailling != null) AppBarItem.actions: trailling!,
              },
            ),
          ),
          if (bottom != null)
            SizedBox(
              height: bottom!.preferredSize.height,
              child: bottom!,
            ),
        ],
      ),
    );
  }
}
