import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class Sider extends StatefulWidget {
  const Sider({Key? key}) : super(key: key);

  @override
  State<Sider> createState() => _SiderState();
}

class _SiderState extends State<Sider> {
  @override
  Widget build(BuildContext context) {
    final current = NomoNavigator.of(context).current.menuItem;
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: NomoSider(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        child: SingleChildScrollView(
          child: NomoVerticalMenu(
            style: context.typography.b1,
            selected: current,
            onTap: (item) {
              NomoNavigator.of(context).push(item.route);
              setState(() {});
            },
            iconSize: 22,
            items: AppRoutes.menuItems,
          ),
        ),
      ),
    );
  }
}
