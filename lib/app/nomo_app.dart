import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:logger/logger.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/app/metric_reactor.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

typedef ThemeNotifier = ValueNotifier<NomoThemeData>;

class NomoApp extends StatelessWidget {
  final List<RouteInfo> routes;
  final List<RouteInfo> nestedRoutes;
  final LocalizationsDelegate? localizationDelegate;
  final Iterable<Locale> supportedLocales;
  final Locale? currentLocale;
  final NomoThemeData theme;
  final Widget Function(Widget, BuildContext) nestedNavigatorWrapper;

  const NomoApp({
    super.key,
    required this.routes,
    required this.nestedRoutes,
    this.localizationDelegate,
    required this.supportedLocales,
    required this.nestedNavigatorWrapper,
    required this.theme,
    this.currentLocale,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = ThemeNotifier(theme);
    print("Nomo App Build");
    final delegate = NomoRouterDelegate(
      rootNavigatorKey,
      routes: routes,
      nestedRoutes: nestedRoutes,
      nestedNavigatorWrapper: (nav) => Builder(
        builder: (context) {
          print("Nested Navigator Wrapper Build");
          return nestedNavigatorWrapper(
            nav,
            context,
          );
        },
      ),
    );

    return ThemeProvider(
      notifier: themeNotifier,
      child: ValueListenableBuilder(
        valueListenable: themeNotifier,
        builder: (context, theme, child) {
          print("Theme Changed to ${theme.colorTheme}");

          return ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: MetricReactor(
              child: NomoTheme(
                value: theme,
                child: NomoNavigator(
                  delegate: delegate,
                  child: Builder(builder: (context) {
                    print("Nomo Navigator Build");
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

                      //   routeInformationProvider: PlatformRouteInformationProvider(initialRouteInformation: WidgetsBinding.instance),
                      routeInformationParser: NomoRouteInformationParser(
                        nestedRoutes: nestedRoutes,
                      ),
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

class MultiWrapper extends StatelessWidget {
  final Widget child;

  final List<Function(BuildContext context, Widget child)> wrappers;

  const MultiWrapper({
    Key? key,
    required this.wrappers,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class ThemeProvider extends InheritedWidget {
  final ThemeNotifier notifier;

  const ThemeProvider({
    Key? key,
    required this.notifier,
    required Widget child,
  }) : super(key: key, child: child);

  static ThemeProvider of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    assert(result != null, 'No ThemeProvider found in context');
    return result!;
  }

  void changeColorTheme(ColorMode mode) {
    notifier.value = notifier.value.copyWith(colorTheme: mode.theme);
    Logger().i("Color Theme Changed to ${mode.name}");
  }

  void changeSizingTheme(double width) {
    final sizingMode = SizingMode.values.firstWhere(
      (element) => width < element.width,
      orElse: () => SizingMode.LARGE,
    );
    if (notifier.value.sizingTheme == sizingMode.theme) return;

    notifier.value = notifier.value.copyWith(sizingTheme: sizingMode.theme);

    Logger().i("Sizing Changed to ${sizingMode.name}");
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return oldWidget.notifier != notifier;
  }
}
