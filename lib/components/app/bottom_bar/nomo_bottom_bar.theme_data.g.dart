// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_bottom_bar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoBottomBarColorDataNullable {
  final Color? foreground;
  final Color? background;
  final Color? selectedForeground;
  final BorderRadius? borderRadius;
  const NomoBottomBarColorDataNullable({
    this.foreground,
    this.background,
    this.selectedForeground,
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
  final BorderRadius borderRadius;
  const NomoBottomBarColorData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedForeground = Colors.red,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });
  static NomoBottomBarColorData lerp(
      NomoBottomBarColorData a, NomoBottomBarColorData b, double t) {
    return NomoBottomBarColorData(
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      selectedForeground:
          Color.lerp(a.selectedForeground, b.selectedForeground, t)!,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
    );
  }
}

class NomoBottomBarSizingDataNullable {
  final double? height;
  final double? spacing;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? itemPadding;
  const NomoBottomBarSizingDataNullable({
    this.height,
    this.spacing,
    this.iconSize,
    this.padding,
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
  final EdgeInsetsGeometry itemPadding;
  const NomoBottomBarSizingData({
    this.height = 56.0,
    this.spacing = 4.0,
    this.iconSize = 28.0,
    this.padding = const EdgeInsets.all(4),
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 8),
  });
  static NomoBottomBarSizingData lerp(
      NomoBottomBarSizingData a, NomoBottomBarSizingData b, double t) {
    return NomoBottomBarSizingData(
      height: lerpDouble(a.height, b.height, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      itemPadding: EdgeInsetsGeometry.lerp(a.itemPadding, b.itemPadding, t)!,
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
  final EdgeInsetsGeometry itemPadding;
  const NomoBottomBarThemeData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedForeground = Colors.red,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.height = 56.0,
    this.spacing = 4.0,
    this.iconSize = 28.0,
    this.padding = const EdgeInsets.all(4),
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
      borderRadius: colors.borderRadius,
      height: sizing.height,
      spacing: sizing.spacing,
      iconSize: sizing.iconSize,
      padding: sizing.padding,
      itemPadding: sizing.itemPadding,
    );
  }
  NomoBottomBarThemeData copyWith([NomoBottomBarThemeDataNullable? override]) {
    return NomoBottomBarThemeData(
      foreground: override?.foreground ?? foreground,
      background: override?.background ?? background,
      selectedForeground: override?.selectedForeground ?? selectedForeground,
      borderRadius: override?.borderRadius ?? borderRadius,
      height: override?.height ?? height,
      spacing: override?.spacing ?? spacing,
      iconSize: override?.iconSize ?? iconSize,
      padding: override?.padding ?? padding,
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
  final EdgeInsetsGeometry? itemPadding;
  const NomoBottomBarThemeDataNullable({
    this.foreground,
    this.background,
    this.selectedForeground,
    this.borderRadius,
    this.height,
    this.spacing,
    this.iconSize,
    this.padding,
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
      NomoTheme.maybeOf(context)?.componentColors.bottomBarTheme ??
          const NomoBottomBarColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.bottomBarTheme ??
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
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    height: widget.height ?? themeData.height,
    spacing: widget.spacing ?? themeData.spacing,
    iconSize: widget.iconSize ?? themeData.iconSize,
    padding: widget.padding ?? themeData.padding,
    itemPadding: widget.itemPadding ?? themeData.itemPadding,
  );
}
