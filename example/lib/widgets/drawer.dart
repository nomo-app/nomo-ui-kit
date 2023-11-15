import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class DrawerEx extends StatefulWidget {
  final double? topInset;

  const DrawerEx({
    Key? key,
    this.topInset,
  }) : super(key: key);

  @override
  State<DrawerEx> createState() => _DrawerExState();
}

class _DrawerExState extends State<DrawerEx> {
  @override
  Widget build(BuildContext context) {
    final currentRoute = NomoNavigatorInformationProvider.of(context);
    final current = switch (currentRoute) {
      MenuPageRouteInfo currentRoute => currentRoute.toMenuItem,
      _ => null,
    };
    return Padding(
      padding: EdgeInsets.only(top: widget.topInset ?? 0),
      child: NomoSider(
        width: 280,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: SingleChildScrollView(
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
                NomoNavigator.of(context).push(RoutePath(name: item.path));
                setState(() {});
              },
              iconSize: 22,
              items: menuItems.toMenuItems,
            ),
          ),
        ),
      ),
    );
  }
}
