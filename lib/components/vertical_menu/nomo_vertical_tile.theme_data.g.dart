// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_vertical_tile.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoVerticalListTileColorDataNullable {
  const NomoVerticalListTileColorDataNullable();
}

class NomoVerticalListTileColorData
    implements NomoVerticalListTileColorDataNullable {
  const NomoVerticalListTileColorData();
  static NomoVerticalListTileColorData lerp(NomoVerticalListTileColorData a,
      NomoVerticalListTileColorData b, double t) {
    return const NomoVerticalListTileColorData();
  }

  static NomoVerticalListTileColorData overrideWith(
      NomoVerticalListTileColorData base,
      [NomoVerticalListTileColorDataNullable? override]) {
    return NomoVerticalListTileColorData();
  }
}

class NomoVerticalListTileSizingDataNullable {
  const NomoVerticalListTileSizingDataNullable();
}

class NomoVerticalListTileSizingData
    implements NomoVerticalListTileSizingDataNullable {
  const NomoVerticalListTileSizingData();
  static NomoVerticalListTileSizingData lerp(NomoVerticalListTileSizingData a,
      NomoVerticalListTileSizingData b, double t) {
    return const NomoVerticalListTileSizingData();
  }

  static NomoVerticalListTileSizingData overrideWith(
      NomoVerticalListTileSizingData base,
      [NomoVerticalListTileSizingDataNullable? override]) {
    return NomoVerticalListTileSizingData();
  }
}

class NomoVerticalListTileConstantsNullable {
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  final TextStyle? traillingStyle;
  const NomoVerticalListTileConstantsNullable({
    this.titleStyle,
    this.subtitleStyle,
    this.traillingStyle,
  });
}

class NomoVerticalListTileConstants
    implements NomoVerticalListTileConstantsNullable {
  @override
  final TextStyle titleStyle;
  @override
  final TextStyle subtitleStyle;
  @override
  final TextStyle traillingStyle;
  const NomoVerticalListTileConstants({
    this.titleStyle = const TextStyle(),
    this.subtitleStyle = const TextStyle(),
    this.traillingStyle = const TextStyle(),
  });
}

class NomoVerticalListTileThemeData
    implements
        NomoVerticalListTileColorData,
        NomoVerticalListTileSizingData,
        NomoVerticalListTileConstants {
  @override
  final TextStyle titleStyle;
  @override
  final TextStyle subtitleStyle;
  @override
  final TextStyle traillingStyle;
  const NomoVerticalListTileThemeData({
    this.titleStyle = const TextStyle(),
    this.subtitleStyle = const TextStyle(),
    this.traillingStyle = const TextStyle(),
  });
  factory NomoVerticalListTileThemeData.from(
    NomoVerticalListTileColorData colors,
    NomoVerticalListTileSizingData sizing,
    NomoVerticalListTileConstants constants,
  ) {
    return NomoVerticalListTileThemeData(
      titleStyle: constants.titleStyle,
      subtitleStyle: constants.subtitleStyle,
      traillingStyle: constants.traillingStyle,
    );
  }
  NomoVerticalListTileThemeData copyWith(
      [NomoVerticalListTileThemeDataNullable? override]) {
    return NomoVerticalListTileThemeData(
      titleStyle: override?.titleStyle ?? titleStyle,
      subtitleStyle: override?.subtitleStyle ?? subtitleStyle,
      traillingStyle: override?.traillingStyle ?? traillingStyle,
    );
  }
}

class NomoVerticalListTileThemeDataNullable
    implements
        NomoVerticalListTileColorDataNullable,
        NomoVerticalListTileSizingDataNullable,
        NomoVerticalListTileConstantsNullable {
  @override
  final TextStyle? titleStyle;
  @override
  final TextStyle? subtitleStyle;
  @override
  final TextStyle? traillingStyle;
  const NomoVerticalListTileThemeDataNullable({
    this.titleStyle,
    this.subtitleStyle,
    this.traillingStyle,
  });
}

class NomoVerticalListTileThemeOverride extends InheritedWidget {
  final NomoVerticalListTileThemeDataNullable data;
  const NomoVerticalListTileThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoVerticalListTileThemeDataNullable of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<
        NomoVerticalListTileThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoVerticalListTileThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoVerticalListTileThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoVerticalListTileThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoVerticalListTileThemeData getFromContext(
  BuildContext context,
  NomoVerticalListTile widget,
) {
  const globalColorTheme = NomoVerticalListTileColorData();
  const globalSizingTheme = NomoVerticalListTileSizingData();
  final globalConstants =
      NomoTheme.maybeOf(context)?.constants.verticalListTileTheme ??
          const NomoVerticalListTileConstants();
  final themeOverride = NomoVerticalListTileThemeOverride.maybeOf(context);
  final themeData = NomoVerticalListTileThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoVerticalListTileThemeData(
    titleStyle: widget.titleStyle ?? themeData.titleStyle,
    subtitleStyle: widget.subtitleStyle ?? themeData.subtitleStyle,
    traillingStyle: widget.traillingStyle ?? themeData.traillingStyle,
  );
}
