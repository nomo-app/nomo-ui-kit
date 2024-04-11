import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/app/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/route.dart';

class Sider extends StatelessWidget {
  const Sider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentRoute = NomoNavigatorInformationProvider.of(context).current;
    final current = switch (currentRoute) {
      MenuPageRouteInfo currentRoute => currentRoute.toMenuItem,
      _ => null,
    };

    return NomoSider(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: NomoVerticalMenu<String>(
        style: context.typography.b1,
        background: context.componentColors.verticalMenuColor.background,
        selected: current?.key,
        onTap: (item) {
          NomoNavigator.of(context).pushNamed(item.key);
        },
        iconSize: 22,
        items: menuItems,
      ),
    );
  }
}
