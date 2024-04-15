// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_sider.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoSiderColorDataNullable {
  final Color? backgroundColor;
  final Border? border;
  const NomoSiderColorDataNullable({
    this.backgroundColor,
    this.border,
  });
}

class NomoSiderColorData implements NomoSiderColorDataNullable {
  @override
  final Color backgroundColor;
  @override
  final Border border;
  const NomoSiderColorData({
    this.backgroundColor = primaryColor,
    this.border = const Border(right: BorderSide(color: Colors.black12)),
  });
  static NomoSiderColorData lerp(
      NomoSiderColorData a, NomoSiderColorData b, double t) {
    return NomoSiderColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      border: Border.lerp(a.border, b.border, t)!,
    );
  }

  static NomoSiderColorData overrideWith(NomoSiderColorData base,
      [NomoSiderColorDataNullable? override]) {
    return NomoSiderColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
      border: override?.border ?? base.border,
    );
  }
}

class NomoSiderSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final double? scrollPadding;
  final double? width;
  const NomoSiderSizingDataNullable({
    this.padding,
    this.scrollPadding,
    this.width,
  });
}

class NomoSiderSizingData implements NomoSiderSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double scrollPadding;
  @override
  final double width;
  const NomoSiderSizingData({
    this.padding = const EdgeInsets.all(16),
    this.scrollPadding = 4.0,
    this.width = 80,
  });
  static NomoSiderSizingData lerp(
      NomoSiderSizingData a, NomoSiderSizingData b, double t) {
    return NomoSiderSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      scrollPadding: lerpDouble(a.scrollPadding, b.scrollPadding, t)!,
      width: lerpDouble(a.width, b.width, t)!,
    );
  }

  static NomoSiderSizingData overrideWith(NomoSiderSizingData base,
      [NomoSiderSizingDataNullable? override]) {
    return NomoSiderSizingData(
      padding: override?.padding ?? base.padding,
      scrollPadding: override?.scrollPadding ?? base.scrollPadding,
      width: override?.width ?? base.width,
    );
  }
}

class NomoSiderConstantsNullable {
  const NomoSiderConstantsNullable();
}

class NomoSiderConstants implements NomoSiderConstantsNullable {
  const NomoSiderConstants();
}

class NomoSiderThemeData
    implements NomoSiderColorData, NomoSiderSizingData, NomoSiderConstants {
  @override
  final Color backgroundColor;
  @override
  final Border border;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final double scrollPadding;
  @override
  final double width;
  const NomoSiderThemeData({
    this.backgroundColor = primaryColor,
    this.border = const Border(right: BorderSide(color: Colors.black12)),
    this.padding = const EdgeInsets.all(16),
    this.scrollPadding = 4.0,
    this.width = 80,
  });
  factory NomoSiderThemeData.from(
    NomoSiderColorData colors,
    NomoSiderSizingData sizing,
    NomoSiderConstants constants,
  ) {
    return NomoSiderThemeData(
      backgroundColor: colors.backgroundColor,
      border: colors.border,
      padding: sizing.padding,
      scrollPadding: sizing.scrollPadding,
      width: sizing.width,
    );
  }
  NomoSiderThemeData copyWith([NomoSiderThemeDataNullable? override]) {
    return NomoSiderThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      border: override?.border ?? border,
      padding: override?.padding ?? padding,
      scrollPadding: override?.scrollPadding ?? scrollPadding,
      width: override?.width ?? width,
    );
  }
}

class NomoSiderThemeDataNullable
    implements
        NomoSiderColorDataNullable,
        NomoSiderSizingDataNullable,
        NomoSiderConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final Border? border;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final double? scrollPadding;
  @override
  final double? width;
  const NomoSiderThemeDataNullable({
    this.backgroundColor,
    this.border,
    this.padding,
    this.scrollPadding,
    this.width,
  });
}

class NomoSiderThemeOverride extends InheritedWidget {
  final NomoSiderThemeDataNullable data;
  const NomoSiderThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoSiderThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoSiderThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoSiderThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoSiderThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoSiderThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoSiderThemeData getFromContext(
  BuildContext context,
  NomoSider widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.siderColor ??
          const NomoSiderColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.siderSizing ??
          const NomoSiderSizingData();
  const globalConstants = NomoSiderConstants();
  final themeOverride = NomoSiderThemeOverride.maybeOf(context);
  final themeData = NomoSiderThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoSiderThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    border: widget.border ?? themeData.border,
    padding: widget.padding ?? themeData.padding,
    scrollPadding: widget.scrollPadding ?? themeData.scrollPadding,
    width: widget.width ?? themeData.width,
  );
}
