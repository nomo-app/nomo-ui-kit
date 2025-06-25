// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_snackbar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoSnackBarColorDataNullable {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final BorderSide? border;
  const NomoSnackBarColorDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.border,
  });
}

class NomoSnackBarColorData implements NomoSnackBarColorDataNullable {
  @override
  final Color backgroundColor;
  @override
  final Color foregroundColor;
  @override
  final double elevation;
  @override
  final BorderSide border;
  const NomoSnackBarColorData({
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.elevation = 0.0,
    this.border = BorderSide.none,
  });
  static NomoSnackBarColorData lerp(
      NomoSnackBarColorData a, NomoSnackBarColorData b, double t) {
    return NomoSnackBarColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t)!,
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      border: BorderSide.lerp(a.border, b.border, t)!,
    );
  }

  static NomoSnackBarColorData overrideWith(NomoSnackBarColorData base,
      [NomoSnackBarColorDataNullable? override]) {
    return NomoSnackBarColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      foregroundColor: override?.foregroundColor ?? base.foregroundColor,
      elevation: override?.elevation ?? base.elevation,
      border: override?.border ?? base.border,
    );
  }
}

class NomoSnackBarSizingDataNullable {
  final double? height;
  final EdgeInsets? margin;
  final double? spacing;
  const NomoSnackBarSizingDataNullable({
    this.height,
    this.margin,
    this.spacing,
  });
}

class NomoSnackBarSizingData implements NomoSnackBarSizingDataNullable {
  @override
  final double height;
  @override
  final EdgeInsets margin;
  @override
  final double spacing;
  const NomoSnackBarSizingData({
    this.height = 64.0,
    this.margin = const EdgeInsets.all(16),
    this.spacing = 12.0,
  });
  static NomoSnackBarSizingData lerp(
      NomoSnackBarSizingData a, NomoSnackBarSizingData b, double t) {
    return NomoSnackBarSizingData(
      height: lerpDouble(a.height, b.height, t)!,
      margin: EdgeInsets.lerp(a.margin, b.margin, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
    );
  }

  static NomoSnackBarSizingData overrideWith(NomoSnackBarSizingData base,
      [NomoSnackBarSizingDataNullable? override]) {
    return NomoSnackBarSizingData(
      height: override?.height ?? base.height,
      margin: override?.margin ?? base.margin,
      spacing: override?.spacing ?? base.spacing,
    );
  }
}

class NomoSnackBarConstantsNullable {
  final BorderRadius? borderRadius;
  const NomoSnackBarConstantsNullable({
    this.borderRadius,
  });
}

class NomoSnackBarConstants implements NomoSnackBarConstantsNullable {
  @override
  final BorderRadius borderRadius;
  const NomoSnackBarConstants({
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
  });
}

class NomoSnackBarThemeData
    implements
        NomoSnackBarColorData,
        NomoSnackBarSizingData,
        NomoSnackBarConstants {
  @override
  final Color backgroundColor;
  @override
  final Color foregroundColor;
  @override
  final double elevation;
  @override
  final BorderSide border;
  @override
  final double height;
  @override
  final EdgeInsets margin;
  @override
  final double spacing;
  @override
  final BorderRadius borderRadius;
  const NomoSnackBarThemeData({
    this.backgroundColor = Colors.white,
    this.foregroundColor = Colors.black,
    this.elevation = 0.0,
    this.border = BorderSide.none,
    this.height = 64.0,
    this.margin = const EdgeInsets.all(16),
    this.spacing = 12.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
  });
  factory NomoSnackBarThemeData.from(
    NomoSnackBarColorData colors,
    NomoSnackBarSizingData sizing,
    NomoSnackBarConstants constants,
  ) {
    return NomoSnackBarThemeData(
      backgroundColor: colors.backgroundColor,
      foregroundColor: colors.foregroundColor,
      elevation: colors.elevation,
      border: colors.border,
      height: sizing.height,
      margin: sizing.margin,
      spacing: sizing.spacing,
      borderRadius: constants.borderRadius,
    );
  }
  NomoSnackBarThemeData copyWith([NomoSnackBarThemeDataNullable? override]) {
    return NomoSnackBarThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      foregroundColor: override?.foregroundColor ?? foregroundColor,
      elevation: override?.elevation ?? elevation,
      border: override?.border ?? border,
      height: override?.height ?? height,
      margin: override?.margin ?? margin,
      spacing: override?.spacing ?? spacing,
      borderRadius: override?.borderRadius ?? borderRadius,
    );
  }
}

class NomoSnackBarThemeDataNullable
    implements
        NomoSnackBarColorDataNullable,
        NomoSnackBarSizingDataNullable,
        NomoSnackBarConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  @override
  final double? elevation;
  @override
  final BorderSide? border;
  @override
  final double? height;
  @override
  final EdgeInsets? margin;
  @override
  final double? spacing;
  @override
  final BorderRadius? borderRadius;
  const NomoSnackBarThemeDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.border,
    this.height,
    this.margin,
    this.spacing,
    this.borderRadius,
  });
}

class NomoSnackBarThemeOverride extends InheritedWidget {
  final NomoSnackBarThemeDataNullable data;
  const NomoSnackBarThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoSnackBarThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoSnackBarThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoSnackBarThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoSnackBarThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoSnackBarThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoSnackBarThemeData getFromContext(
  BuildContext context,
  NomoSnackBar widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.snackBarColor ??
          const NomoSnackBarColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.snackBarSizing ??
          const NomoSnackBarSizingData();
  final globalConstants = NomoTheme.maybeOf(context)?.constants.snackBarTheme ??
      const NomoSnackBarConstants();
  final themeOverride = NomoSnackBarThemeOverride.maybeOf(context);
  final themeData = NomoSnackBarThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoSnackBarThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    elevation: widget.elevation ?? themeData.elevation,
    border: widget.border ?? themeData.border,
    height: widget.height ?? themeData.height,
    margin: widget.margin ?? themeData.margin,
    spacing: widget.spacing ?? themeData.spacing,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
  );
}
