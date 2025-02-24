// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_primary_button.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class PrimaryNomoButtonColorDataNullable {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final BorderRadiusGeometry? borderRadius;
  const PrimaryNomoButtonColorDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.borderRadius,
  });
}

class PrimaryNomoButtonColorData implements PrimaryNomoButtonColorDataNullable {
  @override
  final Color backgroundColor;
  @override
  final Color foregroundColor;
  @override
  final double elevation;
  @override
  final BorderRadiusGeometry borderRadius;
  const PrimaryNomoButtonColorData({
    this.backgroundColor = primaryColor,
    this.foregroundColor = Colors.white,
    this.elevation = 1.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });
  static PrimaryNomoButtonColorData lerp(
      PrimaryNomoButtonColorData a, PrimaryNomoButtonColorData b, double t) {
    return PrimaryNomoButtonColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t)!,
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
    );
  }

  static PrimaryNomoButtonColorData overrideWith(
      PrimaryNomoButtonColorData base,
      [PrimaryNomoButtonColorDataNullable? override]) {
    return PrimaryNomoButtonColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      foregroundColor: override?.foregroundColor ?? base.foregroundColor,
      elevation: override?.elevation ?? base.elevation,
      borderRadius: override?.borderRadius ?? base.borderRadius,
    );
  }
}

class PrimaryNomoButtonSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  const PrimaryNomoButtonSizingDataNullable({
    this.padding,
  });
}

class PrimaryNomoButtonSizingData
    implements PrimaryNomoButtonSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  const PrimaryNomoButtonSizingData({
    this.padding = const EdgeInsets.all(16),
  });
  static PrimaryNomoButtonSizingData lerp(
      PrimaryNomoButtonSizingData a, PrimaryNomoButtonSizingData b, double t) {
    return PrimaryNomoButtonSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
    );
  }

  static PrimaryNomoButtonSizingData overrideWith(
      PrimaryNomoButtonSizingData base,
      [PrimaryNomoButtonSizingDataNullable? override]) {
    return PrimaryNomoButtonSizingData(
      padding: override?.padding ?? base.padding,
    );
  }
}

class PrimaryNomoButtonConstantsNullable {
  const PrimaryNomoButtonConstantsNullable();
}

class PrimaryNomoButtonConstants implements PrimaryNomoButtonConstantsNullable {
  const PrimaryNomoButtonConstants();
}

class PrimaryNomoButtonThemeData
    implements
        PrimaryNomoButtonColorData,
        PrimaryNomoButtonSizingData,
        PrimaryNomoButtonConstants {
  @override
  final Color backgroundColor;
  @override
  final Color foregroundColor;
  @override
  final double elevation;
  @override
  final BorderRadiusGeometry borderRadius;
  @override
  final EdgeInsetsGeometry padding;
  const PrimaryNomoButtonThemeData({
    this.backgroundColor = primaryColor,
    this.foregroundColor = Colors.white,
    this.elevation = 1.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.padding = const EdgeInsets.all(16),
  });
  factory PrimaryNomoButtonThemeData.from(
    PrimaryNomoButtonColorData colors,
    PrimaryNomoButtonSizingData sizing,
    PrimaryNomoButtonConstants constants,
  ) {
    return PrimaryNomoButtonThemeData(
      backgroundColor: colors.backgroundColor,
      foregroundColor: colors.foregroundColor,
      elevation: colors.elevation,
      borderRadius: colors.borderRadius,
      padding: sizing.padding,
    );
  }
  PrimaryNomoButtonThemeData copyWith(
      [PrimaryNomoButtonThemeDataNullable? override]) {
    return PrimaryNomoButtonThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      foregroundColor: override?.foregroundColor ?? foregroundColor,
      elevation: override?.elevation ?? elevation,
      borderRadius: override?.borderRadius ?? borderRadius,
      padding: override?.padding ?? padding,
    );
  }
}

class PrimaryNomoButtonThemeDataNullable
    implements
        PrimaryNomoButtonColorDataNullable,
        PrimaryNomoButtonSizingDataNullable,
        PrimaryNomoButtonConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  @override
  final double? elevation;
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
  final EdgeInsetsGeometry? padding;
  const PrimaryNomoButtonThemeDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.borderRadius,
    this.padding,
  });
}

class PrimaryNomoButtonThemeOverride extends InheritedWidget {
  final PrimaryNomoButtonThemeDataNullable data;
  const PrimaryNomoButtonThemeOverride(
      {required this.data, required super.child, super.key});
  static PrimaryNomoButtonThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<PrimaryNomoButtonThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static PrimaryNomoButtonThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<PrimaryNomoButtonThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(PrimaryNomoButtonThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

PrimaryNomoButtonThemeData getFromContext(
  BuildContext context,
  PrimaryNomoButton widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.primaryButtonColor ??
          const PrimaryNomoButtonColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.primaryButtonSizing ??
          const PrimaryNomoButtonSizingData();
  const globalConstants = PrimaryNomoButtonConstants();
  final themeOverride = PrimaryNomoButtonThemeOverride.maybeOf(context);
  final themeData = PrimaryNomoButtonThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return PrimaryNomoButtonThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    elevation: widget.elevation ?? themeData.elevation,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    padding: widget.padding ?? themeData.padding,
  );
}
