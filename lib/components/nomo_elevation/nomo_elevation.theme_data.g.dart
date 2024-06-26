// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_elevation.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoElevationColorDataNullable {
  final Color? backgroundColor;
  final Color? shadowColor;
  const NomoElevationColorDataNullable({
    this.backgroundColor,
    this.shadowColor,
  });
}

class NomoElevationColorData implements NomoElevationColorDataNullable {
  @override
  final Color backgroundColor;
  @override
  final Color shadowColor;
  const NomoElevationColorData({
    this.backgroundColor = Colors.white,
    this.shadowColor = Colors.black26,
  });
  static NomoElevationColorData lerp(
      NomoElevationColorData a, NomoElevationColorData b, double t) {
    return NomoElevationColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      shadowColor: Color.lerp(a.shadowColor, b.shadowColor, t)!,
    );
  }

  static NomoElevationColorData overrideWith(NomoElevationColorData base,
      [NomoElevationColorDataNullable? override]) {
    return NomoElevationColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      shadowColor: override?.shadowColor ?? base.shadowColor,
    );
  }
}

class NomoElevationSizingDataNullable {
  final double? elevation;
  const NomoElevationSizingDataNullable({
    this.elevation,
  });
}

class NomoElevationSizingData implements NomoElevationSizingDataNullable {
  @override
  final double elevation;
  const NomoElevationSizingData({
    this.elevation = 1.0,
  });
  static NomoElevationSizingData lerp(
      NomoElevationSizingData a, NomoElevationSizingData b, double t) {
    return NomoElevationSizingData(
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
    );
  }

  static NomoElevationSizingData overrideWith(NomoElevationSizingData base,
      [NomoElevationSizingDataNullable? override]) {
    return NomoElevationSizingData(
      elevation: override?.elevation ?? base.elevation,
    );
  }
}

class NomoElevationConstantsNullable {
  final Duration? animationDuration;
  final Curve? animationCurve;
  const NomoElevationConstantsNullable({
    this.animationDuration,
    this.animationCurve,
  });
}

class NomoElevationConstants implements NomoElevationConstantsNullable {
  @override
  final Duration animationDuration;
  @override
  final Curve animationCurve;
  const NomoElevationConstants({
    this.animationDuration = const Duration(milliseconds: 200),
    this.animationCurve = Curves.fastOutSlowIn,
  });
}

class NomoElevationThemeData
    implements
        NomoElevationColorData,
        NomoElevationSizingData,
        NomoElevationConstants {
  @override
  final Color backgroundColor;
  @override
  final Color shadowColor;
  @override
  final double elevation;
  @override
  final Duration animationDuration;
  @override
  final Curve animationCurve;
  const NomoElevationThemeData({
    this.backgroundColor = Colors.white,
    this.shadowColor = Colors.black26,
    this.elevation = 1.0,
    this.animationDuration = const Duration(milliseconds: 200),
    this.animationCurve = Curves.fastOutSlowIn,
  });
  factory NomoElevationThemeData.from(
    NomoElevationColorData colors,
    NomoElevationSizingData sizing,
    NomoElevationConstants constants,
  ) {
    return NomoElevationThemeData(
      backgroundColor: colors.backgroundColor,
      shadowColor: colors.shadowColor,
      elevation: sizing.elevation,
      animationDuration: constants.animationDuration,
      animationCurve: constants.animationCurve,
    );
  }
  NomoElevationThemeData copyWith([NomoElevationThemeDataNullable? override]) {
    return NomoElevationThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      shadowColor: override?.shadowColor ?? shadowColor,
      elevation: override?.elevation ?? elevation,
      animationDuration: override?.animationDuration ?? animationDuration,
      animationCurve: override?.animationCurve ?? animationCurve,
    );
  }
}

class NomoElevationThemeDataNullable
    implements
        NomoElevationColorDataNullable,
        NomoElevationSizingDataNullable,
        NomoElevationConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final Color? shadowColor;
  @override
  final double? elevation;
  @override
  final Duration? animationDuration;
  @override
  final Curve? animationCurve;
  const NomoElevationThemeDataNullable({
    this.backgroundColor,
    this.shadowColor,
    this.elevation,
    this.animationDuration,
    this.animationCurve,
  });
}

class NomoElevationThemeOverride extends InheritedWidget {
  final NomoElevationThemeDataNullable data;
  const NomoElevationThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoElevationThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoElevationThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoElevationThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoElevationThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoElevationThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoElevationThemeData getFromContext(
  BuildContext context,
  NomoElevation widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.elevationColor ??
          const NomoElevationColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.elevationSizing ??
          const NomoElevationSizingData();
  final globalConstants =
      NomoTheme.maybeOf(context)?.constants.elevationTheme ??
          const NomoElevationConstants();
  final themeOverride = NomoElevationThemeOverride.maybeOf(context);
  final themeData = NomoElevationThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoElevationThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    shadowColor: widget.shadowColor ?? themeData.shadowColor,
    elevation: widget.elevation ?? themeData.elevation,
    animationDuration: widget.animationDuration ?? themeData.animationDuration,
    animationCurve: widget.animationCurve ?? themeData.animationCurve,
  );
}
