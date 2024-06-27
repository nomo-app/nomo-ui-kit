// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dropdownmenu.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoDropDownMenuColorDataNullable {
  final Color? iconColor;
  final double? dropdownElevation;
  final Color? dropdownColor;
  final ShapeBorder? dropdownBorder;
  final Color? backgroundColor;
  final BorderSide? border;
  const NomoDropDownMenuColorDataNullable({
    this.iconColor,
    this.dropdownElevation,
    this.dropdownColor,
    this.dropdownBorder,
    this.backgroundColor,
    this.border,
  });
}

class NomoDropDownMenuColorData implements NomoDropDownMenuColorDataNullable {
  @override
  final Color iconColor;
  @override
  final double dropdownElevation;
  @override
  final Color dropdownColor;
  @override
  final ShapeBorder? dropdownBorder;
  @override
  final Color backgroundColor;
  @override
  final BorderSide border;
  const NomoDropDownMenuColorData({
    this.iconColor = const Color(0xFF272626),
    this.dropdownElevation = 1.0,
    this.dropdownColor = Colors.white,
    this.dropdownBorder = null,
    this.backgroundColor = Colors.white,
    this.border = BorderSide.none,
  });
  static NomoDropDownMenuColorData lerp(
      NomoDropDownMenuColorData a, NomoDropDownMenuColorData b, double t) {
    return NomoDropDownMenuColorData(
      iconColor: Color.lerp(a.iconColor, b.iconColor, t)!,
      dropdownElevation:
          lerpDouble(a.dropdownElevation, b.dropdownElevation, t)!,
      dropdownColor: Color.lerp(a.dropdownColor, b.dropdownColor, t)!,
      dropdownBorder: ShapeBorder.lerp(a.dropdownBorder, b.dropdownBorder, t),
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      border: BorderSide.lerp(a.border, b.border, t)!,
    );
  }

  static NomoDropDownMenuColorData overrideWith(NomoDropDownMenuColorData base,
      [NomoDropDownMenuColorDataNullable? override]) {
    return NomoDropDownMenuColorData(
      iconColor: override?.iconColor ?? base.iconColor,
      dropdownElevation: override?.dropdownElevation ?? base.dropdownElevation,
      dropdownColor: override?.dropdownColor ?? base.dropdownColor,
      dropdownBorder: override?.dropdownBorder ?? base.dropdownBorder,
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      border: override?.border ?? base.border,
    );
  }
}

class NomoDropDownMenuSizingDataNullable {
  final double? minFontSize;
  final EdgeInsetsGeometry? itemPadding;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  const NomoDropDownMenuSizingDataNullable({
    this.minFontSize,
    this.itemPadding,
    this.padding,
    this.borderRadius,
  });
}

class NomoDropDownMenuSizingData implements NomoDropDownMenuSizingDataNullable {
  @override
  final double minFontSize;
  @override
  final EdgeInsetsGeometry itemPadding;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final BorderRadius? borderRadius;
  const NomoDropDownMenuSizingData({
    this.minFontSize = 10.0,
    this.itemPadding = EdgeInsets.zero,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.borderRadius = null,
  });
  static NomoDropDownMenuSizingData lerp(
      NomoDropDownMenuSizingData a, NomoDropDownMenuSizingData b, double t) {
    return NomoDropDownMenuSizingData(
      minFontSize: lerpDouble(a.minFontSize, b.minFontSize, t)!,
      itemPadding: EdgeInsetsGeometry.lerp(a.itemPadding, b.itemPadding, t)!,
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t),
    );
  }

  static NomoDropDownMenuSizingData overrideWith(
      NomoDropDownMenuSizingData base,
      [NomoDropDownMenuSizingDataNullable? override]) {
    return NomoDropDownMenuSizingData(
      minFontSize: override?.minFontSize ?? base.minFontSize,
      itemPadding: override?.itemPadding ?? base.itemPadding,
      padding: override?.padding ?? base.padding,
      borderRadius: override?.borderRadius ?? base.borderRadius,
    );
  }
}

class NomoDropDownMenuConstantsNullable {
  const NomoDropDownMenuConstantsNullable();
}

class NomoDropDownMenuConstants implements NomoDropDownMenuConstantsNullable {
  const NomoDropDownMenuConstants();
}

class NomoDropDownMenuThemeData
    implements
        NomoDropDownMenuColorData,
        NomoDropDownMenuSizingData,
        NomoDropDownMenuConstants {
  @override
  final Color iconColor;
  @override
  final double dropdownElevation;
  @override
  final Color dropdownColor;
  @override
  final ShapeBorder? dropdownBorder;
  @override
  final Color backgroundColor;
  @override
  final BorderSide border;
  @override
  final double minFontSize;
  @override
  final EdgeInsetsGeometry itemPadding;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final BorderRadius? borderRadius;
  const NomoDropDownMenuThemeData({
    this.iconColor = const Color(0xFF272626),
    this.dropdownElevation = 1.0,
    this.dropdownColor = Colors.white,
    this.dropdownBorder = null,
    this.backgroundColor = Colors.white,
    this.border = BorderSide.none,
    this.minFontSize = 10.0,
    this.itemPadding = EdgeInsets.zero,
    this.padding = const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
    this.borderRadius = null,
  });
  factory NomoDropDownMenuThemeData.from(
    NomoDropDownMenuColorData colors,
    NomoDropDownMenuSizingData sizing,
    NomoDropDownMenuConstants constants,
  ) {
    return NomoDropDownMenuThemeData(
      iconColor: colors.iconColor,
      dropdownElevation: colors.dropdownElevation,
      dropdownColor: colors.dropdownColor,
      dropdownBorder: colors.dropdownBorder,
      backgroundColor: colors.backgroundColor,
      border: colors.border,
      minFontSize: sizing.minFontSize,
      itemPadding: sizing.itemPadding,
      padding: sizing.padding,
      borderRadius: sizing.borderRadius,
    );
  }
  NomoDropDownMenuThemeData copyWith(
      [NomoDropDownMenuThemeDataNullable? override]) {
    return NomoDropDownMenuThemeData(
      iconColor: override?.iconColor ?? iconColor,
      dropdownElevation: override?.dropdownElevation ?? dropdownElevation,
      dropdownColor: override?.dropdownColor ?? dropdownColor,
      dropdownBorder: override?.dropdownBorder ?? dropdownBorder,
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      border: override?.border ?? border,
      minFontSize: override?.minFontSize ?? minFontSize,
      itemPadding: override?.itemPadding ?? itemPadding,
      padding: override?.padding ?? padding,
      borderRadius: override?.borderRadius ?? borderRadius,
    );
  }
}

class NomoDropDownMenuThemeDataNullable
    implements
        NomoDropDownMenuColorDataNullable,
        NomoDropDownMenuSizingDataNullable,
        NomoDropDownMenuConstantsNullable {
  @override
  final Color? iconColor;
  @override
  final double? dropdownElevation;
  @override
  final Color? dropdownColor;
  @override
  final ShapeBorder? dropdownBorder;
  @override
  final Color? backgroundColor;
  @override
  final BorderSide? border;
  @override
  final double? minFontSize;
  @override
  final EdgeInsetsGeometry? itemPadding;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final BorderRadius? borderRadius;
  const NomoDropDownMenuThemeDataNullable({
    this.iconColor,
    this.dropdownElevation,
    this.dropdownColor,
    this.dropdownBorder,
    this.backgroundColor,
    this.border,
    this.minFontSize,
    this.itemPadding,
    this.padding,
    this.borderRadius,
  });
}

class NomoDropDownMenuThemeOverride extends InheritedWidget {
  final NomoDropDownMenuThemeDataNullable data;
  const NomoDropDownMenuThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoDropDownMenuThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoDropDownMenuThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoDropDownMenuThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoDropDownMenuThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoDropDownMenuThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoDropDownMenuThemeData getFromContext(
  BuildContext context,
  NomoDropDownMenu widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.dropDownMenuColor ??
          const NomoDropDownMenuColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.dropDownMenuSizing ??
          const NomoDropDownMenuSizingData();
  const globalConstants = NomoDropDownMenuConstants();
  final themeOverride = NomoDropDownMenuThemeOverride.maybeOf(context);
  final themeData = NomoDropDownMenuThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoDropDownMenuThemeData(
    iconColor: widget.iconColor ?? themeData.iconColor,
    dropdownElevation: widget.dropdownElevation ?? themeData.dropdownElevation,
    dropdownColor: widget.dropdownColor ?? themeData.dropdownColor,
    dropdownBorder: widget.dropdownBorder ?? themeData.dropdownBorder,
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    border: widget.border ?? themeData.border,
    minFontSize: widget.minFontSize ?? themeData.minFontSize,
    itemPadding: widget.itemPadding ?? themeData.itemPadding,
    padding: widget.padding ?? themeData.padding,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
  );
}
