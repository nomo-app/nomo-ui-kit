// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_secondary_button.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class SecondaryNomoButtonColorDataNullable {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final Color? selectionColor;
  final Border? border;
  final BorderRadiusGeometry? borderRadius;
  const SecondaryNomoButtonColorDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.selectionColor,
    this.border,
    this.borderRadius,
  });
}

class SecondaryNomoButtonColorData
    implements SecondaryNomoButtonColorDataNullable {
  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
  final Color selectionColor;
  final Border border;
  final BorderRadiusGeometry borderRadius;
  const SecondaryNomoButtonColorData({
    this.backgroundColor = Colors.white,
    this.foregroundColor = const Color(0xAA000000),
    this.elevation = 0.0,
    this.selectionColor = primaryColor,
    this.border =
        const Border.fromBorderSide(BorderSide(color: Color(0xAA000000))),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });
  static SecondaryNomoButtonColorData lerp(SecondaryNomoButtonColorData a,
      SecondaryNomoButtonColorData b, double t) {
    return SecondaryNomoButtonColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t)!,
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      selectionColor: Color.lerp(a.selectionColor, b.selectionColor, t)!,
      border: Border.lerp(a.border, b.border, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
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
}

class SecondaryNomoButtonThemeData
    implements SecondaryNomoButtonColorData, SecondaryNomoButtonSizingData {
  final Color backgroundColor;
  final Color foregroundColor;
  final double elevation;
  final Color selectionColor;
  final Border border;
  final BorderRadiusGeometry borderRadius;
  final EdgeInsetsGeometry padding;
  const SecondaryNomoButtonThemeData({
    this.backgroundColor = Colors.white,
    this.foregroundColor = const Color(0xAA000000),
    this.elevation = 0.0,
    this.selectionColor = primaryColor,
    this.border =
        const Border.fromBorderSide(BorderSide(color: Color(0xAA000000))),
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.padding = const EdgeInsets.all(16),
  });
  factory SecondaryNomoButtonThemeData.from(
    SecondaryNomoButtonColorData colors,
    SecondaryNomoButtonSizingData sizing,
  ) {
    return SecondaryNomoButtonThemeData(
      backgroundColor: colors.backgroundColor,
      foregroundColor: colors.foregroundColor,
      elevation: colors.elevation,
      selectionColor: colors.selectionColor,
      border: colors.border,
      borderRadius: colors.borderRadius,
      padding: sizing.padding,
    );
  }
  SecondaryNomoButtonThemeData override(
      [SecondaryNomoButtonThemeDataNullable? override]) {
    return SecondaryNomoButtonThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      foregroundColor: override?.foregroundColor ?? foregroundColor,
      elevation: override?.elevation ?? elevation,
      selectionColor: override?.selectionColor ?? selectionColor,
      border: override?.border ?? border,
      borderRadius: override?.borderRadius ?? borderRadius,
      padding: override?.padding ?? padding,
    );
  }
}

class SecondaryNomoButtonThemeDataNullable
    implements
        SecondaryNomoButtonColorDataNullable,
        SecondaryNomoButtonSizingDataNullable {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final Color? selectionColor;
  final Border? border;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  const SecondaryNomoButtonThemeDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.selectionColor,
    this.border,
    this.borderRadius,
    this.padding,
  });
}

class SecondaryNomoButtonThemeOverride extends InheritedWidget {
  final SecondaryNomoButtonThemeDataNullable data;
  const SecondaryNomoButtonThemeOverride({
    required this.data,
    required super.child,
  });
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
      NomoTheme.maybeOf(context)?.componentColors.secondaryButtonTheme ??
          SecondaryNomoButtonColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.secondaryButtonTheme ??
          SecondaryNomoButtonSizingData();
  final themeOverride = SecondaryNomoButtonThemeOverride.maybeOf(context);
  final themeData =
      SecondaryNomoButtonThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return SecondaryNomoButtonThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    elevation: widget.elevation ?? themeData.elevation,
    selectionColor: widget.selectionColor ?? themeData.selectionColor,
    border: widget.border ?? themeData.border,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    padding: widget.padding ?? themeData.padding,
  );
}
