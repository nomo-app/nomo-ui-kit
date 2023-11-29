library nomo_theme;

import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_color_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_constants.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';

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
  }) : typographyTheme = textTheme.copyWith(
          colors: colorTheme.colors,
          sizes: sizingTheme.sizes,
        );
  final NomoColorThemeData colorTheme;
  final NomoTypographyTheme typographyTheme;
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
      textTheme: t < 0.5 ? a.typographyTheme : b.typographyTheme,
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
      textTheme: (typographyTheme ?? this.typographyTheme).copyWith(
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
    required super.child,
    super.key,
  });
  final NomoThemeData value;

  static NomoThemeData of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<NomoTheme>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.value;
  }

  static NomoThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NomoTheme>()?.value;
  }

  @override
  bool updateShouldNotify(NomoTheme oldWidget) {
    return oldWidget.value != value;
  }
}
