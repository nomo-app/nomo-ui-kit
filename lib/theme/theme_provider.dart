import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

typedef ThemeNotifier = ValueNotifier<NomoThemeData>;

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

  void changeColorTheme(NomoColorThemeData mode) {
    notifier.value = notifier.value.copyWith(colorTheme: mode);
  }

  void changeSizingTheme(NomoSizingThemeData mode) {
    if (notifier.value.sizingTheme == mode) return;

    notifier.value = notifier.value.copyWith(sizingTheme: mode);
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return oldWidget.notifier != notifier;
  }
}
