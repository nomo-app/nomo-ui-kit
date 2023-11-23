// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shimmer.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class ShimmerColorDataNullable {
  final LinearGradient? gradient;
  const ShimmerColorDataNullable({
    this.gradient,
  });
}

class ShimmerColorData implements ShimmerColorDataNullable {
  @override
  final LinearGradient gradient;
  const ShimmerColorData({
    this.gradient = const LinearGradient(
        colors: [Color(0xFFEBEBF4), Color(0xFFF4F4F4), Color(0xFFEBEBF4)],
        stops: [0.1, 0.3, 0.4],
        begin: Alignment(-1.0, -0.3),
        end: Alignment(1.0, 0.3)),
  });
  static ShimmerColorData lerp(
      ShimmerColorData a, ShimmerColorData b, double t) {
    return ShimmerColorData(
      gradient: LinearGradient.lerp(a.gradient, b.gradient, t)!,
    );
  }
}

class ShimmerSizingDataNullable {
  const ShimmerSizingDataNullable();
}

class ShimmerSizingData implements ShimmerSizingDataNullable {
  const ShimmerSizingData();
  static ShimmerSizingData lerp(
      ShimmerSizingData a, ShimmerSizingData b, double t) {
    return ShimmerSizingData();
  }
}

class ShimmerThemeData implements ShimmerColorData, ShimmerSizingData {
  @override
  final LinearGradient gradient;
  const ShimmerThemeData({
    this.gradient = const LinearGradient(
        colors: [Color(0xFFEBEBF4), Color(0xFFF4F4F4), Color(0xFFEBEBF4)],
        stops: [0.1, 0.3, 0.4],
        begin: Alignment(-1.0, -0.3),
        end: Alignment(1.0, 0.3)),
  });
  factory ShimmerThemeData.from(
    ShimmerColorData colors,
    ShimmerSizingData sizing,
  ) {
    return ShimmerThemeData(
      gradient: colors.gradient,
    );
  }
  ShimmerThemeData copyWith([ShimmerThemeDataNullable? override]) {
    return ShimmerThemeData(
      gradient: override?.gradient ?? gradient,
    );
  }
}

class ShimmerThemeDataNullable
    implements ShimmerColorDataNullable, ShimmerSizingDataNullable {
  @override
  final LinearGradient? gradient;
  const ShimmerThemeDataNullable({
    this.gradient,
  });
}

class ShimmerThemeOverride extends InheritedWidget {
  final ShimmerThemeDataNullable data;
  const ShimmerThemeOverride(
      {required this.data, required super.child, super.key});
  static ShimmerThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<ShimmerThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static ShimmerThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ShimmerThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(ShimmerThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

ShimmerThemeData getFromContext(
  BuildContext context,
  Shimmer widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.shimmerTheme ??
          const ShimmerColorData();
  const globalSizingTheme = ShimmerSizingData();
  final themeOverride = ShimmerThemeOverride.maybeOf(context);
  final themeData = ShimmerThemeData.from(globalColorTheme, globalSizingTheme)
      .copyWith(themeOverride);
  return ShimmerThemeData(
    gradient: widget.gradient ?? themeData.gradient,
  );
}
