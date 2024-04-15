// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_notification.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoNotificationColorDataNullable {
  const NomoNotificationColorDataNullable();
}

class NomoNotificationColorData implements NomoNotificationColorDataNullable {
  const NomoNotificationColorData();
  static NomoNotificationColorData lerp(
      NomoNotificationColorData a, NomoNotificationColorData b, double t) {
    return const NomoNotificationColorData();
  }

  static NomoNotificationColorData overrideWith(NomoNotificationColorData base,
      [NomoNotificationColorDataNullable? override]) {
    return NomoNotificationColorData();
  }
}

class NomoNotificationSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final double? spacing;
  final double? maxWidth;
  const NomoNotificationSizingDataNullable({
    this.padding,
    this.borderRadius,
    this.spacing,
    this.maxWidth,
  });
}

class NomoNotificationSizingData implements NomoNotificationSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final BorderRadius borderRadius;
  @override
  final double spacing;
  @override
  final double maxWidth;
  const NomoNotificationSizingData({
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.spacing = 16.0,
    this.maxWidth = 280.0,
  });
  static NomoNotificationSizingData lerp(
      NomoNotificationSizingData a, NomoNotificationSizingData b, double t) {
    return NomoNotificationSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
      maxWidth: lerpDouble(a.maxWidth, b.maxWidth, t)!,
    );
  }

  static NomoNotificationSizingData overrideWith(
      NomoNotificationSizingData base,
      [NomoNotificationSizingDataNullable? override]) {
    return NomoNotificationSizingData(
      padding: override?.padding ?? base.padding,
      borderRadius: override?.borderRadius ?? base.borderRadius,
      spacing: override?.spacing ?? base.spacing,
      maxWidth: override?.maxWidth ?? base.maxWidth,
    );
  }
}

class NomoNotificationConstantsNullable {
  final TextStyle? titleStyle;
  final TextStyle? subtitleStyle;
  const NomoNotificationConstantsNullable({
    this.titleStyle,
    this.subtitleStyle,
  });
}

class NomoNotificationConstants implements NomoNotificationConstantsNullable {
  @override
  final TextStyle titleStyle;
  @override
  final TextStyle subtitleStyle;
  const NomoNotificationConstants({
    this.titleStyle = const TextStyle(),
    this.subtitleStyle = const TextStyle(),
  });
}

class NomoNotificationThemeData
    implements
        NomoNotificationColorData,
        NomoNotificationSizingData,
        NomoNotificationConstants {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final BorderRadius borderRadius;
  @override
  final double spacing;
  @override
  final double maxWidth;
  @override
  final TextStyle titleStyle;
  @override
  final TextStyle subtitleStyle;
  const NomoNotificationThemeData({
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.spacing = 16.0,
    this.maxWidth = 280.0,
    this.titleStyle = const TextStyle(),
    this.subtitleStyle = const TextStyle(),
  });
  factory NomoNotificationThemeData.from(
    NomoNotificationColorData colors,
    NomoNotificationSizingData sizing,
    NomoNotificationConstants constants,
  ) {
    return NomoNotificationThemeData(
      padding: sizing.padding,
      borderRadius: sizing.borderRadius,
      spacing: sizing.spacing,
      maxWidth: sizing.maxWidth,
      titleStyle: constants.titleStyle,
      subtitleStyle: constants.subtitleStyle,
    );
  }
  NomoNotificationThemeData copyWith(
      [NomoNotificationThemeDataNullable? override]) {
    return NomoNotificationThemeData(
      padding: override?.padding ?? padding,
      borderRadius: override?.borderRadius ?? borderRadius,
      spacing: override?.spacing ?? spacing,
      maxWidth: override?.maxWidth ?? maxWidth,
      titleStyle: override?.titleStyle ?? titleStyle,
      subtitleStyle: override?.subtitleStyle ?? subtitleStyle,
    );
  }
}

class NomoNotificationThemeDataNullable
    implements
        NomoNotificationColorDataNullable,
        NomoNotificationSizingDataNullable,
        NomoNotificationConstantsNullable {
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final BorderRadius? borderRadius;
  @override
  final double? spacing;
  @override
  final double? maxWidth;
  @override
  final TextStyle? titleStyle;
  @override
  final TextStyle? subtitleStyle;
  const NomoNotificationThemeDataNullable({
    this.padding,
    this.borderRadius,
    this.spacing,
    this.maxWidth,
    this.titleStyle,
    this.subtitleStyle,
  });
}

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
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.notificationSizing ??
          const NomoNotificationSizingData();
  final globalConstants =
      NomoTheme.maybeOf(context)?.constants.notificationTheme ??
          const NomoNotificationConstants();
  final themeOverride = NomoNotificationThemeOverride.maybeOf(context);
  final themeData = NomoNotificationThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoNotificationThemeData(
    padding: widget.padding ?? themeData.padding,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    spacing: widget.spacing ?? themeData.spacing,
    maxWidth: widget.maxWidth ?? themeData.maxWidth,
    titleStyle: widget.titleStyle ?? themeData.titleStyle,
    subtitleStyle: widget.subtitleStyle ?? themeData.subtitleStyle,
  );
}
