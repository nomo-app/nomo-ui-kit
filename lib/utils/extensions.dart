import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_color_theme.dart';

extension NotifierUtil<T> on ValueNotifier<T> {
  void update(T Function(T val) updater) {
    value = updater(value);
  }
}

extension ColorExtension on Color {
  String toHexColor() {
    return '0x${value.toRadixString(16).padLeft(8, '0')}';
  }
}

extension NomoThemeExtension on NomoColors {
  ThemeData get materialTheme {
    return ThemeData(
      primaryColor: primary,
      colorScheme: ColorScheme(
        primary: primary,
        secondary: secondary,
        background: background1,
        surface: surface,
        onBackground: foreground1,
        onSurface: foreground1,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        brightness: brightness,
        error: error,
        onError: foreground1,
      ),
    );
  }
}
