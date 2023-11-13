import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/app/metric_reactor.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class NomoApp extends StatelessWidget {
  final Iterable<RouteInfo> routes;

  final LocalizationsDelegate? localizationDelegate;
  final Iterable<Locale> supportedLocales;
  final Locale? currentLocale;
  final NomoThemeData theme;

  final NomoSizingThemeData Function(double) sizingThemeBuilder;

  const NomoApp({
    super.key,
    required this.routes,
    this.localizationDelegate,
    required this.supportedLocales,
    required this.theme,
    required this.sizingThemeBuilder,
    this.currentLocale,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = ThemeNotifier(theme);
    final delegate = NomoRouterDelegate(rootNavigatorKey, routes: routes);

    return ThemeProvider(
      notifier: themeNotifier,
      child: ValueListenableBuilder(
        valueListenable: themeNotifier,
        builder: (context, theme, child) {
          return ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: MetricReactor(
              sizingThemeBuilder: sizingThemeBuilder,
              child: NomoTheme(
                value: theme,
                child: NomoNavigator(
                  delegate: delegate,
                  child: Builder(builder: (context) {
                    return WidgetsApp.router(
                      debugShowCheckedModeBanner: false,
                      localizationsDelegates: [
                        if (localizationDelegate != null) localizationDelegate!,
                        GlobalMaterialLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate
                      ],
                      supportedLocales: supportedLocales,
                      locale: currentLocale,
                      color: theme.colors.primary,
                      routerDelegate: delegate,
                      // routeInformationProvider:
                      //     PlatformRouteInformationProvider(
                      //   initialRouteInformation: RouteInformation(
                      //     uri: WidgetsBinding
                      //         .instance.platformDispatcher.defaultRouteName.uri,
                      //   ),
                      // ),
                      // backButtonDispatcher:
                      //     CustomBackButtonDispatcher(delegate),
                      routeInformationParser: NomoRouteInformationParser(),
                    );
                  }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// class CustomBackButtonDispatcher extends RootBackButtonDispatcher {
//   final NomoRouterDelegate delegate;
//   CustomBackButtonDispatcher(this.delegate);

//   @override
//   Future<bool> didPopRoute() {
//     var (rootRoutes, nestedRoutes) = delegate.currentConfiguration;

//     if (nestedRoutes.length > 1) {
//       delegate.popNested();
//       return Future.value(true);
//     }

//     return super.didPopRoute();
//   }
// }
