import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_color_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';

class ThemeNotifier extends ChangeNotifier {
  final NomoThemeDelegate<Object, Object> _delegate;
  late final Map<Object, NomoColorThemeData> _colorThemes;
  late final Map<Object, NomoSizingThemeData> _sizingThemes;
  late Object colorMode;
  late Object sizingMode;
  late NomoThemeData _theme;

  NomoThemeData get theme => _theme;

  ThemeNotifier(this._delegate) {
    _colorThemes = _delegate.createColorThemes();
    _sizingThemes = _delegate.createSizingThemes();

    colorMode = _delegate.initialColorTheme();
    sizingMode = _sizingThemes.keys.first;

    _theme = NomoThemeData(
      colorTheme: _colorThemes[colorMode]!,
      sizingTheme: _sizingThemes.values.first,
      constants: _delegate.constants.componentConstants,
      textTheme: _delegate.typography,
    );
  }

  void changeColorTheme(Object mode) {
    if (colorMode == mode) return;

    colorMode = mode;
    _theme = _theme.copyWith(colorTheme: _colorThemes[mode]);
    notifyListeners();
  }

  void changeSizingTheme(Object mode) {
    if (sizingMode == mode) return;

    sizingMode = mode;
    _theme = _theme.copyWith(sizingTheme: _sizingThemes[mode]);
    notifyListeners();
  }
}

class ThemeProvider extends InheritedWidget {
  const ThemeProvider({
    required ThemeNotifier notifier,
    required super.child,
    super.key,
  }) : _notifier = notifier;
  final ThemeNotifier _notifier;

  NomoThemeData get theme => _notifier.theme;
  NomoColorThemeData get colorTheme => _notifier.theme.colorTheme;
  NomoSizingThemeData get sizingTheme => _notifier.theme.sizingTheme;

  Object get colorMode => _notifier.colorMode;
  Object get sizingMode => _notifier.sizingMode;

  static ThemeProvider of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<ThemeProvider>();
    assert(result != null, 'No ThemeProvider found in context');
    return result!;
  }

  void changeColorTheme(Object mode) {
    _notifier.changeColorTheme(mode);
  }

  void changeSizingTheme(Object mode) {
    _notifier.changeSizingTheme(mode);
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return false;
  }
}
