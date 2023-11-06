import 'package:example/main.dart';
import 'package:example/sections/buttons/text_button_wrapper.dart';
import 'package:example/sections/dialogs/dialog_wrapper.dart';
import 'package:example/sections/text/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';
import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';

class AppRoutes {
  static List<RouteInfo> get allRoutes => [
        ...routes,
        ...nestedRoutes,
      ];

  static List<RouteInfo> get routes => [];

  static List<RouteInfo> get nestedRoutes => [
        homeRoute,
        textSectionRoute,
        buttonSectionRoute,
        dialogSectionRoute,
      ];

  static const homeRoute = PageRouteInfo(
    name: "/",
    page: HomePage(),
  );

  static const textSectionRoute = PageRouteInfo(
    name: "/text",
    page: TextWidget(),
  );

  static const buttonSectionRoute = PageRouteInfo(
    name: "/buttons",
    page: TextButtonWrapper(),
  );

  static const dialogSectionRoute = PageRouteInfo(
    name: "/dialogs",
    page: DialogWrapper(),
  );

  static const menuItems = [
    NomoMenuIconItem(title: "Home", icon: Icons.home),
    NomoMenuIconItem(
      title: "Text",
      icon: Icons.text_format,
    ),
    NomoMenuIconItem(
      title: "Buttons",
      icon: (Icons.radio_button_checked),
    ),
    NomoMenuIconItem(
      title: "Dialogs",
      icon: (Icons.dialpad_outlined),
    ),
  ];
}

extension RouteUtil on NomoMenuItem {
  RouteInfo get route {
    switch (this.title) {
      case "Text":
        return AppRoutes.textSectionRoute;
      case "Buttons":
        return AppRoutes.buttonSectionRoute;
      case "Dialogs":
        return AppRoutes.dialogSectionRoute;
      default:
        return AppRoutes.homeRoute;
    }
  }
}

extension RouteUtil2 on RouteInfo {
  NomoMenuItem get menuItem {
    switch (this.name) {
      case "/text":
        return AppRoutes.menuItems[1];
      case "/buttons":
        return AppRoutes.menuItems[2];
      case "/dialogs":
        return AppRoutes.menuItems[3];
      default:
        return AppRoutes.menuItems[0];
    }
  }
}
