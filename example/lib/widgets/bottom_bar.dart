import 'package:example/main.dart';
import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/app/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/route.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    final currentRoute = NomoNavigatorInformationProvider.of(context);
    final current = switch (currentRoute) {
      MenuPageRouteInfo currentRoute => currentRoute.toMenuItem,
      _ => null,
    };
    return NomoBottomBar(
      style: context.typography.b1,
      selected: current,
      onTap: (item) {
        NomoNavigator.of(context).pushNamed(item.key);
        setState(() {});
      },
      title: NomoText(
        "Widgets",
        style: context.typography.b1,
      ),
      items: menuItems,
    );
  }
}
