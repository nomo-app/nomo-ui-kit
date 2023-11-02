import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';

class MetricReactor extends StatefulWidget {
  final Widget child;

  const MetricReactor({
    super.key,
    required this.child,
  });

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
        mediaQueryData.size.width,
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
      mediaQueryData.size.width,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: mediaQueryData,
      child: widget.child,
    );
  }
}
