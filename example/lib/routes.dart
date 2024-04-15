import 'package:example/main.dart';
import 'package:example/sections/button_section.dart';
import 'package:example/sections/card_section.dart';
import 'package:example/sections/data_section.dart';
import 'package:example/sections/dialog_section.dart';
import 'package:example/sections/dropdown_section.dart';
import 'package:example/sections/expandable_section.dart';
import 'package:example/sections/grid_section.dart';
import 'package:example/sections/icon_section.dart';
import 'package:example/sections/input_section.dart';
import 'package:example/sections/layout_section.dart';
import 'package:example/sections/list_section.dart';
import 'package:example/sections/loading_section.dart';
import 'package:example/sections/menu_section.dart';
import 'package:example/sections/modal_sheet_section.dart';
import 'package:example/sections/notification_section.dart';
import 'package:example/sections/text_section.dart';
import 'package:example/sections/tile_section.dart';
import 'package:example/theme.dart';
import 'package:example/widgets/drawer.dart';
import 'package:example/widgets/sider.dart';
import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_router/router/entities/route.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';
import 'package:route_gen/anotations.dart';

// ignore_for_file: prefer_const_constructors

part 'routes.g.dart';

Widget wrapper(nav) {
  return Builder(
    builder: (context) {
      final themeProvider = ThemeProvider.of(context);
      return NomoScaffold(
        appBar: NomoAppBar(
          leading: Text(
            "Nomo UI Kit",
            style: context.typography.h3,
          ),
          trailling: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (themeProvider.colorMode == ColorMode.DARK)
                IconButton(
                  onPressed: () {
                    ThemeProvider.of(context).changeColorTheme(ColorMode.LIGHT);
                  },
                  icon: const Icon(
                    Icons.light_mode,
                    color: Colors.white,
                  ),
                )
              else
                IconButton(
                  onPressed: () {
                    ThemeProvider.of(context).changeColorTheme(ColorMode.DARK);
                  },
                  icon: const Icon(
                    Icons.dark_mode,
                  ),
                ),
              if (!context.componentSizes.scaffoldSizing.showSider)
                Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        NomoScaffold.of(context).openEndDrawer();
                      },
                      icon: Icon(
                        Icons.menu,
                        color: context.colorTheme.colors.foreground1,
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
        sider: const Sider(),
        endDrawer: const DrawerEx(),
        child: nav,
      );
    },
  );
}

@AppRoutes()
const _routes = [
  NestedNavigator(
    key: ValueKey("main"),
    wrapper: wrapper,
    children: [
      MenuPageRouteInfo(
        path: "/",
        title: "Home",
        page: HomePage,
      ),
      MenuPageRouteInfo(
        path: "/modalSheet",
        title: "Modal Sheet",
        page: ModalSheetSection,
        children: [
          ModalRouteInfo(
            path: "/sheet1",
            page: ModalSheet1,
            useRootNavigator: true,
          ),
        ],
      ),
      MenuPageRouteInfo(
        path: "/typography",
        title: "Typography",
        page: TextSection,
      ),
      MenuPageRouteInfo(
        path: "/button",
        title: "Button",
        page: TextButtonWrapper,
      ),
      MenuPageRouteInfo(
        path: "/data",
        title: "Data",
        page: DataSection,
      ),
      MenuPageRouteInfo(
        path: "/notifications",
        title: "Notifications",
        page: NotificationSection,
      ),
      MenuPageRouteInfo(
        path: "/icons",
        title: "Icons",
        page: IconSection,
      ),
      MenuPageRouteInfo(
        path: "/dialogs",
        title: "Dialogs",
        page: DialogSection,
      ),
      MenuPageRouteInfo(
        path: "/input",
        title: "Input",
        page: InputSection,
      ),
      MenuPageRouteInfo(
        path: "/dropdown",
        title: "Dropdown",
        page: DropdownSection,
      ),
      MenuPageRouteInfo(
        path: "/card",
        title: "Card",
        page: CardSection,
      ),
      MenuPageRouteInfo(
        path: "/list",
        title: "List",
        page: ListSection,
      ),
      MenuPageRouteInfo(
        path: "/grid",
        title: "Grid",
        page: GridSection,
      ),
      MenuPageRouteInfo(
        path: "/loading",
        title: "Loading",
        page: LoadingSection,
      ),
      MenuPageRouteInfo(
        path: "/expandable",
        title: "Expandable",
        page: ExpandableSection,
      ),
      MenuPageRouteInfo(
        path: "/tile",
        title: "Tile",
        page: TileSection,
      ),
      MenuPageRouteInfo(
        path: "/layout",
        title: "Layout",
        page: LayoutSection,
      ),
      MenuPageRouteInfo(
        path: "/menu",
        title: "Menu",
        page: MenuSection,
      ),
    ],
  ),
];

extension MenuUtilList on Iterable<MenuRouteInfoMixin> {
  List<NomoMenuItem<String>> get toMenuItems {
    return map((route) => route.toMenuItem).toList();
  }
}

extension MenuUtil on MenuRouteInfoMixin {
  NomoMenuItem<String> get toMenuItem {
    if (icon != null) {
      return NomoMenuIconItem(
        title: title,
        icon: icon!,
        key: path,
      );
    }
    if (imagePath != null) {
      return NomoMenuImageItem(
        title: title,
        imagePath: imagePath!,
        key: path,
      );
    }
    return NomoMenuTextItem(
      title: title,
      key: path,
    );
  }
}
