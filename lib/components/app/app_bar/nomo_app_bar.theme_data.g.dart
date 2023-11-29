// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_app_bar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoAppBarColorDataNullable {
  final BorderRadiusGeometry? borderRadius;
  final Color? backgroundColor;
  const NomoAppBarColorDataNullable({
    this.borderRadius,
    this.backgroundColor,
  });
}

class NomoAppBarColorData implements NomoAppBarColorDataNullable {
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
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
  @override
  final double spacing;
  @override
  final double topInset;
  @override
  final double height;
  @override
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

class NomoAppBarConstantsNullable {
  const NomoAppBarConstantsNullable();
}

class NomoAppBarConstants implements NomoAppBarConstantsNullable {
  const NomoAppBarConstants();
}

class NomoAppBarThemeData
    implements NomoAppBarColorData, NomoAppBarSizingData, NomoAppBarConstants {
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
  final Color backgroundColor;
  @override
  final double spacing;
  @override
  final double topInset;
  @override
  final double height;
  @override
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
    NomoAppBarConstants constants,
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
  NomoAppBarThemeData copyWith([NomoAppBarThemeDataNullable? override]) {
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
    implements
        NomoAppBarColorDataNullable,
        NomoAppBarSizingDataNullable,
        NomoAppBarConstantsNullable {
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
  final Color? backgroundColor;
  @override
  final double? spacing;
  @override
  final double? topInset;
  @override
  final double? height;
  @override
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
  const NomoAppBarThemeOverride(
      {required this.data, required super.child, super.key});
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
          const NomoAppBarColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.appBarTheme ??
          const NomoAppBarSizingData();
  const globalConstants = NomoAppBarConstants();
  final themeOverride = NomoAppBarThemeOverride.maybeOf(context);
  final themeData = NomoAppBarThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoAppBarThemeData(
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    spacing: widget.spacing ?? themeData.spacing,
    topInset: widget.topInset ?? themeData.topInset,
    height: widget.height ?? themeData.height,
    elevation: widget.elevation ?? themeData.elevation,
  );
}
