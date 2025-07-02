// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_route_body.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoRouteBodyColorDataNullable {
  final Color? backgroundColor;
  final Widget? background;
  const NomoRouteBodyColorDataNullable({
    this.backgroundColor,
    this.background,
  });
}

class NomoRouteBodyColorData implements NomoRouteBodyColorDataNullable {
  @override
  final Color? backgroundColor;
  @override
  final Widget? background;
  const NomoRouteBodyColorData({
    this.backgroundColor = null,
    this.background = null,
  });
  static NomoRouteBodyColorData lerp(
      NomoRouteBodyColorData a, NomoRouteBodyColorData b, double t) {
    return NomoRouteBodyColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t),
      background: t < 0.5 ? a.background : b.background,
    );
  }

  static NomoRouteBodyColorData overrideWith(NomoRouteBodyColorData base,
      [NomoRouteBodyColorDataNullable? override]) {
    return NomoRouteBodyColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      background: override?.background ?? base.background,
    );
  }
}

class NomoRouteBodySizingDataNullable {
  final EdgeInsets? padding;
  final double? scrollBarThickness;
  final Radius? scrollBarRadius;
  final double? maxContentWidth;
  const NomoRouteBodySizingDataNullable({
    this.padding,
    this.scrollBarThickness,
    this.scrollBarRadius,
    this.maxContentWidth,
  });
}

class NomoRouteBodySizingData implements NomoRouteBodySizingDataNullable {
  @override
  final EdgeInsets padding;
  @override
  final double scrollBarThickness;
  @override
  final Radius scrollBarRadius;
  @override
  final double? maxContentWidth;
  const NomoRouteBodySizingData({
    this.padding = const EdgeInsets.all(8),
    this.scrollBarThickness = 8.0,
    this.scrollBarRadius = const Radius.circular(4),
    this.maxContentWidth = null,
  });
  static NomoRouteBodySizingData lerp(
      NomoRouteBodySizingData a, NomoRouteBodySizingData b, double t) {
    return NomoRouteBodySizingData(
      padding: EdgeInsets.lerp(a.padding, b.padding, t)!,
      scrollBarThickness:
          lerpDouble(a.scrollBarThickness, b.scrollBarThickness, t)!,
      scrollBarRadius: Radius.lerp(a.scrollBarRadius, b.scrollBarRadius, t)!,
      maxContentWidth: t < 0.5 ? a.maxContentWidth : b.maxContentWidth,
    );
  }

  static NomoRouteBodySizingData overrideWith(NomoRouteBodySizingData base,
      [NomoRouteBodySizingDataNullable? override]) {
    return NomoRouteBodySizingData(
      padding: override?.padding ?? base.padding,
      scrollBarThickness:
          override?.scrollBarThickness ?? base.scrollBarThickness,
      scrollBarRadius: override?.scrollBarRadius ?? base.scrollBarRadius,
      maxContentWidth: override?.maxContentWidth ?? base.maxContentWidth,
    );
  }
}

class NomoRouteBodyConstantsNullable {
  const NomoRouteBodyConstantsNullable();
}

class NomoRouteBodyConstants implements NomoRouteBodyConstantsNullable {
  const NomoRouteBodyConstants();
}

class NomoRouteBodyThemeData
    implements
        NomoRouteBodyColorData,
        NomoRouteBodySizingData,
        NomoRouteBodyConstants {
  @override
  final Color? backgroundColor;
  @override
  final Widget? background;
  @override
  final EdgeInsets padding;
  @override
  final double scrollBarThickness;
  @override
  final Radius scrollBarRadius;
  @override
  final double? maxContentWidth;
  const NomoRouteBodyThemeData({
    this.backgroundColor = null,
    this.background = null,
    this.padding = const EdgeInsets.all(8),
    this.scrollBarThickness = 8.0,
    this.scrollBarRadius = const Radius.circular(4),
    this.maxContentWidth = null,
  });
  factory NomoRouteBodyThemeData.from(
    NomoRouteBodyColorData colors,
    NomoRouteBodySizingData sizing,
    NomoRouteBodyConstants constants,
  ) {
    return NomoRouteBodyThemeData(
      backgroundColor: colors.backgroundColor,
      background: colors.background,
      padding: sizing.padding,
      scrollBarThickness: sizing.scrollBarThickness,
      scrollBarRadius: sizing.scrollBarRadius,
      maxContentWidth: sizing.maxContentWidth,
    );
  }
  NomoRouteBodyThemeData copyWith([NomoRouteBodyThemeDataNullable? override]) {
    return NomoRouteBodyThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      background: override?.background ?? background,
      padding: override?.padding ?? padding,
      scrollBarThickness: override?.scrollBarThickness ?? scrollBarThickness,
      scrollBarRadius: override?.scrollBarRadius ?? scrollBarRadius,
      maxContentWidth: override?.maxContentWidth ?? maxContentWidth,
    );
  }
}

class NomoRouteBodyThemeDataNullable
    implements
        NomoRouteBodyColorDataNullable,
        NomoRouteBodySizingDataNullable,
        NomoRouteBodyConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final Widget? background;
  @override
  final EdgeInsets? padding;
  @override
  final double? scrollBarThickness;
  @override
  final Radius? scrollBarRadius;
  @override
  final double? maxContentWidth;
  const NomoRouteBodyThemeDataNullable({
    this.backgroundColor,
    this.background,
    this.padding,
    this.scrollBarThickness,
    this.scrollBarRadius,
    this.maxContentWidth,
  });
}

class NomoRouteBodyThemeOverride extends InheritedWidget {
  final NomoRouteBodyThemeDataNullable data;
  const NomoRouteBodyThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoRouteBodyThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoRouteBodyThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoRouteBodyThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoRouteBodyThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoRouteBodyThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoRouteBodyThemeData getFromContext(
  BuildContext context,
  NomoRouteBody widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.routeBodyColor ??
          const NomoRouteBodyColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.routeBodySizing ??
          const NomoRouteBodySizingData();
  const globalConstants = NomoRouteBodyConstants();
  final themeOverride = NomoRouteBodyThemeOverride.maybeOf(context);
  final themeData = NomoRouteBodyThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoRouteBodyThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    background: widget.background ?? themeData.background,
    padding: widget.padding ?? themeData.padding,
    scrollBarThickness:
        widget.scrollBarThickness ?? themeData.scrollBarThickness,
    scrollBarRadius: widget.scrollBarRadius ?? themeData.scrollBarRadius,
    maxContentWidth: widget.maxContentWidth ?? themeData.maxContentWidth,
  );
}
