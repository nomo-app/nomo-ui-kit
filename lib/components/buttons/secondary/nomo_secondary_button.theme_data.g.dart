// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_secondary_button.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class SecondaryNomoButtonColorDataNullable {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final Color? selectionColor;
  final BorderSide? border;
  final BorderRadiusGeometry? borderRadius;
  final Color? splashColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? focusColor;
  const SecondaryNomoButtonColorDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.selectionColor,
    this.border,
    this.borderRadius,
    this.splashColor,
    this.hoverColor,
    this.highlightColor,
    this.focusColor,
  });
}

class SecondaryNomoButtonColorData
    implements SecondaryNomoButtonColorDataNullable {
  @override
  final Color backgroundColor;
  @override
  final Color foregroundColor;
  @override
  final double elevation;
  @override
  final Color selectionColor;
  @override
  final BorderSide border;
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
  const SecondaryNomoButtonColorData({
    this.backgroundColor = Colors.white,
    this.foregroundColor = const Color(0xAA000000),
    this.elevation = 0.0,
    this.selectionColor = primaryColor,
    this.border = const BorderSide(color: Color(0xAA000000)),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.splashColor = null,
    this.hoverColor = null,
    this.highlightColor = null,
    this.focusColor = null,
  });
  static SecondaryNomoButtonColorData lerp(SecondaryNomoButtonColorData a,
      SecondaryNomoButtonColorData b, double t) {
    return SecondaryNomoButtonColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t)!,
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      selectionColor: Color.lerp(a.selectionColor, b.selectionColor, t)!,
      border: BorderSide.lerp(a.border, b.border, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
      splashColor: Color.lerp(a.splashColor, b.splashColor, t),
      hoverColor: Color.lerp(a.hoverColor, b.hoverColor, t),
      highlightColor: Color.lerp(a.highlightColor, b.highlightColor, t),
      focusColor: Color.lerp(a.focusColor, b.focusColor, t),
    );
  }

  static SecondaryNomoButtonColorData overrideWith(
      SecondaryNomoButtonColorData base,
      [SecondaryNomoButtonColorDataNullable? override]) {
    return SecondaryNomoButtonColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      foregroundColor: override?.foregroundColor ?? base.foregroundColor,
      elevation: override?.elevation ?? base.elevation,
      selectionColor: override?.selectionColor ?? base.selectionColor,
      border: override?.border ?? base.border,
      borderRadius: override?.borderRadius ?? base.borderRadius,
      splashColor: override?.splashColor ?? base.splashColor,
      hoverColor: override?.hoverColor ?? base.hoverColor,
      highlightColor: override?.highlightColor ?? base.highlightColor,
      focusColor: override?.focusColor ?? base.focusColor,
    );
  }
}

class SecondaryNomoButtonSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  const SecondaryNomoButtonSizingDataNullable({
    this.padding,
  });
}

class SecondaryNomoButtonSizingData
    implements SecondaryNomoButtonSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  const SecondaryNomoButtonSizingData({
    this.padding = const EdgeInsets.all(16),
  });
  static SecondaryNomoButtonSizingData lerp(SecondaryNomoButtonSizingData a,
      SecondaryNomoButtonSizingData b, double t) {
    return SecondaryNomoButtonSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
    );
  }

  static SecondaryNomoButtonSizingData overrideWith(
      SecondaryNomoButtonSizingData base,
      [SecondaryNomoButtonSizingDataNullable? override]) {
    return SecondaryNomoButtonSizingData(
      padding: override?.padding ?? base.padding,
    );
  }
}

class SecondaryNomoButtonConstantsNullable {
  const SecondaryNomoButtonConstantsNullable();
}

class SecondaryNomoButtonConstants
    implements SecondaryNomoButtonConstantsNullable {
  const SecondaryNomoButtonConstants();
}

class SecondaryNomoButtonThemeData
    implements
        SecondaryNomoButtonColorData,
        SecondaryNomoButtonSizingData,
        SecondaryNomoButtonConstants {
  @override
  final Color backgroundColor;
  @override
  final Color foregroundColor;
  @override
  final double elevation;
  @override
  final Color selectionColor;
  @override
  final BorderSide border;
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
  const SecondaryNomoButtonThemeData({
    this.backgroundColor = Colors.white,
    this.foregroundColor = const Color(0xAA000000),
    this.elevation = 0.0,
    this.selectionColor = primaryColor,
    this.border = const BorderSide(color: Color(0xAA000000)),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.splashColor = null,
    this.hoverColor = null,
    this.highlightColor = null,
    this.focusColor = null,
    this.padding = const EdgeInsets.all(16),
  });
  factory SecondaryNomoButtonThemeData.from(
    SecondaryNomoButtonColorData colors,
    SecondaryNomoButtonSizingData sizing,
    SecondaryNomoButtonConstants constants,
  ) {
    return SecondaryNomoButtonThemeData(
      backgroundColor: colors.backgroundColor,
      foregroundColor: colors.foregroundColor,
      elevation: colors.elevation,
      selectionColor: colors.selectionColor,
      border: colors.border,
      borderRadius: colors.borderRadius,
      splashColor: colors.splashColor,
      hoverColor: colors.hoverColor,
      highlightColor: colors.highlightColor,
      focusColor: colors.focusColor,
      padding: sizing.padding,
    );
  }
  SecondaryNomoButtonThemeData copyWith(
      [SecondaryNomoButtonThemeDataNullable? override]) {
    return SecondaryNomoButtonThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      foregroundColor: override?.foregroundColor ?? foregroundColor,
      elevation: override?.elevation ?? elevation,
      selectionColor: override?.selectionColor ?? selectionColor,
      border: override?.border ?? border,
      borderRadius: override?.borderRadius ?? borderRadius,
      splashColor: override?.splashColor ?? splashColor,
      hoverColor: override?.hoverColor ?? hoverColor,
      highlightColor: override?.highlightColor ?? highlightColor,
      focusColor: override?.focusColor ?? focusColor,
      padding: override?.padding ?? padding,
    );
  }
}

class SecondaryNomoButtonThemeDataNullable
    implements
        SecondaryNomoButtonColorDataNullable,
        SecondaryNomoButtonSizingDataNullable,
        SecondaryNomoButtonConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  @override
  final double? elevation;
  @override
  final Color? selectionColor;
  @override
  final BorderSide? border;
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
  const SecondaryNomoButtonThemeDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.selectionColor,
    this.border,
    this.borderRadius,
    this.splashColor,
    this.hoverColor,
    this.highlightColor,
    this.focusColor,
    this.padding,
  });
}

class SecondaryNomoButtonThemeOverride extends InheritedWidget {
  final SecondaryNomoButtonThemeDataNullable data;
  const SecondaryNomoButtonThemeOverride(
      {required this.data, required super.child, super.key});
  static SecondaryNomoButtonThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<SecondaryNomoButtonThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static SecondaryNomoButtonThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<SecondaryNomoButtonThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(SecondaryNomoButtonThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

SecondaryNomoButtonThemeData getFromContext(
  BuildContext context,
  SecondaryNomoButton widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.secondaryButtonColor ??
          const SecondaryNomoButtonColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.secondaryButtonSizing ??
          const SecondaryNomoButtonSizingData();
  const globalConstants = SecondaryNomoButtonConstants();
  final themeOverride = SecondaryNomoButtonThemeOverride.maybeOf(context);
  final themeData = SecondaryNomoButtonThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return SecondaryNomoButtonThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    elevation: widget.elevation ?? themeData.elevation,
    selectionColor: widget.selectionColor ?? themeData.selectionColor,
    border: widget.border ?? themeData.border,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    splashColor: widget.splashColor ?? themeData.splashColor,
    hoverColor: widget.hoverColor ?? themeData.hoverColor,
    highlightColor: widget.highlightColor ?? themeData.highlightColor,
    focusColor: widget.focusColor ?? themeData.focusColor,
    padding: widget.padding ?? themeData.padding,
  );
}
