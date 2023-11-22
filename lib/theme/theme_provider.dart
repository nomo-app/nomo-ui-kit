import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_color_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';

typedef ThemeNotifier = ValueNotifier<NomoThemeData>;

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    required ValueNotifier<NomoThemeData> notifier,
    required super.child,
    super.key,
  }) : _notifier = notifier;
  final ThemeNotifier _notifier;

  NomoThemeData get theme => _notifier.value;
  NomoColorThemeData get colorTheme => _notifier.value.colorTheme;
  NomoSizingThemeData get sizingTheme => _notifier.value.sizingTheme;

  static ThemeProvider of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    assert(result != null, 'No ThemeProvider found in context');
    return result!;
  }

  void changeColorTheme(NomoColorThemeData mode) {
    _notifier.value = _notifier.value.copyWith(colorTheme: mode);
  }

  void changeSizingTheme(NomoSizingThemeData mode) {
    if (_notifier.value.sizingTheme == mode) return;

    _notifier.value = _notifier.value.copyWith(sizingTheme: mode);
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return false;
  }
}
