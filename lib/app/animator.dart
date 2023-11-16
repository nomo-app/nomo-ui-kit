import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

class NomoThemeDataTween extends Tween<NomoThemeData> {
  NomoThemeDataTween({
    super.begin,
    super.end,
  });

  @override
  NomoThemeData lerp(double t) {
    return NomoThemeData.lerp(begin!, end!, t);
  }
}

class ThemeAnimator extends StatefulWidget {
  final ThemeNotifier notifier;
  final Widget child;

  const ThemeAnimator({
    super.key,
    required this.notifier,
    required this.child,
  });

  @override
  State<ThemeAnimator> createState() => _ThemeAnimatorState();
}

class _ThemeAnimatorState extends State<ThemeAnimator> {
  late NomoThemeData lastTheme;

  @override
  void initState() {
    lastTheme = widget.notifier.value;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: widget.notifier,
      builder: (context, nextTheme, child) {
        return TweenAnimationBuilder(
          tween: NomoThemeDataTween(begin: lastTheme, end: nextTheme),
          duration: kThemeChangeDuration,
          curve: kThemeChangeCurve,
          builder: (_, theme, child) => NomoTheme(value: theme, child: child!),
          onEnd: () => lastTheme = nextTheme,
          child: widget.child,
        );
      },
    );
  }
}
