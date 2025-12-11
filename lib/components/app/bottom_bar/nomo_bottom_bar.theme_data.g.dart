// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_bottom_bar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoBottomBarColorDataNullable {
  final Color? foreground;
  final Color? background;
  final Color? selectedForeground;
  final Color? itemBackground;
  final Color? selectedBackground;
  final BorderRadius? itemBorderRadius;
  final BorderRadius? borderRadius;
  const NomoBottomBarColorDataNullable({
    this.foreground,
    this.background,
    this.selectedForeground,
    this.itemBackground,
    this.selectedBackground,
    this.itemBorderRadius,
    this.borderRadius,
  });
}

class NomoBottomBarColorData implements NomoBottomBarColorDataNullable {
  @override
  final Color foreground;
  @override
  final Color background;
  @override
  final Color selectedForeground;
  @override
  final Color itemBackground;
  @override
  final Color selectedBackground;
  @override
  final BorderRadius itemBorderRadius;
  @override
  final BorderRadius borderRadius;
  const NomoBottomBarColorData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedForeground = Colors.red,
    this.itemBackground = Colors.transparent,
    this.selectedBackground = Colors.transparent,
    this.itemBorderRadius = const BorderRadius.all(Radius.circular(8)),
    this.borderRadius = BorderRadius.zero,
  });
  static NomoBottomBarColorData lerp(
      NomoBottomBarColorData a, NomoBottomBarColorData b, double t) {
    return NomoBottomBarColorData(
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      selectedForeground:
          Color.lerp(a.selectedForeground, b.selectedForeground, t)!,
      itemBackground: Color.lerp(a.itemBackground, b.itemBackground, t)!,
      selectedBackground:
          Color.lerp(a.selectedBackground, b.selectedBackground, t)!,
      itemBorderRadius:
          BorderRadius.lerp(a.itemBorderRadius, b.itemBorderRadius, t)!,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
    );
  }

  static NomoBottomBarColorData overrideWith(NomoBottomBarColorData base,
      [NomoBottomBarColorDataNullable? override]) {
    return NomoBottomBarColorData(
      foreground: override?.foreground ?? base.foreground,
      background: override?.background ?? base.background,
      selectedForeground:
          override?.selectedForeground ?? base.selectedForeground,
      itemBackground: override?.itemBackground ?? base.itemBackground,
      selectedBackground:
          override?.selectedBackground ?? base.selectedBackground,
      itemBorderRadius: override?.itemBorderRadius ?? base.itemBorderRadius,
      borderRadius: override?.borderRadius ?? base.borderRadius,
    );
  }
}

class NomoBottomBarSizingDataNullable {
  final double? height;
  final double? spacing;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final double? elevation;
  final EdgeInsetsGeometry? itemPadding;
  const NomoBottomBarSizingDataNullable({
    this.height,
    this.spacing,
    this.iconSize,
    this.padding,
    this.elevation,
    this.itemPadding,
  });
}

class NomoBottomBarSizingData implements NomoBottomBarSizingDataNullable {
  @override
  final double height;
  @override
  final double spacing;
  @override
  final double iconSize;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double elevation;
  @override
  final EdgeInsetsGeometry itemPadding;
  const NomoBottomBarSizingData({
    this.height = 56.0,
    this.spacing = 0.0,
    this.iconSize = 28.0,
    this.padding = const EdgeInsets.all(4),
    this.elevation = 16.0,
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 8),
  });
  static NomoBottomBarSizingData lerp(
      NomoBottomBarSizingData a, NomoBottomBarSizingData b, double t) {
    return NomoBottomBarSizingData(
      height: lerpDouble(a.height, b.height, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      itemPadding: EdgeInsetsGeometry.lerp(a.itemPadding, b.itemPadding, t)!,
    );
  }

  static NomoBottomBarSizingData overrideWith(NomoBottomBarSizingData base,
      [NomoBottomBarSizingDataNullable? override]) {
    return NomoBottomBarSizingData(
      height: override?.height ?? base.height,
      spacing: override?.spacing ?? base.spacing,
      iconSize: override?.iconSize ?? base.iconSize,
      padding: override?.padding ?? base.padding,
      elevation: override?.elevation ?? base.elevation,
      itemPadding: override?.itemPadding ?? base.itemPadding,
    );
  }
}

class NomoBottomBarConstantsNullable {
  const NomoBottomBarConstantsNullable();
}

class NomoBottomBarConstants implements NomoBottomBarConstantsNullable {
  const NomoBottomBarConstants();
}

class NomoBottomBarThemeData
    implements
        NomoBottomBarColorData,
        NomoBottomBarSizingData,
        NomoBottomBarConstants {
  @override
  final Color foreground;
  @override
  final Color background;
  @override
  final Color selectedForeground;
  @override
  final Color itemBackground;
  @override
  final Color selectedBackground;
  @override
  final BorderRadius itemBorderRadius;
  @override
  final BorderRadius borderRadius;
  @override
  final double height;
  @override
  final double spacing;
  @override
  final double iconSize;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double elevation;
  @override
  final EdgeInsetsGeometry itemPadding;
  const NomoBottomBarThemeData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedForeground = Colors.red,
    this.itemBackground = Colors.transparent,
    this.selectedBackground = Colors.transparent,
    this.itemBorderRadius = const BorderRadius.all(Radius.circular(8)),
    this.borderRadius = BorderRadius.zero,
    this.height = 56.0,
    this.spacing = 0.0,
    this.iconSize = 28.0,
    this.padding = const EdgeInsets.all(4),
    this.elevation = 16.0,
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 8),
  });
  factory NomoBottomBarThemeData.from(
    NomoBottomBarColorData colors,
    NomoBottomBarSizingData sizing,
    NomoBottomBarConstants constants,
  ) {
    return NomoBottomBarThemeData(
      foreground: colors.foreground,
      background: colors.background,
      selectedForeground: colors.selectedForeground,
      itemBackground: colors.itemBackground,
      selectedBackground: colors.selectedBackground,
      itemBorderRadius: colors.itemBorderRadius,
      borderRadius: colors.borderRadius,
      height: sizing.height,
      spacing: sizing.spacing,
      iconSize: sizing.iconSize,
      padding: sizing.padding,
      elevation: sizing.elevation,
      itemPadding: sizing.itemPadding,
    );
  }
  NomoBottomBarThemeData copyWith([NomoBottomBarThemeDataNullable? override]) {
    return NomoBottomBarThemeData(
      foreground: override?.foreground ?? foreground,
      background: override?.background ?? background,
      selectedForeground: override?.selectedForeground ?? selectedForeground,
      itemBackground: override?.itemBackground ?? itemBackground,
      selectedBackground: override?.selectedBackground ?? selectedBackground,
      itemBorderRadius: override?.itemBorderRadius ?? itemBorderRadius,
      borderRadius: override?.borderRadius ?? borderRadius,
      height: override?.height ?? height,
      spacing: override?.spacing ?? spacing,
      iconSize: override?.iconSize ?? iconSize,
      padding: override?.padding ?? padding,
      elevation: override?.elevation ?? elevation,
      itemPadding: override?.itemPadding ?? itemPadding,
    );
  }
}

class NomoBottomBarThemeDataNullable
    implements
        NomoBottomBarColorDataNullable,
        NomoBottomBarSizingDataNullable,
        NomoBottomBarConstantsNullable {
  @override
  final Color? foreground;
  @override
  final Color? background;
  @override
  final Color? selectedForeground;
  @override
  final Color? itemBackground;
  @override
  final Color? selectedBackground;
  @override
  final BorderRadius? itemBorderRadius;
  @override
  final BorderRadius? borderRadius;
  @override
  final double? height;
  @override
  final double? spacing;
  @override
  final double? iconSize;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final double? elevation;
  @override
  final EdgeInsetsGeometry? itemPadding;
  const NomoBottomBarThemeDataNullable({
    this.foreground,
    this.background,
    this.selectedForeground,
    this.itemBackground,
    this.selectedBackground,
    this.itemBorderRadius,
    this.borderRadius,
    this.height,
    this.spacing,
    this.iconSize,
    this.padding,
    this.elevation,
    this.itemPadding,
  });
}

class NomoBottomBarThemeOverride extends InheritedWidget {
  final NomoBottomBarThemeDataNullable data;
  const NomoBottomBarThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoBottomBarThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoBottomBarThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoBottomBarThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoBottomBarThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoBottomBarThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoBottomBarThemeData getFromContext(
  BuildContext context,
  NomoBottomBar widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.bottomBarColor ??
          const NomoBottomBarColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.bottomBarSizing ??
          const NomoBottomBarSizingData();
  const globalConstants = NomoBottomBarConstants();
  final themeOverride = NomoBottomBarThemeOverride.maybeOf(context);
  final themeData = NomoBottomBarThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoBottomBarThemeData(
    foreground: widget.foreground ?? themeData.foreground,
    background: widget.background ?? themeData.background,
    selectedForeground:
        widget.selectedForeground ?? themeData.selectedForeground,
    itemBackground: widget.itemBackground ?? themeData.itemBackground,
    selectedBackground:
        widget.selectedBackground ?? themeData.selectedBackground,
    itemBorderRadius: widget.itemBorderRadius ?? themeData.itemBorderRadius,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    height: widget.height ?? themeData.height,
    spacing: widget.spacing ?? themeData.spacing,
    iconSize: widget.iconSize ?? themeData.iconSize,
    padding: widget.padding ?? themeData.padding,
    elevation: widget.elevation ?? themeData.elevation,
    itemPadding: widget.itemPadding ?? themeData.itemPadding,
  );
}
