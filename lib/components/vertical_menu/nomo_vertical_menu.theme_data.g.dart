// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_vertical_menu.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoVerticalMenuColorDataNullable {
  final BorderSide? border;
  final BorderSide? selectedBorder;
  final Color? foreground;
  final Color? background;
  final Color? selectedBackground;
  final Color? selectedForeground;
  final BorderRadius? borderRadius;
  final Color? splashColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final Color? focusColor;
  const NomoVerticalMenuColorDataNullable({
    this.border,
    this.selectedBorder,
    this.foreground,
    this.background,
    this.selectedBackground,
    this.selectedForeground,
    this.borderRadius,
    this.splashColor,
    this.hoverColor,
    this.highlightColor,
    this.focusColor,
  });
}

class NomoVerticalMenuColorData implements NomoVerticalMenuColorDataNullable {
  @override
  final BorderSide border;
  @override
  final BorderSide selectedBorder;
  @override
  final Color foreground;
  @override
  final Color background;
  @override
  final Color selectedBackground;
  @override
  final Color selectedForeground;
  @override
  final BorderRadius borderRadius;
  @override
  final Color? splashColor;
  @override
  final Color? hoverColor;
  @override
  final Color? highlightColor;
  @override
  final Color? focusColor;
  const NomoVerticalMenuColorData({
    this.border = BorderSide.none,
    this.selectedBorder = BorderSide.none,
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedBackground = Colors.red,
    this.selectedForeground = Colors.red,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.splashColor = null,
    this.hoverColor = null,
    this.highlightColor = null,
    this.focusColor = null,
  });
  static NomoVerticalMenuColorData lerp(
      NomoVerticalMenuColorData a, NomoVerticalMenuColorData b, double t) {
    return NomoVerticalMenuColorData(
      border: BorderSide.lerp(a.border, b.border, t)!,
      selectedBorder: BorderSide.lerp(a.selectedBorder, b.selectedBorder, t)!,
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      selectedBackground:
          Color.lerp(a.selectedBackground, b.selectedBackground, t)!,
      selectedForeground:
          Color.lerp(a.selectedForeground, b.selectedForeground, t)!,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
      splashColor: Color.lerp(a.splashColor, b.splashColor, t),
      hoverColor: Color.lerp(a.hoverColor, b.hoverColor, t),
      highlightColor: Color.lerp(a.highlightColor, b.highlightColor, t),
      focusColor: Color.lerp(a.focusColor, b.focusColor, t),
    );
  }

  static NomoVerticalMenuColorData overrideWith(NomoVerticalMenuColorData base,
      [NomoVerticalMenuColorDataNullable? override]) {
    return NomoVerticalMenuColorData(
      border: override?.border ?? base.border,
      selectedBorder: override?.selectedBorder ?? base.selectedBorder,
      foreground: override?.foreground ?? base.foreground,
      background: override?.background ?? base.background,
      selectedBackground:
          override?.selectedBackground ?? base.selectedBackground,
      selectedForeground:
          override?.selectedForeground ?? base.selectedForeground,
      borderRadius: override?.borderRadius ?? base.borderRadius,
      splashColor: override?.splashColor ?? base.splashColor,
      hoverColor: override?.hoverColor ?? base.hoverColor,
      highlightColor: override?.highlightColor ?? base.highlightColor,
      focusColor: override?.focusColor ?? base.focusColor,
    );
  }
}

class NomoVerticalMenuSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final double? itemSpacing;
  final double? spacing;
  final double? height;
  final double? iconSize;
  const NomoVerticalMenuSizingDataNullable({
    this.padding,
    this.itemSpacing,
    this.spacing,
    this.height,
    this.iconSize,
  });
}

class NomoVerticalMenuSizingData implements NomoVerticalMenuSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double itemSpacing;
  @override
  final double spacing;
  @override
  final double height;
  @override
  final double iconSize;
  const NomoVerticalMenuSizingData({
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
    this.itemSpacing = 8.0,
    this.spacing = 8.0,
    this.height = 56.0,
    this.iconSize = 28.0,
  });
  static NomoVerticalMenuSizingData lerp(
      NomoVerticalMenuSizingData a, NomoVerticalMenuSizingData b, double t) {
    return NomoVerticalMenuSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      itemSpacing: lerpDouble(a.itemSpacing, b.itemSpacing, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      height: lerpDouble(a.height, b.height, t)!,
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
    );
  }

  static NomoVerticalMenuSizingData overrideWith(
      NomoVerticalMenuSizingData base,
      [NomoVerticalMenuSizingDataNullable? override]) {
    return NomoVerticalMenuSizingData(
      padding: override?.padding ?? base.padding,
      itemSpacing: override?.itemSpacing ?? base.itemSpacing,
      spacing: override?.spacing ?? base.spacing,
      height: override?.height ?? base.height,
      iconSize: override?.iconSize ?? base.iconSize,
    );
  }
}

class NomoVerticalMenuConstantsNullable {
  const NomoVerticalMenuConstantsNullable();
}

class NomoVerticalMenuConstants implements NomoVerticalMenuConstantsNullable {
  const NomoVerticalMenuConstants();
}

class NomoVerticalMenuThemeData
    implements
        NomoVerticalMenuColorData,
        NomoVerticalMenuSizingData,
        NomoVerticalMenuConstants {
  @override
  final BorderSide border;
  @override
  final BorderSide selectedBorder;
  @override
  final Color foreground;
  @override
  final Color background;
  @override
  final Color selectedBackground;
  @override
  final Color selectedForeground;
  @override
  final BorderRadius borderRadius;
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
  @override
  final double itemSpacing;
  @override
  final double spacing;
  @override
  final double height;
  @override
  final double iconSize;
  const NomoVerticalMenuThemeData({
    this.border = BorderSide.none,
    this.selectedBorder = BorderSide.none,
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedBackground = Colors.red,
    this.selectedForeground = Colors.red,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.splashColor = null,
    this.hoverColor = null,
    this.highlightColor = null,
    this.focusColor = null,
    this.padding = const EdgeInsets.symmetric(horizontal: 8),
    this.itemSpacing = 8.0,
    this.spacing = 8.0,
    this.height = 56.0,
    this.iconSize = 28.0,
  });
  factory NomoVerticalMenuThemeData.from(
    NomoVerticalMenuColorData colors,
    NomoVerticalMenuSizingData sizing,
    NomoVerticalMenuConstants constants,
  ) {
    return NomoVerticalMenuThemeData(
      border: colors.border,
      selectedBorder: colors.selectedBorder,
      foreground: colors.foreground,
      background: colors.background,
      selectedBackground: colors.selectedBackground,
      selectedForeground: colors.selectedForeground,
      borderRadius: colors.borderRadius,
      splashColor: colors.splashColor,
      hoverColor: colors.hoverColor,
      highlightColor: colors.highlightColor,
      focusColor: colors.focusColor,
      padding: sizing.padding,
      itemSpacing: sizing.itemSpacing,
      spacing: sizing.spacing,
      height: sizing.height,
      iconSize: sizing.iconSize,
    );
  }
  NomoVerticalMenuThemeData copyWith(
      [NomoVerticalMenuThemeDataNullable? override]) {
    return NomoVerticalMenuThemeData(
      border: override?.border ?? border,
      selectedBorder: override?.selectedBorder ?? selectedBorder,
      foreground: override?.foreground ?? foreground,
      background: override?.background ?? background,
      selectedBackground: override?.selectedBackground ?? selectedBackground,
      selectedForeground: override?.selectedForeground ?? selectedForeground,
      borderRadius: override?.borderRadius ?? borderRadius,
      splashColor: override?.splashColor ?? splashColor,
      hoverColor: override?.hoverColor ?? hoverColor,
      highlightColor: override?.highlightColor ?? highlightColor,
      focusColor: override?.focusColor ?? focusColor,
      padding: override?.padding ?? padding,
      itemSpacing: override?.itemSpacing ?? itemSpacing,
      spacing: override?.spacing ?? spacing,
      height: override?.height ?? height,
      iconSize: override?.iconSize ?? iconSize,
    );
  }
}

class NomoVerticalMenuThemeDataNullable
    implements
        NomoVerticalMenuColorDataNullable,
        NomoVerticalMenuSizingDataNullable,
        NomoVerticalMenuConstantsNullable {
  @override
  final BorderSide? border;
  @override
  final BorderSide? selectedBorder;
  @override
  final Color? foreground;
  @override
  final Color? background;
  @override
  final Color? selectedBackground;
  @override
  final Color? selectedForeground;
  @override
  final BorderRadius? borderRadius;
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
  @override
  final double? itemSpacing;
  @override
  final double? spacing;
  @override
  final double? height;
  @override
  final double? iconSize;
  const NomoVerticalMenuThemeDataNullable({
    this.border,
    this.selectedBorder,
    this.foreground,
    this.background,
    this.selectedBackground,
    this.selectedForeground,
    this.borderRadius,
    this.splashColor,
    this.hoverColor,
    this.highlightColor,
    this.focusColor,
    this.padding,
    this.itemSpacing,
    this.spacing,
    this.height,
    this.iconSize,
  });
}

class NomoVerticalMenuThemeOverride extends InheritedWidget {
  final NomoVerticalMenuThemeDataNullable data;
  const NomoVerticalMenuThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoVerticalMenuThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoVerticalMenuThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoVerticalMenuThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoVerticalMenuThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoVerticalMenuThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoVerticalMenuThemeData getFromContext(
  BuildContext context,
  NomoVerticalMenu widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.verticalMenuColor ??
          const NomoVerticalMenuColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.verticalMenuSizing ??
          const NomoVerticalMenuSizingData();
  const globalConstants = NomoVerticalMenuConstants();
  final themeOverride = NomoVerticalMenuThemeOverride.maybeOf(context);
  final themeData = NomoVerticalMenuThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoVerticalMenuThemeData(
    border: widget.border ?? themeData.border,
    selectedBorder: widget.selectedBorder ?? themeData.selectedBorder,
    foreground: widget.foreground ?? themeData.foreground,
    background: widget.background ?? themeData.background,
    selectedBackground:
        widget.selectedBackground ?? themeData.selectedBackground,
    selectedForeground:
        widget.selectedForeground ?? themeData.selectedForeground,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    splashColor: widget.splashColor ?? themeData.splashColor,
    hoverColor: widget.hoverColor ?? themeData.hoverColor,
    highlightColor: widget.highlightColor ?? themeData.highlightColor,
    focusColor: widget.focusColor ?? themeData.focusColor,
    padding: widget.padding ?? themeData.padding,
    itemSpacing: widget.itemSpacing ?? themeData.itemSpacing,
    spacing: widget.spacing ?? themeData.spacing,
    height: widget.height ?? themeData.height,
    iconSize: widget.iconSize ?? themeData.iconSize,
  );
}
