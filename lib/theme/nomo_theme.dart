library nomo_theme;

import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_color_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_constants.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';
import 'package:nomo_ui_kit/theme/theme_provider.dart';

export 'dart:ui';

part 'sub/nomo_typography_theme.dart';
part 'theme_extension.dart';

const primaryColor = Color(0xFFBCA570);
const secondary = Color(0xffd1af72);

class NomoThemeData {
  NomoThemeData({
    required this.colorTheme,
    required this.sizingTheme,
    required this.constants,
    required NomoTypographyTheme textTheme,
  }) : typography = textTheme.copyWith(
          colors: colorTheme.colors,
          sizes: sizingTheme.sizes,
        );
  final NomoColorThemeData colorTheme;
  final NomoTypographyTheme typography;
  final NomoSizingThemeData sizingTheme;
  final NomoComponentConstants constants;

  NomoColors get colors => colorTheme.colors;
  NomoComponentColors get componentColors => colorTheme.components;

  NomoSizes get sizes => sizingTheme.sizes;
  NomoComponentSizes get componentSizes => sizingTheme.components;

  static NomoThemeData lerp(NomoThemeData a, NomoThemeData b, double t) {
    return NomoThemeData(
      colorTheme: NomoColorThemeData.lerp(a.colorTheme, b.colorTheme, t),
      sizingTheme: NomoSizingThemeData.lerp(a.sizingTheme, b.sizingTheme, t),
      textTheme: t < 0.5 ? a.typography : b.typography,
      constants: t < 0.5 ? a.constants : b.constants,
    );
  }

  NomoThemeData copyWith({
    NomoColorThemeData? colorTheme,
    NomoTypographyTheme? typographyTheme,
    NomoSizingThemeData? sizingTheme,
    NomoComponentConstants? constants,
  }) {
    return NomoThemeData(
      colorTheme: colorTheme ?? this.colorTheme,
      textTheme: (typographyTheme ?? typography).copyWith(
        colors: colorTheme?.colors,
        sizes: sizingTheme?.sizes,
      ),
      sizingTheme: sizingTheme ?? this.sizingTheme,
      constants: constants ?? this.constants,
    );
  }
}

class NomoTheme extends InheritedWidget {
  const NomoTheme({
    required this.value,
    required this.colorMode,
    required this.sizingMode,
    required super.child,
    super.key,
  });
  final NomoThemeData value;
  final Object colorMode;
  final Object sizingMode;

  static NomoThemeData of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<NomoTheme>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.value;
  }

  static NomoTheme themeOf(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<NomoTheme>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!;
  }

  static NomoThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NomoTheme>()?.value;
  }

  @override
  bool updateShouldNotify(NomoTheme oldWidget) {
    return oldWidget.value != value;
  }
}

abstract class NomoThemeDelegate<C, S> {
  late final Map<C, NomoColorThemeData> colorThemeMap = _createColorThemes();
  late final Map<S, NomoSizingThemeData> sizingThemeMap = _createSizingThemes();

  /// Base Components Colors
  NomoComponentColorsNullable defaultComponentsColor(NomoColors core);

  /// Map of all your Color Themes
  Map<C, NomoColorThemeDataNullable> get colorThemes;

  /// Initial Color Theme
  C initialColorTheme();

  /// Base Components Sizes
  NomoComponentSizesNullable defaultComponentsSize(NomoSizes core);

  /// Map of all your Sizing Themes
  Map<S, NomoSizingThemeDataNullable> get sizingThemes;

  /// Sizing Theme Builder
  /// This functions returns the sizing theme based on the width of the screen
  S sizingThemeBuilder(double width);

  /// Typography Theme
  NomoTypographyTheme get typography;

  /// Constants
  NomoConstantsThemeData get constants;

  void onThemeChanged(NomoThemeData theme, C colorMode, S sizingMode) {}

  void onColorThemeChanged(NomoColorThemeData theme, C colorMode) {}

  void onSizingThemeChanged(NomoSizingThemeData theme, S sizingMode) {}

  Map<S, NomoSizingThemeData> _createSizingThemes() {
    final map = <S, NomoSizingThemeData>{};
    for (final MapEntry(:key, :value) in sizingThemes.entries) {
      final defComponents = predefinedComponentSizes(value.sizes).overrideWith(
        defaultComponentsSize(value.sizes),
      );
      map[key] = NomoSizingThemeDataNullable.convert(value, defComponents);
    }
    return map;
  }

  Map<C, NomoColorThemeData> _createColorThemes() {
    final map = <C, NomoColorThemeData>{};
    for (final MapEntry(:key, :value) in colorThemes.entries) {
      final defComponents =
          predefinedComponentColors(value.colors).overrideWith(
        defaultComponentsColor(value.colors),
      );
      map[key] = NomoColorThemeDataNullable.convert(value, defComponents);
    }
    return map;
  }
}
