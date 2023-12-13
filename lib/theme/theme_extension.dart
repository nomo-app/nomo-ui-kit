part of 'nomo_theme.dart';

///
/// This extension allows us to access the theme data from the context
///
extension ThemeContextExtension on BuildContext {
  NomoThemeData get theme => NomoTheme.of(this);

  NomoColors get colors => theme.colors;

  NomoComponentColors get componentColors => theme.componentColors;

  NomoColorThemeData get colorTheme => theme.colorTheme;

  NomoTypographyTheme get typography => theme.typography;

  NomoSizes get sizes => theme.sizes;

  NomoComponentSizes get componentSizes => theme.componentSizes;

  NomoSizingThemeData get sizingTheme => theme.sizingTheme;

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get width => mediaQuery.size.width;

  double get height => mediaQuery.size.height;

  double get pixelRatio => mediaQuery.devicePixelRatio;

  double get insetTop => mediaQuery.padding.top;

  // T responsiveValue<T>({
  //   required T small,
  //   required T medium,
  //   required T large,
  // }) {
  //   if (sizingTheme.isSmall) return small;
  //   if (sizingTheme.isMedium) return medium;
  //   return large;
  // }
}

///
/// This Extension allows us to access the sizing type from the theme
///
// extension SizingTypeExt on NomoSizingThemeData {
//   SizingMode get type {
//     return SizingMode.values.firstWhere(
//       (element) => element.theme == this,
//       orElse: () => SizingMode.LARGE,
//     );
//   }

//   bool get isSmall => type == SizingMode.SMALL;
//   bool get isMedium => type == SizingMode.MEDIUM;
//   bool get isLarge => type == SizingMode.LARGE;
// }

///
/// ZeniqThemeData Extension
///
extension ThemeUtil on NomoThemeData {
  BoxDecoration getCardDecoration({
    required double elevation,
    required Offset offset,
    Color? color,
    BorderRadius? borderRadius,
    BoxShape? shape,
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
      color: Colors.white24,
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
    assert(amount >= 0 && amount <= 1, 'Amount must be between 0 and 1');

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness(
      (hsl.lightness - amount).clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  Color lighten([double amount = .1]) {
    assert(amount >= 0 && amount <= 1, 'Amount must be between 0 and 1');

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

  T ifElse(bool condition, {required T other}) => condition ? this : other;
}
