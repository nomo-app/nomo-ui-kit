import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class Sider extends StatelessWidget {
  const Sider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selection = ValueNotifier<NomoMenuItem?>(null);
    //   print(NomoNavigator.of(context).delegate.currentConfiguration);

    return NomoSider(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            16.vSpacing,
            NomoVerticalMenu(
              style: context.typography.b1,
              selectedNotifier: selection,
              onTap: (item) {
                selection.value = item;

                NomoNavigator.of(context).push(item.route);
              },
              iconSize: 22,
              title: NomoText(
                "Widgets",
                style: context.typography.b1,
              ),
              items: AppRoutes.menuItems,
            ),
          ],
        ),
      ),
    );
  }
}
