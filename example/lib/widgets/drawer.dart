import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/app/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/components/app/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/route.dart';

class DrawerEx extends StatelessWidget {
  final double? topInset;

  const DrawerEx({
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
        width: 280,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: NomoVerticalMenu(
            title: NomoText(
              "Components",
              style: context.typography.h2,
            ),
            style: context.typography.b1,
            selected: current,
            onTap: (item) {
              NomoNavigator.of(context).pushNamed(item.path);
              NomoScaffold.of(context).closeEndDrawer();
            },
            iconSize: 22,
            items: menuItems,
          ),
        ),
      ),
    );
  }
}
