// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_app_bar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class NomoAppBarColorDataNullable {
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  const NomoAppBarColorDataNullable({
    this.borderRadius,
    this.backgroundColor,
  });
}

class NomoAppBarColorData implements NomoAppBarColorDataNullable {
  final BorderRadiusGeometry? borderRadius;
  final Color backgroundColor;
  const NomoAppBarColorData({
    this.borderRadius = null,
    this.backgroundColor = Colors.red,
  });
  static NomoAppBarColorData lerp(
      NomoAppBarColorData a, NomoAppBarColorData b, double t) {
    return NomoAppBarColorData(
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t),
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
    );
  }
}

class NomoAppBarSizingDataNullable {
  final double? spacing;
  final double? topInset;
  final double? height;
  final double? elevation;
  const NomoAppBarSizingDataNullable({
    this.spacing,
    this.topInset,
    this.height,
    this.elevation,
  });
}

class NomoAppBarSizingData implements NomoAppBarSizingDataNullable {
  final double spacing;
  final double topInset;
  final double height;
  final double elevation;
  const NomoAppBarSizingData({
    this.spacing = 16.0,
    this.topInset = 0.0,
    this.height = kToolbarHeight,
    this.elevation = 2.0,
  });
  static NomoAppBarSizingData lerp(
      NomoAppBarSizingData a, NomoAppBarSizingData b, double t) {
    return NomoAppBarSizingData(
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      topInset: lerpDouble(a.topInset, b.topInset, t)!,
      height: lerpDouble(a.height, b.height, t)!,
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
    );
  }
}

class NomoAppBarThemeData implements NomoAppBarColorData, NomoAppBarSizingData {
  final BorderRadiusGeometry? borderRadius;
  final Color backgroundColor;
  final double spacing;
  final double topInset;
  final double height;
  final double elevation;
  const NomoAppBarThemeData({
    this.borderRadius = null,
    this.backgroundColor = Colors.red,
    this.spacing = 16.0,
    this.topInset = 0.0,
    this.height = kToolbarHeight,
    this.elevation = 2.0,
  });
  factory NomoAppBarThemeData.from(
    NomoAppBarColorData colors,
    NomoAppBarSizingData sizing,
  ) {
    return NomoAppBarThemeData(
      borderRadius: colors.borderRadius,
      backgroundColor: colors.backgroundColor,
      spacing: sizing.spacing,
      topInset: sizing.topInset,
      height: sizing.height,
      elevation: sizing.elevation,
    );
  }
  NomoAppBarThemeData override([NomoAppBarThemeDataNullable? override]) {
    return NomoAppBarThemeData(
      borderRadius: override?.borderRadius ?? borderRadius,
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      spacing: override?.spacing ?? spacing,
      topInset: override?.topInset ?? topInset,
      height: override?.height ?? height,
      elevation: override?.elevation ?? elevation,
    );
  }
}

class NomoAppBarThemeDataNullable
    implements NomoAppBarColorDataNullable, NomoAppBarSizingDataNullable {
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  final double? spacing;
  final double? topInset;
  final double? height;
  final double? elevation;
  const NomoAppBarThemeDataNullable({
    this.borderRadius,
    this.backgroundColor,
    this.spacing,
    this.topInset,
    this.height,
    this.elevation,
  });
}

class NomoAppBarThemeOverride extends InheritedWidget {
  final NomoAppBarThemeDataNullable data;
  const NomoAppBarThemeOverride({
    required this.data,
    required super.child,
  });
  static NomoAppBarThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoAppBarThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoAppBarThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoAppBarThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoAppBarThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoAppBarThemeData getFromContext(
  BuildContext context,
  NomoAppBar widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.appBarTheme ??
          NomoAppBarColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.appBarTheme ??
          NomoAppBarSizingData();
  final themeOverride = NomoAppBarThemeOverride.maybeOf(context);
  final themeData =
      NomoAppBarThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return NomoAppBarThemeData(
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    spacing: widget.spacing ?? themeData.spacing,
    topInset: widget.topInset ?? themeData.topInset,
    height: widget.height ?? themeData.height,
    elevation: widget.elevation ?? themeData.elevation,
  );
}
