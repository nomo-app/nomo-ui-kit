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
  final Color? splashColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? focusColor;
  const PrimaryNomoButtonColorDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.borderRadius,
    this.splashColor,
    this.hoverColor,
    this.highlightColor,
    this.focusColor,
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
  @override
  final Color? splashColor;
  @override
  final Color? hoverColor;
  @override
  final Color? highlightColor;
  @override
  final Color? focusColor;
  const PrimaryNomoButtonColorData({
    this.backgroundColor = primaryColor,
    this.foregroundColor = Colors.white,
    this.elevation = 1.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.splashColor = null,
    this.hoverColor = null,
    this.highlightColor = null,
    this.focusColor = null,
  });
  static PrimaryNomoButtonColorData lerp(
      PrimaryNomoButtonColorData a, PrimaryNomoButtonColorData b, double t) {
    return PrimaryNomoButtonColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t)!,
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
      splashColor: Color.lerp(a.splashColor, b.splashColor, t),
      hoverColor: Color.lerp(a.hoverColor, b.hoverColor, t),
      highlightColor: Color.lerp(a.highlightColor, b.highlightColor, t),
      focusColor: Color.lerp(a.focusColor, b.focusColor, t),
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
      splashColor: override?.splashColor ?? base.splashColor,
      hoverColor: override?.hoverColor ?? base.hoverColor,
      highlightColor: override?.highlightColor ?? base.highlightColor,
      focusColor: override?.focusColor ?? base.focusColor,
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
  final Color? splashColor;
  @override
  final Color? hoverColor;
  @override
  final Color? highlightColor;
  @override
  final Color? focusColor;
  @override
  final EdgeInsetsGeometry padding;
  const PrimaryNomoButtonThemeData({
    this.backgroundColor = primaryColor,
    this.foregroundColor = Colors.white,
    this.elevation = 1.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.splashColor = null,
    this.hoverColor = null,
    this.highlightColor = null,
    this.focusColor = null,
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
      splashColor: colors.splashColor,
      hoverColor: colors.hoverColor,
      highlightColor: colors.highlightColor,
      focusColor: colors.focusColor,
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
      splashColor: override?.splashColor ?? splashColor,
      hoverColor: override?.hoverColor ?? hoverColor,
      highlightColor: override?.highlightColor ?? highlightColor,
      focusColor: override?.focusColor ?? focusColor,
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
  final Color? splashColor;
  @override
  final Color? hoverColor;
  @override
  final Color? highlightColor;
  @override
  final Color? focusColor;
  @override
  final EdgeInsetsGeometry? padding;
  const PrimaryNomoButtonThemeDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.borderRadius,
    this.splashColor,
    this.hoverColor,
    this.highlightColor,
    this.focusColor,
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
    splashColor: widget.splashColor ?? themeData.splashColor,
    hoverColor: widget.hoverColor ?? themeData.hoverColor,
    highlightColor: widget.highlightColor ?? themeData.highlightColor,
    focusColor: widget.focusColor ?? themeData.focusColor,
    padding: widget.padding ?? themeData.padding,
  );
}
