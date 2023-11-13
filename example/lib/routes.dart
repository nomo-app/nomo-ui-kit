import 'package:example/main.dart';
import 'package:example/sections/buttons/text_button_wrapper.dart';
import 'package:example/sections/dialogs/dialog_wrapper.dart';
import 'package:example/sections/text/text_widget.dart';
import 'package:example/theme.dart';
import 'package:example/widgets/drawer.dart';
import 'package:example/widgets/sider.dart';
import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';

import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

final routes = [
  NestedPageRouteInfo(
    name: "/",
    page: const HomePage(),
    wrapper: (nav) {
      return Builder(builder: (context) {
        return NomoScaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(context.componentSizes.appBarTheme.height),
            child: NomoAppBar(
              leading: Text(
                "Nomo UI Kit",
                style: context.typography.h3,
              ),
              trailling: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      ThemeProvider.of(context).changeColorTheme(
                        ColorMode.LIGHT.theme,
                      );
                    },
                    icon: const Icon(
                      Icons.light_mode,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      ThemeProvider.of(context).changeColorTheme(
                        ColorMode.DARK.theme,
                      );
                    },
                    icon: const Icon(
                      Icons.dark_mode,
                    ),
                  ),
                  if (!context.componentSizes.scaffoldTheme.showSider)
                    Builder(builder: (context) {
                      return IconButton(
                        onPressed: () {
                          NomoScaffold.of(context).openEndDrawer();
                        },
                        icon: const Icon(
                          Icons.menu,
                        ),
                      );
                    }),
                ],
              ),
            ),
          ),
          sider: const Sider(
            topInset: 32,
          ),
          endDrawer: const DrawerEx(),
          child: nav,
        );
      });
    },
    children: const [
      PageRouteInfo(
        name: "/text",
        page: TextWidget(),
      ),
      PageRouteInfo(
        name: "/buttons",
        page: TextButtonWrapper(),
      ),
      PageRouteInfo(
        name: "/dialogs",
        page: DialogWrapper(),
      ),
    ],
  ),
].expanded.toList();

extension MenuUtil on RouteInfo {
  NomoMenuItem get menuItem {
    return switch (name) {
      "/text" => menuItems[0],
      "/buttons" => menuItems[1],
      "/dialogs" => menuItems[2],
      _ => menuItems[3],
    };
  }
}

extension RouteMenuUtil on NomoMenuItem {
  RouteInfo get route {
    return switch (title) {
      "Typography" => routes[0].children![0],
      "Buttons" => routes[0].children![1],
      "Dialogs" => routes[0].children![2],
      _ => routes[0],
    };
  }
}

const menuItems = [
  NomoMenuIconItem(title: "Typography", icon: Icons.text_decrease),
  NomoMenuIconItem(title: "Buttons", icon: Icons.text_fields),
  NomoMenuIconItem(title: "Dialogs", icon: Icons.text_fields),
  NomoMenuIconItem(title: "Home", icon: Icons.home),
];
