import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    final current = NomoNavigator.of(context).current.menuItem;
    return NomoBottomBar(
      style: context.typography.b1,
      selected: current,
      onTap: (item) {
        NomoNavigator.of(context).push(RoutePath(name: item.route.name));
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
