import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_router/router/entities/transitions.dart';
import 'package:nomo_ui_kit/app/animator.dart';
import 'package:nomo_ui_kit/app/metric_reactor.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';
import 'package:nomo_ui_kit/utils/multi_wrapper.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

const kThemeChangeDuration = Duration(milliseconds: 400);
const kThemeChangeCurve = Curves.easeInOut;
final _scrollBehavior = const ScrollBehavior().copyWith(scrollbars: false);

class NomoApp extends StatefulWidget {
  const NomoApp({
    required this.routes,
    required this.supportedLocales,
    required this.theme,
    required this.sizingThemeBuilder,
    super.key,
    this.localizationDelegate,
    this.currentLocale,
    this.defaultPageTransistion = const PageFadeTransition(),
    this.translator,
  });
  final Iterable<RouteInfo> routes;
  final PageTransition defaultPageTransistion;
  final LocalizationsDelegate<dynamic>? localizationDelegate;
  final Iterable<Locale> supportedLocales;
  final Locale? currentLocale;
  final NomoThemeData theme;
  final NomoSizingThemeData Function(double) sizingThemeBuilder;
  final String Function(String value)? translator;

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
    return MultiWrapper(
      wrappers: [
        (child) => ThemeProvider(notifier: themeNotifier, child: child),
        (child) => ScrollConfiguration(behavior: _scrollBehavior, child: child),
        if (widget.translator != null)
          (child) =>
              NomoTextTranslator(translator: widget.translator!, child: child),
      ],
      child: MetricReactor(
        sizingThemeBuilder: widget.sizingThemeBuilder,
        child: NomoNavigator(
          delegate: delegate,
          defaultTransistion: widget.defaultPageTransistion,
          child: ThemeAnimator(
            notifier: themeNotifier,
            child: WidgetsApp.router(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                if (widget.localizationDelegate != null)
                  widget.localizationDelegate!,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: widget.supportedLocales,
              locale: widget.currentLocale,
              color: widget.theme.colors.primary,
              routerDelegate: delegate,
              // routeInformationProvider: PlatformRouteInformationProvider(
              //   initialRouteInformation: RouteInformation(
              //     uri: Uri.parse("/input"), //WidgetsBinding
              //     //     .instance.platformDispatcher.defaultRouteName.uri,
              //   ),
              // ),
              backButtonDispatcher: NomoBackButtonDispatcher(delegate),
              routeInformationParser: const NomoRouteInformationParser(),
            ),
          ),
        ),
      ),
    );
  }
}
