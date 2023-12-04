import 'package:example/main.dart';
import 'package:example/sections/button_section.dart';
import 'package:example/sections/card_section.dart';
import 'package:example/sections/data_section.dart';
import 'package:example/sections/dialogs/dialog_wrapper.dart';
import 'package:example/sections/expandable_section.dart';
import 'package:example/sections/icon_section.dart';
import 'package:example/sections/input_section.dart';
import 'package:example/sections/loading_section.dart';
import 'package:example/sections/modal_sheet_section.dart';
import 'package:example/sections/text_section.dart';
import 'package:example/theme.dart';
import 'package:example/widgets/drawer.dart';
import 'package:example/widgets/sider.dart';
import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';

import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

Widget Function(Widget nav) wrapper = (nav) {
  return Builder(
    builder: (context) {
      final themeProvider = ThemeProvider.of(context);
      return NomoScaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(context.componentSizes.appBarTheme.height),
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
                      icon: Icon(
                        Icons.menu,
                        color: context.colorTheme.colors.foreground1,
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
    title: "Overview",
    page: const HomePage(),
    wrapper: wrapper,
    children: const [
      MenuPageRouteInfo(
        name: "/modalSheet",
        title: "Modal Sheet",
        page: ModalSheetSection(),
        children: [
          ModalRouteInfo(
            name: "/sheet1",
            page: ModalSheet1(),
            useRootNavigator: true,
          ),
        ],
      ),
      MenuPageRouteInfo(
        name: "/typography",
        title: "Typography",
        page: TextSection(),
      ),
      MenuPageRouteInfo(
        name: "/button",
        title: "Button",
        page: TextButtonWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/data",
        title: "Data",
        page: DataSection(),
      ),
      MenuPageRouteInfo(
        name: "/icons",
        title: "Icons",
        page: IconSection(),
      ),
      MenuPageRouteInfo(
        name: "/dialogs",
        title: "Dialogs",
        page: DialogWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/input",
        title: "Input",
        page: InputSection(),
      ),
      MenuPageRouteInfo(
        name: "/dropdown",
        title: "Dropdown",
        page: DialogWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/card",
        title: "Card",
        page: CardSection(),
      ),
      MenuPageRouteInfo(
        name: "/list",
        title: "List",
        page: DialogWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/grid",
        title: "Grid",
        page: DialogWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/loading",
        title: "Loading",
        page: LoadingSection(),
      ),
      MenuPageRouteInfo(
        name: "/expandable",
        title: "Expandable",
        page: ExpandableSection(),
      ),
      MenuPageRouteInfo(
        name: "/tile",
        title: "Tile",
        page: DialogWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/layout",
        title: "Layout",
        page: DialogWrapper(),
      ),
      MenuPageRouteInfo(
        name: "/menu",
        title: "Menu",
        page: DialogWrapper(),
      ),
    ],
  ),
].expanded.toList();

final menuItems = routes.whereType<MenuRouteInfoMixin>().toList();

extension MenuUtilList on Iterable<MenuRouteInfoMixin> {
  List<NomoMenuItem> get toMenuItems {
    return map((route) => route.toMenuItem).toList();
  }
}

extension MenuUtil on MenuRouteInfoMixin {
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
