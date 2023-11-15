import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/app/metric_reactor.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class NomoApp extends StatefulWidget {
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
  State<NomoApp> createState() => _NomoAppState();
}

class _NomoAppState extends State<NomoApp> {
  late final ThemeNotifier themeNotifier;
  late final NomoRouterDelegate delegate;

  @override
  void initState() {
    themeNotifier = ThemeNotifier(widget.theme);
    delegate = NomoRouterDelegate(rootNavigatorKey, routes: widget.routes);
    super.initState();
  }

  @override
  void dispose() {
    themeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      notifier: themeNotifier,
      child: MetricReactor(
        sizingThemeBuilder: widget.sizingThemeBuilder,
        child: NomoNavigator(
          delegate: delegate,
          child: ValueListenableBuilder(
            valueListenable: themeNotifier,
            builder: (context, theme, child) {
              return NomoTheme(
                value: theme,
                child: child!,
              );
            },
            child: WidgetsApp.router(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                if (widget.localizationDelegate != null)
                  widget.localizationDelegate!,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              supportedLocales: widget.supportedLocales,
              locale: widget.currentLocale,
              color: widget.theme.colors.primary,
              routerDelegate: delegate,
              routeInformationProvider: PlatformRouteInformationProvider(
                initialRouteInformation: RouteInformation(
                  uri: WidgetsBinding
                      .instance.platformDispatcher.defaultRouteName.uri,
                ),
              ),
              backButtonDispatcher: NomoBackButtonDispatcher(delegate),
              routeInformationParser: NomoRouteInformationParser(),
            ),
          ),
        ),
      ),
    );
  }
}
