import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class Sider extends StatelessWidget {
  final double? topInset;

  const Sider({
    Key? key,
    this.topInset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = NomoNavigatorInformationProvider.of(context);
    final current = switch (currentRoute) {
      MenuPageRouteInfo currentRoute => currentRoute.toMenuItem,
      _ => null,
    };

    return Padding(
      padding: EdgeInsets.only(top: topInset ?? 0),
      child: NomoSider(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: SingleChildScrollView(
          child: NomoVerticalMenu(
            style: context.typography.b1,
            background: context.componentColors.verticalMenuTheme.background,
            selected: current,
            onTap: (item) {
              NomoNavigator.of(context).push(RoutePath(name: item.path));
            },
            iconSize: 22,
            items: menuItems.toMenuItems,
          ),
        ),
      ),
    );
  }
}
