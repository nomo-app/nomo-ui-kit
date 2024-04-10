// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_card.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoCardColorDataNullable {
  final Color? shadowColor;
  final BoxBorder? border;
  final Color? backgroundColor;
  const NomoCardColorDataNullable({
    this.shadowColor,
    this.border,
    this.backgroundColor,
  });
}

class NomoCardColorData implements NomoCardColorDataNullable {
  @override
  final Color shadowColor;
  @override
  final BoxBorder? border;
  @override
  final Color backgroundColor;
  const NomoCardColorData({
    this.shadowColor = const Color(0x33000000),
    this.border = null,
    this.backgroundColor = Colors.white,
  });
  static NomoCardColorData lerp(
      NomoCardColorData a, NomoCardColorData b, double t) {
    return NomoCardColorData(
      shadowColor: Color.lerp(a.shadowColor, b.shadowColor, t)!,
      border: BoxBorder.lerp(a.border, b.border, t),
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
    );
  }

  static NomoCardColorData overrideWith(NomoCardColorData base,
      [NomoCardColorDataNullable? override]) {
    return NomoCardColorData(
      shadowColor: override?.shadowColor ?? base.shadowColor,
      border: override?.border ?? base.border,
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
    );
  }
}

class NomoCardSizingDataNullable {
  final double? elevation;
  final Offset? offset;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  const NomoCardSizingDataNullable({
    this.elevation,
    this.offset,
    this.borderRadius,
    this.padding,
    this.margin,
  });
}

class NomoCardSizingData implements NomoCardSizingDataNullable {
  @override
  final double elevation;
  @override
  final Offset offset;
  @override
  final BorderRadiusGeometry borderRadius;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final EdgeInsetsGeometry margin;
  const NomoCardSizingData({
    this.elevation = 1.0,
    this.offset = Offset.zero,
    this.borderRadius = BorderRadius.zero,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
  });
  static NomoCardSizingData lerp(
      NomoCardSizingData a, NomoCardSizingData b, double t) {
    return NomoCardSizingData(
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      offset: Offset.lerp(a.offset, b.offset, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      margin: EdgeInsetsGeometry.lerp(a.margin, b.margin, t)!,
    );
  }

  static NomoCardSizingData overrideWith(NomoCardSizingData base,
      [NomoCardSizingDataNullable? override]) {
    return NomoCardSizingData(
      elevation: override?.elevation ?? base.elevation,
      offset: override?.offset ?? base.offset,
      borderRadius: override?.borderRadius ?? base.borderRadius,
      padding: override?.padding ?? base.padding,
      margin: override?.margin ?? base.margin,
    );
  }
}

class NomoCardConstantsNullable {
  const NomoCardConstantsNullable();
}

class NomoCardConstants implements NomoCardConstantsNullable {
  const NomoCardConstants();
}

class NomoCardThemeData
    implements NomoCardColorData, NomoCardSizingData, NomoCardConstants {
  @override
  final Color shadowColor;
  @override
  final BoxBorder? border;
  @override
  final Color backgroundColor;
  @override
  final double elevation;
  @override
  final Offset offset;
  @override
  final BorderRadiusGeometry borderRadius;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final EdgeInsetsGeometry margin;
  const NomoCardThemeData({
    this.shadowColor = const Color(0x33000000),
    this.border = null,
    this.backgroundColor = Colors.white,
    this.elevation = 1.0,
    this.offset = Offset.zero,
    this.borderRadius = BorderRadius.zero,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
  });
  factory NomoCardThemeData.from(
    NomoCardColorData colors,
    NomoCardSizingData sizing,
    NomoCardConstants constants,
  ) {
    return NomoCardThemeData(
      shadowColor: colors.shadowColor,
      border: colors.border,
      backgroundColor: colors.backgroundColor,
      elevation: sizing.elevation,
      offset: sizing.offset,
      borderRadius: sizing.borderRadius,
      padding: sizing.padding,
      margin: sizing.margin,
    );
  }
  NomoCardThemeData copyWith([NomoCardThemeDataNullable? override]) {
    return NomoCardThemeData(
      shadowColor: override?.shadowColor ?? shadowColor,
      border: override?.border ?? border,
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      elevation: override?.elevation ?? elevation,
      offset: override?.offset ?? offset,
      borderRadius: override?.borderRadius ?? borderRadius,
      padding: override?.padding ?? padding,
      margin: override?.margin ?? margin,
    );
  }
}

class NomoCardThemeDataNullable
    implements
        NomoCardColorDataNullable,
        NomoCardSizingDataNullable,
        NomoCardConstantsNullable {
  @override
  final Color? shadowColor;
  @override
  final BoxBorder? border;
  @override
  final Color? backgroundColor;
  @override
  final double? elevation;
  @override
  final Offset? offset;
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final EdgeInsetsGeometry? margin;
  const NomoCardThemeDataNullable({
    this.shadowColor,
    this.border,
    this.backgroundColor,
    this.elevation,
    this.offset,
    this.borderRadius,
    this.padding,
    this.margin,
  });
}

class NomoCardThemeOverride extends InheritedWidget {
  final NomoCardThemeDataNullable data;
  const NomoCardThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoCardThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoCardThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoCardThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoCardThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoCardThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoCardThemeData getFromContext(
  BuildContext context,
  NomoCard widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.cardTheme ??
          const NomoCardColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.cardTheme ??
          const NomoCardSizingData();
  const globalConstants = NomoCardConstants();
  final themeOverride = NomoCardThemeOverride.maybeOf(context);
  final themeData = NomoCardThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoCardThemeData(
    shadowColor: widget.shadowColor ?? themeData.shadowColor,
    border: widget.border ?? themeData.border,
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    elevation: widget.elevation ?? themeData.elevation,
    offset: widget.offset ?? themeData.offset,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    padding: widget.padding ?? themeData.padding,
    margin: widget.margin ?? themeData.margin,
  );
}
