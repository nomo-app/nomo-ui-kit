// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_switch.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoSwitchColorDataNullable {
  final Color? activeForeground;
  final Color? foreground;
  final Color? activeBackground;
  final Color? background;
  const NomoSwitchColorDataNullable({
    this.activeForeground,
    this.foreground,
    this.activeBackground,
    this.background,
  });
}

class NomoSwitchColorData implements NomoSwitchColorDataNullable {
  @override
  final Color activeForeground;
  @override
  final Color foreground;
  @override
  final Color activeBackground;
  @override
  final Color background;
  const NomoSwitchColorData({
    this.activeForeground = Colors.white,
    this.foreground = Colors.black54,
    this.activeBackground = primaryColor,
    this.background = Colors.black12,
  });
  static NomoSwitchColorData lerp(
      NomoSwitchColorData a, NomoSwitchColorData b, double t) {
    return NomoSwitchColorData(
      activeForeground: Color.lerp(a.activeForeground, b.activeForeground, t)!,
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
      activeBackground: Color.lerp(a.activeBackground, b.activeBackground, t)!,
      background: Color.lerp(a.background, b.background, t)!,
    );
  }

  static NomoSwitchColorData overrideWith(NomoSwitchColorData base,
      [NomoSwitchColorDataNullable? override]) {
    return NomoSwitchColorData(
      activeForeground: override?.activeForeground ?? base.activeForeground,
      foreground: override?.foreground ?? base.foreground,
      activeBackground: override?.activeBackground ?? base.activeBackground,
      background: override?.background ?? base.background,
    );
  }
}

class NomoSwitchSizingDataNullable {
  const NomoSwitchSizingDataNullable();
}

class NomoSwitchSizingData implements NomoSwitchSizingDataNullable {
  const NomoSwitchSizingData();
  static NomoSwitchSizingData lerp(
      NomoSwitchSizingData a, NomoSwitchSizingData b, double t) {
    return const NomoSwitchSizingData();
  }

  static NomoSwitchSizingData overrideWith(NomoSwitchSizingData base,
      [NomoSwitchSizingDataNullable? override]) {
    return NomoSwitchSizingData();
  }
}

class NomoSwitchConstantsNullable {
  const NomoSwitchConstantsNullable();
}

class NomoSwitchConstants implements NomoSwitchConstantsNullable {
  const NomoSwitchConstants();
}

class NomoSwitchThemeData
    implements NomoSwitchColorData, NomoSwitchSizingData, NomoSwitchConstants {
  @override
  final Color activeForeground;
  @override
  final Color foreground;
  @override
  final Color activeBackground;
  @override
  final Color background;
  const NomoSwitchThemeData({
    this.activeForeground = Colors.white,
    this.foreground = Colors.black54,
    this.activeBackground = primaryColor,
    this.background = Colors.black12,
  });
  factory NomoSwitchThemeData.from(
    NomoSwitchColorData colors,
    NomoSwitchSizingData sizing,
    NomoSwitchConstants constants,
  ) {
    return NomoSwitchThemeData(
      activeForeground: colors.activeForeground,
      foreground: colors.foreground,
      activeBackground: colors.activeBackground,
      background: colors.background,
    );
  }
  NomoSwitchThemeData copyWith([NomoSwitchThemeDataNullable? override]) {
    return NomoSwitchThemeData(
      activeForeground: override?.activeForeground ?? activeForeground,
      foreground: override?.foreground ?? foreground,
      activeBackground: override?.activeBackground ?? activeBackground,
      background: override?.background ?? background,
    );
  }
}

class NomoSwitchThemeDataNullable
    implements
        NomoSwitchColorDataNullable,
        NomoSwitchSizingDataNullable,
        NomoSwitchConstantsNullable {
  @override
  final Color? activeForeground;
  @override
  final Color? foreground;
  @override
  final Color? activeBackground;
  @override
  final Color? background;
  const NomoSwitchThemeDataNullable({
    this.activeForeground,
    this.foreground,
    this.activeBackground,
    this.background,
  });
}

class NomoSwitchThemeOverride extends InheritedWidget {
  final NomoSwitchThemeDataNullable data;
  const NomoSwitchThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoSwitchThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoSwitchThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoSwitchThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoSwitchThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoSwitchThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoSwitchThemeData getFromContext(
  BuildContext context,
  NomoSwitch widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.switchColor ??
          const NomoSwitchColorData();
  const globalSizingTheme = NomoSwitchSizingData();
  const globalConstants = NomoSwitchConstants();
  final themeOverride = NomoSwitchThemeOverride.maybeOf(context);
  final themeData = NomoSwitchThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoSwitchThemeData(
    activeForeground: widget.activeForeground ?? themeData.activeForeground,
    foreground: widget.foreground ?? themeData.foreground,
    activeBackground: widget.activeBackground ?? themeData.activeBackground,
    background: widget.background ?? themeData.background,
  );
}
