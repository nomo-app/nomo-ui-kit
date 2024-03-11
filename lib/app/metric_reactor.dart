import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

class MetricReactor extends StatefulWidget {
  const MetricReactor({
    required this.child,
    required this.sizingThemeBuilder,
    super.key,
  });
  final Widget child;
  final NomoSizingThemeData Function(double) sizingThemeBuilder;

  @override
  State<MetricReactor> createState() => _MetricReactorState();
}

class _MetricReactorState extends State<MetricReactor>
    with WidgetsBindingObserver {
  late FlutterView view;
  late MediaQueryData mediaQueryData;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);

    view = WidgetsBinding.instance.platformDispatcher.views.first;
    mediaQueryData = MediaQueryData.fromView(view);

    Future.microtask(() {
      ThemeProvider.of(context).changeSizingTheme(
        widget.sizingThemeBuilder(mediaQueryData.size.width),
      );
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    setState(() {
      view = WidgetsBinding.instance.platformDispatcher.views.first;
      mediaQueryData = MediaQueryData.fromView(view);
    });

    ThemeProvider.of(context).changeSizingTheme(
      widget.sizingThemeBuilder(mediaQueryData.size.width),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: mediaQueryData.copyWith(textScaler: TextScaler.linear(1.0)),
      child: widget.child,
    );
  }
}
