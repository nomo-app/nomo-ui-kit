import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nomo_ui_kit/app/animator.dart';
import 'package:nomo_ui_kit/app/metric_reactor.dart';
import 'package:nomo_ui_kit/app/notifications/app_notification.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';
import 'package:nomo_ui_kit/utils/multi_wrapper.dart';

const kThemeChangeDuration = Duration(milliseconds: 400);
const kThemeChangeCurve = Curves.easeInOut;
final _scrollBehavior = const ScrollBehavior().copyWith(
  scrollbars: false,
  dragDevices: PointerDeviceKind.values.toSet(),
);

class NomoApp extends StatefulWidget {
  const NomoApp({
    required this.themeDelegate,
    required this.routerConfig,
    required this.color,
    required this.supportedLocales,
    this.localeResolutionCallback,
    super.key,
    this.localizationDelegate,
    this.currentLocale,
    this.translator,
    this.appWrapper,
  });

  final NomoThemeDelegate<Object, Object> themeDelegate;
  final RouterConfig<Object> routerConfig;
  final Color color;
  final LocalizationsDelegate<dynamic>? localizationDelegate;
  final Iterable<Locale> supportedLocales;
  final Locale? currentLocale;
  final Locale? Function(Locale?, Iterable<Locale>)? localeResolutionCallback;
  final String Function(String value)? translator;

  /// A Wrapper that can access the ThemeProvider and NomoNavigator
  final Widget Function(BuildContext context, Widget app)? appWrapper;

  @override
  State<NomoApp> createState() => _NomoAppState();
}

class _NomoAppState extends State<NomoApp> {
  late final ThemeNotifier themeNotifier;

  @override
  void initState() {
    themeNotifier = ThemeNotifier(widget.themeDelegate);
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
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: widget.supportedLocales,
      locale: widget.currentLocale,
      localeResolutionCallback: widget.localeResolutionCallback,
      color: widget.color,
      routerConfig: widget.routerConfig,
      builder: (context, child) {
        if (widget.appWrapper != null) {
          return widget.appWrapper!(context, child!);
        }
        return child!;
      },
    );

    return MultiWrapper(
      wrappers: [
        (child) => ThemeProvider(notifier: themeNotifier, child: child),
        (child) => ScrollConfiguration(behavior: _scrollBehavior, child: child),
        if (widget.translator != null)
          (child) =>
              NomoTextTranslator(translator: widget.translator!, child: child),
        (child) => ScaffoldMessenger(
              child: child,
            ),
        (child) => InAppNotification(child: child),
      ],
      child: MetricReactor(
        sizingThemeBuilder: widget.themeDelegate.sizingThemeBuilder,
        child: ThemeAnimator(
          notifier: themeNotifier,
          child: app,
        ),
      ),
    );
  }
}
