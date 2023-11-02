import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/app_bar/layout/appbar_layout_delegate.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_app_bar.g.dart';

@NomoComponentThemeData('appBarTheme')
class NomoAppBar extends StatelessWidget {
  final Widget title;
  final Widget? leading;
  final Widget? trailling;
  final double spacing;
  final double topInset;
  final BorderRadiusGeometry? borderRadius;

  @NomoSizingField<PreferredSizeWidget?>(null)
  final PreferredSizeWidget? bottom;

  @NomoSizingField(kToolbarHeight)
  final double? height;

  @NomoColorField(Colors.red)
  final Color? backgroundColor;

  const NomoAppBar({
    super.key,
    required this.title,
    this.leading,
    this.trailling,
    this.spacing = 16,
    this.backgroundColor,
    this.borderRadius,
    this.bottom,
    this.topInset = 0,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return Container(
      margin: EdgeInsets.only(top: topInset),
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        color: theme.backgroundColor,
      ),
      height: theme.height,
      padding: EdgeInsets.symmetric(horizontal: spacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: AppBarLayoutDelegate(
              children: {
                if (leading != null) AppBarItem.backButton: leading!,
                AppBarItem.title: title,
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
