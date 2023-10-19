part of nomo_theme;

///
/// This extension allows us to access the theme data from the context
///
extension ThemeContextExtension on BuildContext {
  NomoThemeData get theme => NomoTheme.of(this);

  NomoColorTheme get colors => theme.colors;

  NomoTypographyTheme get typography => theme.typography;

  NomoSizingTheme get sizing => theme.sizing;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get width => mediaQuery.size.width;

  double get height => mediaQuery.size.height;

  double get pixelRatio => mediaQuery.devicePixelRatio;

  double get insetTop => mediaQuery.padding.top;

  T responsiveValue<T>({
    required T small,
    required T medium,
    required T large,
  }) {
    if (sizing.isSmall) return small;
    if (sizing.isMedium) return medium;
    return large;
  }
}

///
/// This Extension allows us to access the sizing type from the theme
///
extension SizingTypeExt on NomoSizingTheme {
  SizingMode get type {
    return SizingMode.values.firstWhere(
      (element) => element.theme == this,
      orElse: () => SizingMode.LARGE,
    );
  }

  bool get isSmall => type == SizingMode.SMALL;
  bool get isMedium => type == SizingMode.MEDIUM;
  bool get isLarge => type == SizingMode.LARGE;
}

///
/// ColorTheme Extension
///

const lightShimmerGradient = LinearGradient(
  colors: [Color(0xFFEBEBF4), Color(0xFFF4F4F4), Color(0xFFEBEBF4)],
  stops: [0.1, 0.3, 0.4],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);
const darkshimmerGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 59, 70, 77),
    Color.fromARGB(255, 153, 153, 153),
    Color.fromARGB(255, 59, 70, 77)
  ],
  stops: [0.1, 0.3, 0.4],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

const tupanShimmerGradient = LinearGradient(
  colors: [Color(0x4477AF22), Color(0x9977AF22), Color(0x4477AF22)],
  stops: [0.1, 0.3, 0.4],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

const avinocShimmerGradient = LinearGradient(
  colors: [
    Color(0x222FAAA5),
    Color.fromARGB(126, 104, 115, 154),
    Color(0x222FAAA5)
  ],
  stops: [0.1, 0.3, 0.4],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);

extension ColorTypeExt on NomoColorTheme {
  ColorMode get type {
    return ColorMode.values.firstWhere(
      (element) => element.theme == this,
      orElse: () => ColorMode.LIGHT,
    );
  }

  bool get isLight => type == ColorMode.LIGHT;
  bool get isDark => type == ColorMode.DARK;
  bool get isAvinoc => type == ColorMode.AVINOC;
  bool get isTupan => type == ColorMode.TUPAN;

  LinearGradient get shimmerGradient {
    switch (type) {
      case ColorMode.AVINOC:
        return avinocShimmerGradient;
      case ColorMode.TUPAN:
        return tupanShimmerGradient;
      case ColorMode.DARK:
        return darkshimmerGradient;
      default:
        return lightShimmerGradient;
    }
  }

  Color get borderColor => Colors.white24;
}

///
/// ZeniqThemeData Extension
///
extension ThemeUtil on NomoThemeData {
  BoxDecoration getCardDecoration({
    Color? color,
    BorderRadius? borderRadius,
    BoxShape? shape,
    required double elevation,
    required Offset offset,
  }) {
    final shadows = [
      BoxShadow(
        color: Colors.black26,
        spreadRadius: 0.25 * elevation,
        blurRadius: 0.5 * elevation,
        offset: offset,
      ),
    ];

    final border = Border.all(
      color: colors.borderColor,
      width: 2,
    );

    return BoxDecoration(
      borderRadius: borderRadius,
      color: color,
      shape: shape ?? BoxShape.rectangle,
      boxShadow: shadows.ifElseNull(colors.brightness.isLight),
      border: border.ifElseNull(colors.brightness.isDark),
    );
  }
}

///
/// Utitly Functions for Programmatically Adjusting Colors
///
extension ColorUtils on Color {
  Color darken([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness(
      (hsl.lightness - amount).clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness(
      (hsl.lightness + amount).clamp(
        0.0,
        1.0,
      ),
    );

    return hslLight.toColor();
  }
}

extension BrightnessUtils on Brightness {
  Brightness get opposite =>
      this == Brightness.light ? Brightness.dark : Brightness.light;

  bool get isLight => this == Brightness.light;

  bool get isDark => this == Brightness.dark;
}

extension IfUtils<T> on T {
  T? ifElseNull(bool condition) => condition ? this : null;
}
