// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_text_button.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoTextButtonColorDataNullable {
  final Color? foregroundColor;
  final BorderRadiusGeometry? borderRadius;
  const NomoTextButtonColorDataNullable({
    this.foregroundColor,
    this.borderRadius,
  });
}

class NomoTextButtonColorData implements NomoTextButtonColorDataNullable {
  @override
  final Color foregroundColor;
  @override
  final BorderRadiusGeometry borderRadius;
  const NomoTextButtonColorData({
    this.foregroundColor = Colors.black87,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
  });
  static NomoTextButtonColorData lerp(
      NomoTextButtonColorData a, NomoTextButtonColorData b, double t) {
    return NomoTextButtonColorData(
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
    );
  }

  static NomoTextButtonColorData overrideWith(NomoTextButtonColorData base,
      [NomoTextButtonColorDataNullable? override]) {
    return NomoTextButtonColorData(
      foregroundColor: override?.foregroundColor ?? base.foregroundColor,
      borderRadius: override?.borderRadius ?? base.borderRadius,
    );
  }
}

class NomoTextButtonSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  const NomoTextButtonSizingDataNullable({
    this.padding,
  });
}

class NomoTextButtonSizingData implements NomoTextButtonSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  const NomoTextButtonSizingData({
    this.padding = const EdgeInsets.all(16),
  });
  static NomoTextButtonSizingData lerp(
      NomoTextButtonSizingData a, NomoTextButtonSizingData b, double t) {
    return NomoTextButtonSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
    );
  }

  static NomoTextButtonSizingData overrideWith(NomoTextButtonSizingData base,
      [NomoTextButtonSizingDataNullable? override]) {
    return NomoTextButtonSizingData(
      padding: override?.padding ?? base.padding,
    );
  }
}

class NomoTextButtonConstantsNullable {
  const NomoTextButtonConstantsNullable();
}

class NomoTextButtonConstants implements NomoTextButtonConstantsNullable {
  const NomoTextButtonConstants();
}

class NomoTextButtonThemeData
    implements
        NomoTextButtonColorData,
        NomoTextButtonSizingData,
        NomoTextButtonConstants {
  @override
  final Color foregroundColor;
  @override
  final BorderRadiusGeometry borderRadius;
  @override
  final EdgeInsetsGeometry padding;
  const NomoTextButtonThemeData({
    this.foregroundColor = Colors.black87,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.padding = const EdgeInsets.all(16),
  });
  factory NomoTextButtonThemeData.from(
    NomoTextButtonColorData colors,
    NomoTextButtonSizingData sizing,
    NomoTextButtonConstants constants,
  ) {
    return NomoTextButtonThemeData(
      foregroundColor: colors.foregroundColor,
      borderRadius: colors.borderRadius,
      padding: sizing.padding,
    );
  }
  NomoTextButtonThemeData copyWith(
      [NomoTextButtonThemeDataNullable? override]) {
    return NomoTextButtonThemeData(
      foregroundColor: override?.foregroundColor ?? foregroundColor,
      borderRadius: override?.borderRadius ?? borderRadius,
      padding: override?.padding ?? padding,
    );
  }
}

class NomoTextButtonThemeDataNullable
    implements
        NomoTextButtonColorDataNullable,
        NomoTextButtonSizingDataNullable,
        NomoTextButtonConstantsNullable {
  @override
  final Color? foregroundColor;
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
  final EdgeInsetsGeometry? padding;
  const NomoTextButtonThemeDataNullable({
    this.foregroundColor,
    this.borderRadius,
    this.padding,
  });
}

class NomoTextButtonThemeOverride extends InheritedWidget {
  final NomoTextButtonThemeDataNullable data;
  const NomoTextButtonThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoTextButtonThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoTextButtonThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoTextButtonThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoTextButtonThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoTextButtonThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoTextButtonThemeData getFromContext(
  BuildContext context,
  NomoTextButton widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.textButtonColor ??
          const NomoTextButtonColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.textButtonSizing ??
          const NomoTextButtonSizingData();
  const globalConstants = NomoTextButtonConstants();
  final themeOverride = NomoTextButtonThemeOverride.maybeOf(context);
  final themeData = NomoTextButtonThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoTextButtonThemeData(
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    padding: widget.padding ?? themeData.padding,
  );
}
