// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_info_item.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoInfoItemColorDataNullable {
  const NomoInfoItemColorDataNullable();
}

class NomoInfoItemColorData implements NomoInfoItemColorDataNullable {
  const NomoInfoItemColorData();
  static NomoInfoItemColorData lerp(
      NomoInfoItemColorData a, NomoInfoItemColorData b, double t) {
    return const NomoInfoItemColorData();
  }

  static NomoInfoItemColorData overrideWith(NomoInfoItemColorData base,
      [NomoInfoItemColorDataNullable? override]) {
    return NomoInfoItemColorData();
  }
}

class NomoInfoItemSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  const NomoInfoItemSizingDataNullable({
    this.padding,
  });
}

class NomoInfoItemSizingData implements NomoInfoItemSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  const NomoInfoItemSizingData({
    this.padding = EdgeInsets.zero,
  });
  static NomoInfoItemSizingData lerp(
      NomoInfoItemSizingData a, NomoInfoItemSizingData b, double t) {
    return NomoInfoItemSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
    );
  }

  static NomoInfoItemSizingData overrideWith(NomoInfoItemSizingData base,
      [NomoInfoItemSizingDataNullable? override]) {
    return NomoInfoItemSizingData(
      padding: override?.padding ?? base.padding,
    );
  }
}

class NomoInfoItemConstantsNullable {
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;
  const NomoInfoItemConstantsNullable({
    this.titleStyle,
    this.valueStyle,
  });
}

class NomoInfoItemConstants implements NomoInfoItemConstantsNullable {
  @override
  final TextStyle titleStyle;
  @override
  final TextStyle valueStyle;
  const NomoInfoItemConstants({
    this.titleStyle = const TextStyle(),
    this.valueStyle = const TextStyle(),
  });
}

class NomoInfoItemThemeData
    implements
        NomoInfoItemColorData,
        NomoInfoItemSizingData,
        NomoInfoItemConstants {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final TextStyle titleStyle;
  @override
  final TextStyle valueStyle;
  const NomoInfoItemThemeData({
    this.padding = EdgeInsets.zero,
    this.titleStyle = const TextStyle(),
    this.valueStyle = const TextStyle(),
  });
  factory NomoInfoItemThemeData.from(
    NomoInfoItemColorData colors,
    NomoInfoItemSizingData sizing,
    NomoInfoItemConstants constants,
  ) {
    return NomoInfoItemThemeData(
      padding: sizing.padding,
      titleStyle: constants.titleStyle,
      valueStyle: constants.valueStyle,
    );
  }
  NomoInfoItemThemeData copyWith([NomoInfoItemThemeDataNullable? override]) {
    return NomoInfoItemThemeData(
      padding: override?.padding ?? padding,
      titleStyle: override?.titleStyle ?? titleStyle,
      valueStyle: override?.valueStyle ?? valueStyle,
    );
  }
}

class NomoInfoItemThemeDataNullable
    implements
        NomoInfoItemColorDataNullable,
        NomoInfoItemSizingDataNullable,
        NomoInfoItemConstantsNullable {
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final TextStyle? titleStyle;
  @override
  final TextStyle? valueStyle;
  const NomoInfoItemThemeDataNullable({
    this.padding,
    this.titleStyle,
    this.valueStyle,
  });
}

class NomoInfoItemThemeOverride extends InheritedWidget {
  final NomoInfoItemThemeDataNullable data;
  const NomoInfoItemThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoInfoItemThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoInfoItemThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoInfoItemThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoInfoItemThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoInfoItemThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoInfoItemThemeData getFromContext(
  BuildContext context,
  NomoInfoItem widget,
) {
  const globalColorTheme = NomoInfoItemColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.infoItemSizing ??
          const NomoInfoItemSizingData();
  final globalConstants = NomoTheme.maybeOf(context)?.constants.infoItemTheme ??
      const NomoInfoItemConstants();
  final themeOverride = NomoInfoItemThemeOverride.maybeOf(context);
  final themeData = NomoInfoItemThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoInfoItemThemeData(
    padding: widget.padding ?? themeData.padding,
    titleStyle: widget.titleStyle ?? themeData.titleStyle,
    valueStyle: widget.valueStyle ?? themeData.valueStyle,
  );
}
