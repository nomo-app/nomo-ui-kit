part of nomo_theme;

class NomoColors {
  final Brightness brightness;

  /// Primary color
  final Color primary;

  /// Color on primary
  final Color onPrimary;
  final Color primaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color background;
  final Color surface;
  final Color error;
  final Color disabledColor;
  final Color foreground1;
  final Color foreground2;
  final Color foreground3;

  const NomoColors({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.background,
    required this.surface,
    required this.error,
    required this.disabledColor,
    required this.foreground1,
    required this.foreground2,
    required this.foreground3,
  });

  static NomoColors lerp(NomoColors a, NomoColors b, double t) {
    return NomoColors(
      brightness: t < 0.5 ? a.brightness : b.brightness,
      primary: Color.lerp(a.primary, b.primary, t)!,
      onPrimary: Color.lerp(a.onPrimary, b.onPrimary, t)!,
      primaryContainer: Color.lerp(a.primaryContainer, b.primaryContainer, t)!,
      secondary: Color.lerp(a.secondary, b.secondary, t)!,
      onSecondary: Color.lerp(a.onSecondary, b.onSecondary, t)!,
      secondaryContainer:
          Color.lerp(a.secondaryContainer, b.secondaryContainer, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      surface: Color.lerp(a.surface, b.surface, t)!,
      error: Color.lerp(a.error, b.error, t)!,
      disabledColor: Color.lerp(a.disabledColor, b.disabledColor, t)!,
      foreground1: Color.lerp(a.foreground1, b.foreground1, t)!,
      foreground2: Color.lerp(a.foreground2, b.foreground2, t)!,
      foreground3: Color.lerp(a.foreground3, b.foreground3, t)!,
    );
  }
}

class NomoComponentColors {
  final NomoOutlineContainerColorData outlineContainerTheme;
  final NomoAppBarColorData appBarTheme;
  final NomoScaffoldColorData scaffoldTheme;
  final NomoBottomBarColorData bottomBarTheme;
  final NomoSiderColorData siderTheme;
  final NomoVerticalMenuColorData verticalMenuTheme;

  const NomoComponentColors._({
    this.outlineContainerTheme = const NomoOutlineContainerColorData(),
    this.appBarTheme = const NomoAppBarColorData(),
    this.scaffoldTheme = const NomoScaffoldColorData(),
    this.bottomBarTheme = const NomoBottomBarColorData(),
    this.siderTheme = const NomoSiderColorData(),
    this.verticalMenuTheme = const NomoVerticalMenuColorData(),
  });

  factory NomoComponentColors.override({
    required NomoColors colors,
    NomoOutlineContainerColorData? outlineContainerTheme,
    NomoAppBarColorData? appBarTheme,
    NomoScaffoldColorData? scaffoldTheme,
    NomoBottomBarColorData? bottomBarTheme,
    NomoSiderColorData? siderTheme,
    NomoVerticalMenuColorData? verticalMenuTheme,
  }) {
    final def = defaultComponents(colors);
    return NomoComponentColors._(
      outlineContainerTheme: outlineContainerTheme ?? def.outlineContainerTheme,
      appBarTheme: appBarTheme ?? def.appBarTheme,
      scaffoldTheme: scaffoldTheme ?? def.scaffoldTheme,
      bottomBarTheme: bottomBarTheme ?? def.bottomBarTheme,
      siderTheme: siderTheme ?? def.siderTheme,
      verticalMenuTheme: verticalMenuTheme ?? def.verticalMenuTheme,
    );
  }

  static NomoComponentColors defaultComponents(NomoColors core) =>
      NomoComponentColors._(
        outlineContainerTheme: NomoOutlineContainerThemeData(
          foreground: core.foreground1,
          background: core.background,
        ),
        appBarTheme: NomoAppBarColorData(
          backgroundColor: core.background,
        ),
        scaffoldTheme: NomoScaffoldColorData(
          backgroundColor: core.background,
        ),
        bottomBarTheme: NomoBottomBarColorData(
          background: core.primaryContainer,
          borderRadius: BorderRadius.circular(8),
          foreground: core.foreground1,
          selectedForeground: core.primary,
        ),
        siderTheme: NomoSiderColorData(
          backgroundColor: core.background,
        ),
        verticalMenuTheme: NomoVerticalMenuColorData(
          foreground: core.foreground1,
          background: core.background,
          selectedBackground: core.primary.lighten(0.25),
          selectedForeground: core.primary,
          borderRadius: BorderRadius.circular(6),
        ),
      );

  static NomoComponentColors lerp(
    NomoComponentColors a,
    NomoComponentColors b,
    double t,
  ) {
    return NomoComponentColors._(
      outlineContainerTheme: NomoOutlineContainerColorData.lerp(
          a.outlineContainerTheme, b.outlineContainerTheme, t),
      appBarTheme: NomoAppBarColorData.lerp(a.appBarTheme, b.appBarTheme, t),
      scaffoldTheme:
          NomoScaffoldColorData.lerp(a.scaffoldTheme, b.scaffoldTheme, t),
      bottomBarTheme:
          NomoBottomBarColorData.lerp(a.bottomBarTheme, b.bottomBarTheme, t),
      siderTheme: NomoSiderColorData.lerp(a.siderTheme, b.siderTheme, t),
      verticalMenuTheme: NomoVerticalMenuColorData.lerp(
        a.verticalMenuTheme,
        b.verticalMenuTheme,
        t,
      ),
    );
  }
}

class NomoColorThemeData {
  final NomoColors colors;
  final NomoComponentColors components;

  NomoColorThemeData({
    required this.colors,
    NomoComponentColors Function(NomoColors core) buildComponents =
        NomoComponentColors.defaultComponents,
  }) : components = buildComponents.call(colors);

  NomoColorThemeData._({
    required this.colors,
    required this.components,
  });

  ///
  /// We still need to use the material theme for some widgets.
  /// This should not be used for any custom widgets.
  ///
  ThemeData get materialTheme {
    return ThemeData.from(
      colorScheme: ColorScheme(
        background: colors.background,
        primary: colors.primary,
        secondary: colors.secondary,
        surface: colors.surface,
        error: colors.error,
        onPrimary: colors.onPrimary,
        onSecondary: colors.onSecondary,
        onError: Colors.white,
        brightness: colors.brightness,
        onBackground: colors.foreground2,
        onSurface: colors.foreground1,
      ),
    );
  }

  factory NomoColorThemeData.lerp(
    NomoColorThemeData a,
    NomoColorThemeData b,
    double t,
  ) {
    return NomoColorThemeData._(
      colors: NomoColors.lerp(a.colors, b.colors, t),
      components: NomoComponentColors.lerp(a.components, b.components, t),
    );
  }

  // void setSystemUiOverlayStyle() => SystemChrome.setSystemUIOverlayStyle(
  //       SystemUiOverlayStyle(
  //         statusBarColor: Colors.transparent,
  //         statusBarIconBrightness: brightness.opposite,
  //         systemNavigationBarColor: background,
  //         systemNavigationBarIconBrightness: brightness.opposite,
  //         statusBarBrightness: brightness,
  //       ),
  //     );

  // void precacheAssets() => prechacheLottieAssets(type);
}
