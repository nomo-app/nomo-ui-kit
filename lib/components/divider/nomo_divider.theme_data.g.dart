// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_divider.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoDividerColorDataNullable {
  final Color? color;
  const NomoDividerColorDataNullable({
    this.color,
  });
}

class NomoDividerColorData implements NomoDividerColorDataNullable {
  @override
  final Color color;
  const NomoDividerColorData({
    this.color = Colors.black38,
  });
  static NomoDividerColorData lerp(
      NomoDividerColorData a, NomoDividerColorData b, double t) {
    return NomoDividerColorData(
      color: Color.lerp(a.color, b.color, t)!,
    );
  }

  static NomoDividerColorData overrideWith(NomoDividerColorData base,
      [NomoDividerColorDataNullable? override]) {
    return NomoDividerColorData(
      color: override?.color ?? base.color,
    );
  }
}

class NomoDividerSizingDataNullable {
  final double? crossAxisSize;
  final double? crossAxisSpacing;
  const NomoDividerSizingDataNullable({
    this.crossAxisSize,
    this.crossAxisSpacing,
  });
}

class NomoDividerSizingData implements NomoDividerSizingDataNullable {
  @override
  final double crossAxisSize;
  @override
  final double crossAxisSpacing;
  const NomoDividerSizingData({
    this.crossAxisSize = 1.0,
    this.crossAxisSpacing = 8.0,
  });
  static NomoDividerSizingData lerp(
      NomoDividerSizingData a, NomoDividerSizingData b, double t) {
    return NomoDividerSizingData(
      crossAxisSize: lerpDouble(a.crossAxisSize, b.crossAxisSize, t)!,
      crossAxisSpacing: lerpDouble(a.crossAxisSpacing, b.crossAxisSpacing, t)!,
    );
  }

  static NomoDividerSizingData overrideWith(NomoDividerSizingData base,
      [NomoDividerSizingDataNullable? override]) {
    return NomoDividerSizingData(
      crossAxisSize: override?.crossAxisSize ?? base.crossAxisSize,
      crossAxisSpacing: override?.crossAxisSpacing ?? base.crossAxisSpacing,
    );
  }
}

class NomoDividerConstantsNullable {
  const NomoDividerConstantsNullable();
}

class NomoDividerConstants implements NomoDividerConstantsNullable {
  const NomoDividerConstants();
}

class NomoDividerThemeData
    implements
        NomoDividerColorData,
        NomoDividerSizingData,
        NomoDividerConstants {
  @override
  final Color color;
  @override
  final double crossAxisSize;
  @override
  final double crossAxisSpacing;
  const NomoDividerThemeData({
    this.color = Colors.black38,
    this.crossAxisSize = 1.0,
    this.crossAxisSpacing = 8.0,
  });
  factory NomoDividerThemeData.from(
    NomoDividerColorData colors,
    NomoDividerSizingData sizing,
    NomoDividerConstants constants,
  ) {
    return NomoDividerThemeData(
      color: colors.color,
      crossAxisSize: sizing.crossAxisSize,
      crossAxisSpacing: sizing.crossAxisSpacing,
    );
  }
  NomoDividerThemeData copyWith([NomoDividerThemeDataNullable? override]) {
    return NomoDividerThemeData(
      color: override?.color ?? color,
      crossAxisSize: override?.crossAxisSize ?? crossAxisSize,
      crossAxisSpacing: override?.crossAxisSpacing ?? crossAxisSpacing,
    );
  }
}

class NomoDividerThemeDataNullable
    implements
        NomoDividerColorDataNullable,
        NomoDividerSizingDataNullable,
        NomoDividerConstantsNullable {
  @override
  final Color? color;
  @override
  final double? crossAxisSize;
  @override
  final double? crossAxisSpacing;
  const NomoDividerThemeDataNullable({
    this.color,
    this.crossAxisSize,
    this.crossAxisSpacing,
  });
}

class NomoDividerThemeOverride extends InheritedWidget {
  final NomoDividerThemeDataNullable data;
  const NomoDividerThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoDividerThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoDividerThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoDividerThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoDividerThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoDividerThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoDividerThemeData getFromContext(
  BuildContext context,
  NomoDivider widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.dividerColor ??
          const NomoDividerColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.dividerSizing ??
          const NomoDividerSizingData();
  const globalConstants = NomoDividerConstants();
  final themeOverride = NomoDividerThemeOverride.maybeOf(context);
  final themeData = NomoDividerThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoDividerThemeData(
    color: widget.color ?? themeData.color,
    crossAxisSize: widget.crossAxisSize ?? themeData.crossAxisSize,
    crossAxisSpacing: widget.crossAxisSpacing ?? themeData.crossAxisSpacing,
  );
}
