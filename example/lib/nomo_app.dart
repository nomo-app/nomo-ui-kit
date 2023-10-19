import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class NomoApp extends StatelessWidget {
  final List<RouteInfo> routes;
  final List<RouteInfo> nestedRoutes;
  final LocalizationsDelegate? localizationDelegate;
  final Iterable<Locale> supportedLocales;
  final Locale? currentLocale;

  const NomoApp({
    super.key,
    required this.routes,
    required this.nestedRoutes,
    this.localizationDelegate,
    required this.supportedLocales,
    this.currentLocale,
  });

  @override
  Widget build(BuildContext context) {
    final delegate = NomoRouterDelegate(
      rootNavigatorKey,
      routes: routes,
      nestedRoutes: nestedRoutes,
      nestedNavigatorWrapper: (nav) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Nested Navigator"),
          ),
          body: nav,
        );
      },
    );

    return Material(
      child: NomoNavigator(
        delegate: delegate,
        child: WidgetsApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: [
            if (localizationDelegate != null) localizationDelegate!,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate
          ],
          supportedLocales: supportedLocales,

          locale: currentLocale,

          color: Colors.red,
          routerDelegate: delegate,

          //   routeInformationProvider: PlatformRouteInformationProvider(initialRouteInformation: WidgetsBinding.instance),
          routeInformationParser: NomoRouteInformationParser(
            nestedRoutes: nestedRoutes,
          ),
        ),
      ),
    );
  }
}
