import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/app/app_bar/layout/appbar_layout_delegate.dart';
import 'package:nomo_ui_kit/components/nomo_elevation/nomo_elevation.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
part 'nomo_app_bar.theme_data.g.dart';

@NomoComponentThemeData('appBar')
class NomoAppBar extends StatelessWidget {
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
    this.elevation,
  });
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
  @NomoSizingField(2.0)
  final double? elevation;

  PreferredSizeWidget asPreferedSizeWidget(BuildContext context) {
    final theme = getFromContext(context, this);

    final height = theme.height +
        MediaQuery.of(context).padding.top +
        (bottom?.preferredSize.height ?? 0.0);

    return PreferredSize(
      preferredSize: Size.fromHeight(height),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    final topPadding = MediaQuery.of(context).padding.top;
    return NomoDefaultTextStyle(
      style: context.typography.h1.copyWith(fontWeight: FontWeight.bold),
      child: NomoElevation(
        elevation: theme.elevation,
        backgroundColor: theme.backgroundColor,
        borderRadius: theme.borderRadius,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: topPadding,
            ),
            Container(
              margin: EdgeInsets.only(top: theme.topInset),
              child: Material(
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: theme.spacing),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: theme.height,
                        child: AppBarLayoutDelegate(
                          children: {
                            if (leading != null)
                              AppBarItem.backButton: leading!,
                            if (title != null) AppBarItem.title: title!,
                            if (trailling != null)
                              AppBarItem.actions: trailling!,
                          },
                        ),
                      ),
                      if (bottom != null)
                        SizedBox(
                          height: bottom!.preferredSize.height,
                          child: bottom,
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  NomoAppBar copyWith({
    Widget? title,
    Widget? leading,
    Widget? trailling,
    double? spacing,
    Color? backgroundColor,
    BorderRadiusGeometry? borderRadius,
    PreferredSizeWidget? bottom,
    double? topInset,
    double? height,
    double? elevation,
  }) {
    return NomoAppBar(
      title: title ?? this.title,
      leading: leading ?? this.leading,
      trailling: trailling ?? this.trailling,
      spacing: spacing ?? this.spacing,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      borderRadius: borderRadius ?? this.borderRadius,
      bottom: bottom ?? this.bottom,
      topInset: topInset ?? this.topInset,
      height: height ?? this.height,
      elevation: elevation ?? this.elevation,
    );
  }

  SliverPersistentHeader toSliverBar(BuildContext context) {
    return SliverPersistentHeader(
      delegate: NomoSliverAppBarDelegate(
        appBar: this,
        theme: getFromContext(context, this),
      ),
      pinned: true,
    );
  }
}

class NomoSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final NomoAppBar appBar;
  final NomoAppBarThemeData theme;

  NomoSliverAppBarDelegate({
    required this.appBar,
    required this.theme,
  });

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return appBar;
  }

  @override
  double get maxExtent => theme.height;

  @override
  double get minExtent => theme.height;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
