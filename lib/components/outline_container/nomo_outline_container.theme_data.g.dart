// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_outline_container.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoOutlineContainerColorDataNullable {
  final Color? foreground;
  final Color? background;
  final BoxShape? shape;
  final BoxBorder? border;
  const NomoOutlineContainerColorDataNullable({
    this.foreground,
    this.background,
    this.shape,
    this.border,
  });
}

class NomoOutlineContainerColorData
    implements NomoOutlineContainerColorDataNullable {
  @override
  final Color foreground;
  @override
  final Color background;
  @override
  final BoxShape shape;
  @override
  final BoxBorder border;
  const NomoOutlineContainerColorData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.shape = BoxShape.rectangle,
    this.border = const Border.fromBorderSide(BorderSide.none),
  });
  static NomoOutlineContainerColorData lerp(NomoOutlineContainerColorData a,
      NomoOutlineContainerColorData b, double t) {
    return NomoOutlineContainerColorData(
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      shape: t < 0.5 ? a.shape : b.shape,
      border: BoxBorder.lerp(a.border, b.border, t)!,
    );
  }

  static NomoOutlineContainerColorData overrideWith(
      NomoOutlineContainerColorData base,
      [NomoOutlineContainerColorDataNullable? override]) {
    return NomoOutlineContainerColorData(
      foreground: override?.foreground ?? base.foreground,
      background: override?.background ?? base.background,
      shape: override?.shape ?? base.shape,
      border: override?.border ?? base.border,
    );
  }
}

class NomoOutlineContainerSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final double? spacing;
  const NomoOutlineContainerSizingDataNullable({
    this.padding,
    this.spacing,
  });
}

class NomoOutlineContainerSizingData
    implements NomoOutlineContainerSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double spacing;
  const NomoOutlineContainerSizingData({
    this.padding = const EdgeInsets.all(16),
    this.spacing = 16.0,
  });
  static NomoOutlineContainerSizingData lerp(NomoOutlineContainerSizingData a,
      NomoOutlineContainerSizingData b, double t) {
    return NomoOutlineContainerSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
    );
  }

  static NomoOutlineContainerSizingData overrideWith(
      NomoOutlineContainerSizingData base,
      [NomoOutlineContainerSizingDataNullable? override]) {
    return NomoOutlineContainerSizingData(
      padding: override?.padding ?? base.padding,
      spacing: override?.spacing ?? base.spacing,
    );
  }
}

class NomoOutlineContainerConstantsNullable {
  const NomoOutlineContainerConstantsNullable();
}

class NomoOutlineContainerConstants
    implements NomoOutlineContainerConstantsNullable {
  const NomoOutlineContainerConstants();
}

class NomoOutlineContainerThemeData
    implements
        NomoOutlineContainerColorData,
        NomoOutlineContainerSizingData,
        NomoOutlineContainerConstants {
  @override
  final Color foreground;
  @override
  final Color background;
  @override
  final BoxShape shape;
  @override
  final BoxBorder border;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double spacing;
  const NomoOutlineContainerThemeData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.shape = BoxShape.rectangle,
    this.border = const Border.fromBorderSide(BorderSide.none),
    this.padding = const EdgeInsets.all(16),
    this.spacing = 16.0,
  });
  factory NomoOutlineContainerThemeData.from(
    NomoOutlineContainerColorData colors,
    NomoOutlineContainerSizingData sizing,
    NomoOutlineContainerConstants constants,
  ) {
    return NomoOutlineContainerThemeData(
      foreground: colors.foreground,
      background: colors.background,
      shape: colors.shape,
      border: colors.border,
      padding: sizing.padding,
      spacing: sizing.spacing,
    );
  }
  NomoOutlineContainerThemeData copyWith(
      [NomoOutlineContainerThemeDataNullable? override]) {
    return NomoOutlineContainerThemeData(
      foreground: override?.foreground ?? foreground,
      background: override?.background ?? background,
      shape: override?.shape ?? shape,
      border: override?.border ?? border,
      padding: override?.padding ?? padding,
      spacing: override?.spacing ?? spacing,
    );
  }
}

class NomoOutlineContainerThemeDataNullable
    implements
        NomoOutlineContainerColorDataNullable,
        NomoOutlineContainerSizingDataNullable,
        NomoOutlineContainerConstantsNullable {
  @override
  final Color? foreground;
  @override
  final Color? background;
  @override
  final BoxShape? shape;
  @override
  final BoxBorder? border;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final double? spacing;
  const NomoOutlineContainerThemeDataNullable({
    this.foreground,
    this.background,
    this.shape,
    this.border,
    this.padding,
    this.spacing,
  });
}

class NomoOutlineContainerThemeOverride extends InheritedWidget {
  final NomoOutlineContainerThemeDataNullable data;
  const NomoOutlineContainerThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoOutlineContainerThemeDataNullable of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<
        NomoOutlineContainerThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoOutlineContainerThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoOutlineContainerThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoOutlineContainerThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoOutlineContainerThemeData getFromContext(
  BuildContext context,
  NomoOutlineContainer widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.outlineContainerColor ??
          const NomoOutlineContainerColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.outlineContainerSizing ??
          const NomoOutlineContainerSizingData();
  const globalConstants = NomoOutlineContainerConstants();
  final themeOverride = NomoOutlineContainerThemeOverride.maybeOf(context);
  final themeData = NomoOutlineContainerThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoOutlineContainerThemeData(
    foreground: widget.foreground ?? themeData.foreground,
    background: widget.background ?? themeData.background,
    shape: widget.shape ?? themeData.shape,
    border: widget.border ?? themeData.border,
    padding: widget.padding ?? themeData.padding,
    spacing: widget.spacing ?? themeData.spacing,
  );
}
