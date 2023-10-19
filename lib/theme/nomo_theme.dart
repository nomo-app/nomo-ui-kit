library nomo_theme;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'sub/nomo_color_theme.dart';
part 'sub/nomo_sizing_theme.dart';
part 'sub/nomo_typography_theme.dart';
part 'theme_extension.dart';

const primaryColor = Color(0xFFBCA570);
const secondary = Color(0xffd1af72);

class NomoThemeData {
  final NomoColorTheme colors;
  final NomoTypographyTheme typography;
  final NomoSizingTheme sizing;

  NomoThemeData({
    required this.colors,
    required this.sizing,
    required NomoTypographyTheme textTheme,
  }) : typography = textTheme.copyWith(
          colorTheme: colors,
          sizingTheme: sizing,
        );

  NomoThemeData copyWith({
    NomoColorTheme? colors,
    NomoTypographyTheme? typography,
    NomoSizingTheme? sizing,
  }) {
    return NomoThemeData(
      colors: colors ?? this.colors,
      textTheme: (typography ?? this.typography).copyWith(
        colorTheme: colors,
        sizingTheme: sizing,
      ),
      sizing: sizing ?? this.sizing,
    );
  }
}

class NomoTheme extends InheritedWidget {
  final NomoThemeData value;

  const NomoTheme({
    super.key,
    required this.value,
    required super.child,
  });

  static NomoThemeData of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<NomoTheme>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.value;
  }

  @override
  bool updateShouldNotify(NomoTheme oldWidget) {
    return oldWidget.value != value;
  }
}
