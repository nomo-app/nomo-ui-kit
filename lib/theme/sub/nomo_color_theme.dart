part of nomo_theme;

enum ColorMode {
  LIGHT('Nomo Light', "assets/images/light/registrationbackground.png"),
  DARK('Nomo Dark', "assets/images/dark/registrationbackground.png"),
  AVINOC('AVINOC', "assets/images/avinoc/registrationbackground.png");

  final String displayName;
  final String imagePath;

  const ColorMode(this.displayName, this.imagePath);

  NomoColorThemeData get theme => switch (this) {
        ColorMode.LIGHT => light,
        ColorMode.DARK => dark,
        ColorMode.AVINOC => avinoc,
      };
}

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
}

class NomoComponentColors {
  final NomoOutlineContainerColorData outlineContainerTheme;
  final NomoAppBarColorData appBarTheme;

  const NomoComponentColors._({
    required this.outlineContainerTheme,
    required this.appBarTheme,
  });

  factory NomoComponentColors.override({
    required NomoColors colors,
    NomoOutlineContainerColorData? outlineContainerTheme,
    NomoAppBarColorData? appBarTheme,
  }) {
    final def = defaultComponents(colors);
    return NomoComponentColors._(
      outlineContainerTheme: outlineContainerTheme ?? def.outlineContainerTheme,
      appBarTheme: appBarTheme ?? def.appBarTheme,
    );
  }

  static NomoComponentColors defaultComponents(NomoColors core) =>
      NomoComponentColors._(
        outlineContainerTheme: NomoOutlineContainerThemeData(
          foreground: core.foreground1,
          background: core.background,
        ),
        appBarTheme: NomoAppBarColorData(
          backgroundColor: core.primary,
        ),
      );
}

class NomoColorThemeData {
  final NomoColors colors;
  final NomoComponentColors components;

  NomoColorThemeData({
    required this.colors,
    NomoComponentColors Function(NomoColors core) buildComponents =
        NomoComponentColors.defaultComponents,
  }) : components = buildComponents.call(colors);

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

final light = NomoColorThemeData(
  colors: NomoColors(
    primary: primaryColor,
    onPrimary: Colors.white,
    primaryContainer: Color(0xffFCFAF7),
    secondary: secondary,
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xffe6d0a3),
    background: Color(0xFFF5F5F5),
    surface: Colors.white,
    error: Colors.redAccent,
    disabledColor: Color(0xFFE0E0E0),
    foreground1: Color(0xCF000000),
    foreground2: Color(0xDF000000),
    foreground3: Color(0xEF000000),
    brightness: Brightness.light,
  ),
  buildComponents: (core) {
    return NomoComponentColors.override(
      colors: core,
      outlineContainerTheme: NomoOutlineContainerThemeData(
        foreground: Colors.cyan,
        background: core.secondary,
      ),
    );
  },
);

final dark = NomoColorThemeData(
  colors: NomoColors(
    primary: primaryColor,
    onPrimary: Colors.white,
    primaryContainer: Color(0xffFCFAF7),
    secondary: secondary,
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xffe6d0a3),
    background: Color(0xff293138),
    surface: Color(0xff2e363c),
    error: Colors.redAccent,
    disabledColor: Color(0xFFE0E0E0),
    foreground1: Color(0xEAFFFFFF),
    foreground2: Color(0xF0FFFFFF),
    foreground3: Color(0xFAFFFFFF),
    brightness: Brightness.dark,
  ),
);

final avinoc = NomoColorThemeData(
  colors: NomoColors(
    primary: Color(0xff2FAAA5),
    onPrimary: Colors.white,
    primaryContainer: Color.fromARGB(255, 202, 255, 253),
    secondary: Color(0xff2FAAA5),
    onSecondary: Color(0xff1C1C1C),
    secondaryContainer: Color(0xff1C1C1C),
    background: Color(0xff272F4A),
    surface: Color(0xFF101d42),
    error: Colors.redAccent,
    disabledColor: Color(0xFFE0E0E0),
    foreground1: Color(0xEAFFFFFF),
    foreground2: Color(0xF0FFFFFF),
    foreground3: Color(0xFAFFFFFF),
    brightness: Brightness.dark,
  ),
);
