import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
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
  const ThemeAnimator({
    required this.notifier,
    required this.child,
    super.key,
  });
  final ThemeNotifier notifier;
  final Widget child;

  @override
  State<ThemeAnimator> createState() => _ThemeAnimatorState();
}

class _ThemeAnimatorState extends State<ThemeAnimator> {
  late NomoThemeData lastTheme;

  @override
  void initState() {
    lastTheme = widget.notifier.theme;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: widget.notifier,
      builder: (context, child) {
        final nextTheme = widget.notifier.theme;
        return TweenAnimationBuilder(
          tween: NomoThemeDataTween(begin: lastTheme, end: nextTheme),
          duration: kThemeChangeDuration,
          curve: kThemeChangeCurve,
          builder: (_, theme, child) => NomoTheme(
            value: theme,
            colorMode: widget.notifier.colorMode,
            sizingMode: widget.notifier.sizingMode,
            child: NomoDefaultTextStyle(
              style: theme.typography.b1,
              child: child!,
            ),
          ),
          onEnd: () => lastTheme = nextTheme,
          child: widget.child,
        );
      },
    );
  }
}
