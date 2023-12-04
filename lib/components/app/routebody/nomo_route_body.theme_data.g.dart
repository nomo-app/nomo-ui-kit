// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_route_body.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoRouteBodyColorDataNullable {
  const NomoRouteBodyColorDataNullable();
}

class NomoRouteBodyColorData implements NomoRouteBodyColorDataNullable {
  const NomoRouteBodyColorData();
  static NomoRouteBodyColorData lerp(
      NomoRouteBodyColorData a, NomoRouteBodyColorData b, double t) {
    return const NomoRouteBodyColorData();
  }
}

class NomoRouteBodySizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final double? scrollBarThickness;
  final Radius? scrollBarRadius;
  const NomoRouteBodySizingDataNullable({
    this.padding,
    this.scrollBarThickness,
    this.scrollBarRadius,
  });
}

class NomoRouteBodySizingData implements NomoRouteBodySizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double scrollBarThickness;
  @override
  final Radius scrollBarRadius;
  const NomoRouteBodySizingData({
    this.padding = const EdgeInsets.all(8),
    this.scrollBarThickness = 8.0,
    this.scrollBarRadius = const Radius.circular(4),
  });
  static NomoRouteBodySizingData lerp(
      NomoRouteBodySizingData a, NomoRouteBodySizingData b, double t) {
    return NomoRouteBodySizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      scrollBarThickness:
          lerpDouble(a.scrollBarThickness, b.scrollBarThickness, t)!,
      scrollBarRadius: Radius.lerp(a.scrollBarRadius, b.scrollBarRadius, t)!,
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
  final EdgeInsetsGeometry padding;
  @override
  final double scrollBarThickness;
  @override
  final Radius scrollBarRadius;
  const NomoRouteBodyThemeData({
    this.padding = const EdgeInsets.all(8),
    this.scrollBarThickness = 8.0,
    this.scrollBarRadius = const Radius.circular(4),
  });
  factory NomoRouteBodyThemeData.from(
    NomoRouteBodyColorData colors,
    NomoRouteBodySizingData sizing,
    NomoRouteBodyConstants constants,
  ) {
    return NomoRouteBodyThemeData(
      padding: sizing.padding,
      scrollBarThickness: sizing.scrollBarThickness,
      scrollBarRadius: sizing.scrollBarRadius,
    );
  }
  NomoRouteBodyThemeData copyWith([NomoRouteBodyThemeDataNullable? override]) {
    return NomoRouteBodyThemeData(
      padding: override?.padding ?? padding,
      scrollBarThickness: override?.scrollBarThickness ?? scrollBarThickness,
      scrollBarRadius: override?.scrollBarRadius ?? scrollBarRadius,
    );
  }
}

class NomoRouteBodyThemeDataNullable
    implements
        NomoRouteBodyColorDataNullable,
        NomoRouteBodySizingDataNullable,
        NomoRouteBodyConstantsNullable {
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final double? scrollBarThickness;
  @override
  final Radius? scrollBarRadius;
  const NomoRouteBodyThemeDataNullable({
    this.padding,
    this.scrollBarThickness,
    this.scrollBarRadius,
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
  const globalColorTheme = NomoRouteBodyColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.routeBodyTheme ??
          const NomoRouteBodySizingData();
  const globalConstants = NomoRouteBodyConstants();
  final themeOverride = NomoRouteBodyThemeOverride.maybeOf(context);
  final themeData = NomoRouteBodyThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoRouteBodyThemeData(
    padding: widget.padding ?? themeData.padding,
    scrollBarThickness:
        widget.scrollBarThickness ?? themeData.scrollBarThickness,
    scrollBarRadius: widget.scrollBarRadius ?? themeData.scrollBarRadius,
  );
}
