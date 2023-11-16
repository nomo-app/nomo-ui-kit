import 'package:example/main.dart';
import 'package:example/sections/buttons/text_button_wrapper.dart';
import 'package:example/sections/dialogs/dialog_wrapper.dart';
import 'package:example/sections/text/text_widget.dart';
import 'package:example/theme.dart';
import 'package:example/widgets/drawer.dart';
import 'package:example/widgets/sider.dart';
import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';

import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

Widget Function(Widget nav) wrapper = (nav) {
  return Builder(
    builder: (context) {
      final themeProvider = ThemeProvider.of(context);
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
                if (themeProvider.colorTheme == ColorMode.DARK.theme)
                  IconButton(
                    onPressed: () {
                      ThemeProvider.of(context).changeColorTheme(
                        ColorMode.LIGHT.theme,
                      );
                    },
                    icon: const Icon(
                      Icons.light_mode,
                      color: Colors.white,
                    ),
                  )
                else
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
    },
  );
};

final routes = [
  MenuNestedPageRouteInfo(
    name: "/",
    title: "Home",
    icon: Icons.home,
    page: const HomePage(),
    wrapper: wrapper,
    children: const [
      MenuPageRouteInfo(
        name: "/text",
        title: "Text",
        icon: Icons.text_fields,
        page: TextWidget(),
      ),
      MenuPageRouteInfo(
        name: "/buttons",
        title: "Buttons",
        icon: Icons.text_fields,
        page: TextButtonWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/dialogs",
        title: "Dialogs",
        icon: Icons.text_fields,
        page: DialogWrapper(),
      ),
    ],
  ),
].expanded.toList();

final menuItems = routes.whereType<MenuPageRouteInfo>().toList();

extension MenuUtilList on Iterable<MenuPageRouteInfo> {
  List<NomoMenuItem> get toMenuItems {
    return map((route) => route.toMenuItem).toList();
  }
}

extension MenuUtil on MenuPageRouteInfo {
  NomoMenuItem get toMenuItem {
    if (icon != null) {
      return NomoMenuIconItem(
        title: title,
        icon: icon!,
        path: name,
      );
    }
    if (image != null) {
      return NomoMenuImageItem(
        title: title,
        image: image!,
        path: name,
      );
    }
    return NomoMenuTextItem(
      title: title,
      path: name,
    );
  }
}
