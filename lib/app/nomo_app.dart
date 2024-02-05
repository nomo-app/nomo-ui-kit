import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_router/router/entities/route.dart';
import 'package:nomo_router/router/entities/transitions.dart';
import 'package:nomo_ui_kit/app/animator.dart';
import 'package:nomo_ui_kit/app/metric_reactor.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';
import 'package:nomo_ui_kit/utils/multi_wrapper.dart';

const kThemeChangeDuration = Duration(milliseconds: 400);
const kThemeChangeCurve = Curves.easeInOut;
final _scrollBehavior = const ScrollBehavior().copyWith(
  scrollbars: false,
  dragDevices: PointerDeviceKind.values.toSet(),
);

class NomoApp extends StatefulWidget {
  const NomoApp({
    required this.appRouter,
    required this.supportedLocales,
    required this.theme,
    required this.sizingThemeBuilder,
    super.key,
    this.localizationDelegate,
    this.currentLocale,
    this.defaultPageTransistion = const PageFadeTransition(),
    this.defaultModalTransistion = const PageFadeTransition(),
    this.translator,
    this.appWrapper,
    this.navigatorObservers = const [],
    this.nestedNavigatorObservers = const [],
    this.home,
    this.shouldPop,
    this.willPop,
  });

  final NomoAppRouter appRouter;
  final PageTransition defaultPageTransistion;
  final PageTransition defaultModalTransistion;
  final LocalizationsDelegate<dynamic>? localizationDelegate;
  final Iterable<Locale> supportedLocales;
  final Locale? currentLocale;
  final NomoThemeData theme;
  final NomoSizingThemeData Function(double) sizingThemeBuilder;
  final String Function(String value)? translator;
  final Widget? home;
  final List<NavigatorObserver> navigatorObservers;
  final List<NavigatorObserver> nestedNavigatorObservers;
  final Future<bool> Function()? shouldPop;
  final Future<bool> Function()? willPop;

  /// A Wrapper that can access the ThemeProvider and NomoNavigator
  final Widget Function(BuildContext context, Widget app)? appWrapper;

  @override
  State<NomoApp> createState() => _NomoAppState();
}

class _NomoAppState extends State<NomoApp> {
  late final ThemeNotifier themeNotifier;
  late final NomoRouterDelegate delegate;
  late final PlatformRouteInformationProvider routeInformationProvider;
  late final NomoBackButtonDispatcher backButtonDispatcher;

  @override
  void initState() {
    routeInformationProvider = PlatformRouteInformationProvider(
      initialRouteInformation: RouteInformation(
        uri: WidgetsBinding.instance.platformDispatcher.defaultRouteName.uri,
      ),
    );
    themeNotifier = ThemeNotifier(widget.theme);
    delegate = NomoRouterDelegate(
      appRouter: widget.appRouter,
      observers: widget.navigatorObservers,
      nestedObservers: widget.nestedNavigatorObservers,
      initial: widget.home,
    );
    backButtonDispatcher = NomoBackButtonDispatcher(
      delegate,
      widget.shouldPop,
      widget.willPop,
    );
    super.initState();
  }

  @override
  void dispose() {
    themeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final app = WidgetsApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        if (widget.localizationDelegate != null) widget.localizationDelegate!,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: widget.supportedLocales,
      locale: widget.currentLocale,
      color: widget.theme.colors.primary,
      routerDelegate: delegate,
      routeInformationProvider: routeInformationProvider,
      backButtonDispatcher: backButtonDispatcher,
      routeInformationParser: const NomoRouteInformationParser(),
    );

    return MultiWrapper(
      wrappers: [
        (child) => ThemeProvider(notifier: themeNotifier, child: child),
        (child) => ScrollConfiguration(behavior: _scrollBehavior, child: child),
        if (widget.translator != null)
          (child) =>
              NomoTextTranslator(translator: widget.translator!, child: child),
        (child) => NomoNavigator(
              delegate: delegate,
              defaultTransistion: widget.defaultPageTransistion,
              defaultModalTransistion: widget.defaultModalTransistion,
              child: child,
            ),
      ],
      child: MetricReactor(
        sizingThemeBuilder: widget.sizingThemeBuilder,
        child: ThemeAnimator(
          notifier: themeNotifier,
          child: app.wrapIf(
            widget.appWrapper != null,
            (metricReactor) => Builder(
              builder: (context) => widget.appWrapper!(context, metricReactor),
            ),
          ),
        ),
      ),
    );
  }
}
