// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_init_to_null

part of 'nomo_bottom_bar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

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
  final Color foreground;
  final Color background;
  final Color selectedForeground;
  final BorderRadius borderRadius;
  const NomoBottomBarColorData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.selectedForeground = Colors.red,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });
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
  final double height;
  final double spacing;
  final double iconSize;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry itemPadding;
  const NomoBottomBarSizingData({
    this.height = 56.0,
    this.spacing = 4.0,
    this.iconSize = 28.0,
    this.padding = const EdgeInsets.all(4),
    this.itemPadding = const EdgeInsets.symmetric(horizontal: 8),
  });
}

class NomoBottomBarThemeData
    implements NomoBottomBarColorData, NomoBottomBarSizingData {
  final Color foreground;
  final Color background;
  final Color selectedForeground;
  final BorderRadius borderRadius;
  final double height;
  final double spacing;
  final double iconSize;
  final EdgeInsetsGeometry padding;
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
  NomoBottomBarThemeData override([NomoBottomBarThemeDataNullable? override]) {
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
    implements NomoBottomBarColorDataNullable, NomoBottomBarSizingDataNullable {
  final Color? foreground;
  final Color? background;
  final Color? selectedForeground;
  final BorderRadius? borderRadius;
  final double? height;
  final double? spacing;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
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
  const NomoBottomBarThemeOverride({
    required this.data,
    required super.child,
  });
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
          NomoBottomBarColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.bottomBarTheme ??
          NomoBottomBarSizingData();
  final themeOverride = NomoBottomBarThemeOverride.maybeOf(context);
  final themeData =
      NomoBottomBarThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
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
