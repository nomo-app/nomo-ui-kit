// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_notification.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoNotificationColorDataNullable {
  const NomoNotificationColorDataNullable();
}

class NomoNotificationColorData implements NomoNotificationColorDataNullable {
  const NomoNotificationColorData();
  static NomoNotificationColorData lerp(
      NomoNotificationColorData a, NomoNotificationColorData b, double t) {
    return const NomoNotificationColorData();
  }
}

class NomoNotificationSizingDataNullable {
  const NomoNotificationSizingDataNullable();
}

class NomoNotificationSizingData implements NomoNotificationSizingDataNullable {
  const NomoNotificationSizingData();
  static NomoNotificationSizingData lerp(
      NomoNotificationSizingData a, NomoNotificationSizingData b, double t) {
    return const NomoNotificationSizingData();
  }
}

class NomoNotificationConstantsNullable {
  const NomoNotificationConstantsNullable();
}

class NomoNotificationConstants implements NomoNotificationConstantsNullable {
  const NomoNotificationConstants();
}

class NomoNotificationThemeData
    implements
        NomoNotificationColorData,
        NomoNotificationSizingData,
        NomoNotificationConstants {
  const NomoNotificationThemeData();
  factory NomoNotificationThemeData.from(
    NomoNotificationColorData colors,
    NomoNotificationSizingData sizing,
    NomoNotificationConstants constants,
  ) {
    return NomoNotificationThemeData();
  }
  NomoNotificationThemeData copyWith(
      [NomoNotificationThemeDataNullable? override]) {
    return NomoNotificationThemeData();
  }
}

class NomoNotificationThemeDataNullable
    implements
        NomoNotificationColorDataNullable,
        NomoNotificationSizingDataNullable,
        NomoNotificationConstantsNullable {}

class NomoNotificationThemeOverride extends InheritedWidget {
  final NomoNotificationThemeDataNullable data;
  const NomoNotificationThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoNotificationThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoNotificationThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoNotificationThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoNotificationThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoNotificationThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoNotificationThemeData getFromContext(
  BuildContext context,
  NomoNotification widget,
) {
  const globalColorTheme = NomoNotificationColorData();
  const globalSizingTheme = NomoNotificationSizingData();
  const globalConstants = NomoNotificationConstants();
  final themeOverride = NomoNotificationThemeOverride.maybeOf(context);
  final themeData = NomoNotificationThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoNotificationThemeData();
}
