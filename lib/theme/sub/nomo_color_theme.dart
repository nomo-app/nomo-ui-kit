part of nomo_theme;

enum ColorMode {
  LIGHT('Nomo Light', light, "assets/images/light/registrationbackground.png"),
  DARK('Nomo Dark', dark, "assets/images/dark/registrationbackground.png"),
  AVINOC('AVINOC', avinoc, "assets/images/avinoc/registrationbackground.png"),
  TUPAN('TUPAN', tupan, "assets/images/tupan/registrationbackground.png");

  final String displayName;
  final NomoColorTheme theme;
  final String imagePath;

  const ColorMode(this.displayName, this.theme, this.imagePath);
}

class NomoColorTheme {
  final Brightness brightness;
  final Color primary;
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
  final String assetPath;
  final Color settingsTileColor;
  final Color settingsColumnColor;
  final String splashScreenPath;
  final Color snackBarColor;
  final String splashScreenPathDesktop;

  const NomoColorTheme({
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
    required this.assetPath,
    required this.brightness,
    required this.settingsTileColor,
    required this.settingsColumnColor,
    required this.splashScreenPath,
    required this.snackBarColor,
    required this.splashScreenPathDesktop,
  });

  ///
  /// We still need to use the material theme for some widgets.
  /// This should not be used for any custom widgets.
  ///
  ThemeData get materialTheme {
    return ThemeData.from(
      colorScheme: ColorScheme(
        background: background,
        primary: primary,
        secondary: secondary,
        surface: surface,
        error: error,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onError: Colors.white,
        brightness: brightness,
        onBackground: foreground2,
        onSurface: foreground1,
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

const light = NomoColorTheme(
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
    assetPath: 'light',
    brightness: Brightness.light,
    settingsTileColor: Color(0xFFFFFFFF),
    settingsColumnColor: Color(0xFFEDEDED),
    snackBarColor: Color(0xFFFFF7E5),
    splashScreenPathDesktop:
        "assets/animation/lottie/light/splash_screen_light_desktop.json",
    splashScreenPath: "assets/animation/lottie/light/splash_screen_light.json");

const dark = NomoColorTheme(
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
    assetPath: 'dark',
    brightness: Brightness.dark,
    settingsTileColor: Color(0xFF4B5A66),
    settingsColumnColor: Color(0xFF38434C),
    snackBarColor: Color(0xFF474A53),
    splashScreenPathDesktop:
        "assets/animation/lottie/dark/splash-screen_dark_desktop.json",
    splashScreenPath: "assets/animation/lottie/dark/splash-screen_dark.json");

const avinoc = NomoColorTheme(
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
    assetPath: 'avinoc',
    brightness: Brightness.dark,
    settingsTileColor: Color(0xFF333A66),
    settingsColumnColor: Color(0xFF232846),
    snackBarColor: Color(0xFF333A66),
    splashScreenPathDesktop:
        "assets/animation/lottie/avinoc/splash-screen_avinoc.json",
    splashScreenPath:
        "assets/animation/lottie/avinoc/splash-screen_avinoc.json");

const tupan = NomoColorTheme(
    primary: Color(0xff77AF22),
    onPrimary: Colors.white,
    primaryContainer: Color.fromARGB(255, 239, 255, 216),
    secondary: Color(0xff77AF22),
    onSecondary: Color(0xff1C1C1C),
    secondaryContainer: Color(0xff1C1C1C),
    background: Color(0xff417030),
    surface: Color(0xFF346231),
    error: Colors.redAccent,
    disabledColor: Color(0xFFE0E0E0),
    foreground1: Color(0xEAFFFFFF),
    foreground2: Color(0xF0FFFFFF),
    foreground3: Color(0xFAFFFFFF),
    assetPath: 'tupan',
    brightness: Brightness.dark,
    settingsTileColor: Color(0xFF4A8037),
    settingsColumnColor: Color(0xFF417030),
    snackBarColor: Color(0xFF4A8037),
    splashScreenPathDesktop:
        "assets/animation/lottie/tupan/splash-screen_tupan.json",
    splashScreenPath: "assets/animation/lottie/tupan/splash-screen_tupan.json");
