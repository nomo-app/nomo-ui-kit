// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_vertical_menu.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoVerticalMenuColorDataNullable {
  final Color? foreground;
  final Color? background;
  final Color? selectedBackground;
  final Color? selectedForeground;
  final BorderRadius? borderRadius;
  const NomoVerticalMenuColorDataNullable({
    this.foreground,
    this.background,
    this.selectedBackground,
    this.selectedForeground,
    this.borderRadius,
  });
}

class NomoVerticalMenuColorData implements NomoVerticalMenuColorDataNullable {
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
  const NomoVerticalMenuColorData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedBackground = Colors.red,
    this.selectedForeground = Colors.red,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
  });
  static NomoVerticalMenuColorData lerp(
      NomoVerticalMenuColorData a, NomoVerticalMenuColorData b, double t) {
    return NomoVerticalMenuColorData(
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      selectedBackground:
          Color.lerp(a.selectedBackground, b.selectedBackground, t)!,
      selectedForeground:
          Color.lerp(a.selectedForeground, b.selectedForeground, t)!,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
    );
  }
}

class NomoVerticalMenuSizingDataNullable {
  final double? hPadding;
  final double? itemSpacing;
  final double? spacing;
  final double? height;
  final double? iconSize;
  const NomoVerticalMenuSizingDataNullable({
    this.hPadding,
    this.itemSpacing,
    this.spacing,
    this.height,
    this.iconSize,
  });
}

class NomoVerticalMenuSizingData implements NomoVerticalMenuSizingDataNullable {
  @override
  final double hPadding;
  @override
  final double itemSpacing;
  @override
  final double spacing;
  @override
  final double height;
  @override
  final double iconSize;
  const NomoVerticalMenuSizingData({
    this.hPadding = 16.0,
    this.itemSpacing = 8.0,
    this.spacing = 8.0,
    this.height = 56.0,
    this.iconSize = 28.0,
  });
  static NomoVerticalMenuSizingData lerp(
      NomoVerticalMenuSizingData a, NomoVerticalMenuSizingData b, double t) {
    return NomoVerticalMenuSizingData(
      hPadding: lerpDouble(a.hPadding, b.hPadding, t)!,
      itemSpacing: lerpDouble(a.itemSpacing, b.itemSpacing, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      height: lerpDouble(a.height, b.height, t)!,
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
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
  final double hPadding;
  @override
  final double itemSpacing;
  @override
  final double spacing;
  @override
  final double height;
  @override
  final double iconSize;
  const NomoVerticalMenuThemeData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedBackground = Colors.red,
    this.selectedForeground = Colors.red,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.hPadding = 16.0,
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
      foreground: colors.foreground,
      background: colors.background,
      selectedBackground: colors.selectedBackground,
      selectedForeground: colors.selectedForeground,
      borderRadius: colors.borderRadius,
      hPadding: sizing.hPadding,
      itemSpacing: sizing.itemSpacing,
      spacing: sizing.spacing,
      height: sizing.height,
      iconSize: sizing.iconSize,
    );
  }
  NomoVerticalMenuThemeData copyWith(
      [NomoVerticalMenuThemeDataNullable? override]) {
    return NomoVerticalMenuThemeData(
      foreground: override?.foreground ?? foreground,
      background: override?.background ?? background,
      selectedBackground: override?.selectedBackground ?? selectedBackground,
      selectedForeground: override?.selectedForeground ?? selectedForeground,
      borderRadius: override?.borderRadius ?? borderRadius,
      hPadding: override?.hPadding ?? hPadding,
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
  final double? hPadding;
  @override
  final double? itemSpacing;
  @override
  final double? spacing;
  @override
  final double? height;
  @override
  final double? iconSize;
  const NomoVerticalMenuThemeDataNullable({
    this.foreground,
    this.background,
    this.selectedBackground,
    this.selectedForeground,
    this.borderRadius,
    this.hPadding,
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
      NomoTheme.maybeOf(context)?.componentColors.verticalMenuTheme ??
          const NomoVerticalMenuColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.verticalMenuTheme ??
          const NomoVerticalMenuSizingData();
  const globalConstants = NomoVerticalMenuConstants();
  final themeOverride = NomoVerticalMenuThemeOverride.maybeOf(context);
  final themeData = NomoVerticalMenuThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoVerticalMenuThemeData(
    foreground: widget.foreground ?? themeData.foreground,
    background: widget.background ?? themeData.background,
    selectedBackground:
        widget.selectedBackground ?? themeData.selectedBackground,
    selectedForeground:
        widget.selectedForeground ?? themeData.selectedForeground,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    hPadding: widget.hPadding ?? themeData.hPadding,
    itemSpacing: widget.itemSpacing ?? themeData.itemSpacing,
    spacing: widget.spacing ?? themeData.spacing,
    height: widget.height ?? themeData.height,
    iconSize: widget.iconSize ?? themeData.iconSize,
  );
}
