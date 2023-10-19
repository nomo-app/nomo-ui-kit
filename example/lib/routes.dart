import 'package:example/main.dart';
import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';

class AppRoutes {
  static List<RouteInfo> get allRoutes => [
        ...routes,
        ...nestedRoutes,
      ];

  static List<RouteInfo> get routes => [];

  static List<RouteInfo> get nestedRoutes => [
        homeRoute,
      ];

  static const homeRoute = PageRouteInfo(
    name: "/",
    page: HomePage(),
  );
}
