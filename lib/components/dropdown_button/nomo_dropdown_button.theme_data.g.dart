// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_dropdown_button.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoDropDownButtonColorDataNullable {
  const NomoDropDownButtonColorDataNullable();
}

class NomoDropDownButtonColorData
    implements NomoDropDownButtonColorDataNullable {
  const NomoDropDownButtonColorData();
  static NomoDropDownButtonColorData lerp(
      NomoDropDownButtonColorData a, NomoDropDownButtonColorData b, double t) {
    return const NomoDropDownButtonColorData();
  }

  static NomoDropDownButtonColorData overrideWith(
      NomoDropDownButtonColorData base,
      [NomoDropDownButtonColorDataNullable? override]) {
    return NomoDropDownButtonColorData();
  }
}

class NomoDropDownButtonSizingDataNullable {
  const NomoDropDownButtonSizingDataNullable();
}

class NomoDropDownButtonSizingData
    implements NomoDropDownButtonSizingDataNullable {
  const NomoDropDownButtonSizingData();
  static NomoDropDownButtonSizingData lerp(NomoDropDownButtonSizingData a,
      NomoDropDownButtonSizingData b, double t) {
    return const NomoDropDownButtonSizingData();
  }

  static NomoDropDownButtonSizingData overrideWith(
      NomoDropDownButtonSizingData base,
      [NomoDropDownButtonSizingDataNullable? override]) {
    return NomoDropDownButtonSizingData();
  }
}

class NomoDropDownButtonConstantsNullable {
  const NomoDropDownButtonConstantsNullable();
}

class NomoDropDownButtonConstants
    implements NomoDropDownButtonConstantsNullable {
  const NomoDropDownButtonConstants();
}

class NomoDropDownButtonThemeData
    implements
        NomoDropDownButtonColorData,
        NomoDropDownButtonSizingData,
        NomoDropDownButtonConstants {
  const NomoDropDownButtonThemeData();
  factory NomoDropDownButtonThemeData.from(
    NomoDropDownButtonColorData colors,
    NomoDropDownButtonSizingData sizing,
    NomoDropDownButtonConstants constants,
  ) {
    return NomoDropDownButtonThemeData();
  }
  NomoDropDownButtonThemeData copyWith(
      [NomoDropDownButtonThemeDataNullable? override]) {
    return NomoDropDownButtonThemeData();
  }
}

class NomoDropDownButtonThemeDataNullable
    implements
        NomoDropDownButtonColorDataNullable,
        NomoDropDownButtonSizingDataNullable,
        NomoDropDownButtonConstantsNullable {}

class NomoDropDownButtonThemeOverride extends InheritedWidget {
  final NomoDropDownButtonThemeDataNullable data;
  const NomoDropDownButtonThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoDropDownButtonThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoDropDownButtonThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoDropDownButtonThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoDropDownButtonThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoDropDownButtonThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoDropDownButtonThemeData getFromContext(
  BuildContext context,
  NomoDropDownButton widget,
) {
  const globalColorTheme = NomoDropDownButtonColorData();
  const globalSizingTheme = NomoDropDownButtonSizingData();
  const globalConstants = NomoDropDownButtonConstants();
  final themeOverride = NomoDropDownButtonThemeOverride.maybeOf(context);
  final themeData = NomoDropDownButtonThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoDropDownButtonThemeData();
}
