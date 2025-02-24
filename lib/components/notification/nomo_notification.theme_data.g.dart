// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_notification.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoNotificationColorDataNullable {
  final Color? backgroundColor;
  final Color? foregroundColor;
  const NomoNotificationColorDataNullable({
    this.backgroundColor,
    this.foregroundColor,
  });
}

class NomoNotificationColorData implements NomoNotificationColorDataNullable {
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  const NomoNotificationColorData({
    this.backgroundColor = null,
    this.foregroundColor = null,
  });
  static NomoNotificationColorData lerp(
      NomoNotificationColorData a, NomoNotificationColorData b, double t) {
    return NomoNotificationColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t),
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t),
    );
  }

  static NomoNotificationColorData overrideWith(NomoNotificationColorData base,
      [NomoNotificationColorDataNullable? override]) {
    return NomoNotificationColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      foregroundColor: override?.foregroundColor ?? base.foregroundColor,
    );
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
    this.maxWidth = double.infinity,
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
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final BorderRadius borderRadius;
  @override
  final double spacing;
  @override
  final double maxWidth;
  const NomoNotificationThemeData({
    this.backgroundColor = null,
    this.foregroundColor = null,
    this.padding = const EdgeInsets.all(16),
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.spacing = 16.0,
    this.maxWidth = double.infinity,
  });
  factory NomoNotificationThemeData.from(
    NomoNotificationColorData colors,
    NomoNotificationSizingData sizing,
    NomoNotificationConstants constants,
  ) {
    return NomoNotificationThemeData(
      backgroundColor: colors.backgroundColor,
      foregroundColor: colors.foregroundColor,
      padding: sizing.padding,
      borderRadius: sizing.borderRadius,
      spacing: sizing.spacing,
      maxWidth: sizing.maxWidth,
    );
  }
  NomoNotificationThemeData copyWith(
      [NomoNotificationThemeDataNullable? override]) {
    return NomoNotificationThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      foregroundColor: override?.foregroundColor ?? foregroundColor,
      padding: override?.padding ?? padding,
      borderRadius: override?.borderRadius ?? borderRadius,
      spacing: override?.spacing ?? spacing,
      maxWidth: override?.maxWidth ?? maxWidth,
    );
  }
}

class NomoNotificationThemeDataNullable
    implements
        NomoNotificationColorDataNullable,
        NomoNotificationSizingDataNullable,
        NomoNotificationConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final Color? foregroundColor;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final BorderRadius? borderRadius;
  @override
  final double? spacing;
  @override
  final double? maxWidth;
  const NomoNotificationThemeDataNullable({
    this.backgroundColor,
    this.foregroundColor,
    this.padding,
    this.borderRadius,
    this.spacing,
    this.maxWidth,
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
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.notificationColor ??
          const NomoNotificationColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.notificationSizing ??
          const NomoNotificationSizingData();
  const globalConstants = NomoNotificationConstants();
  final themeOverride = NomoNotificationThemeOverride.maybeOf(context);
  final themeData = NomoNotificationThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoNotificationThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    padding: widget.padding ?? themeData.padding,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    spacing: widget.spacing ?? themeData.spacing,
    maxWidth: widget.maxWidth ?? themeData.maxWidth,
  );
}
