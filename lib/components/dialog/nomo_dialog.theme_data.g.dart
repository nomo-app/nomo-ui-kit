// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_dialog.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoDialogColorDataNullable {
  final Color? backgroundColor;
  const NomoDialogColorDataNullable({
    this.backgroundColor,
  });
}

class NomoDialogColorData implements NomoDialogColorDataNullable {
  @override
  final Color backgroundColor;
  const NomoDialogColorData({
    this.backgroundColor = Colors.white,
  });
  static NomoDialogColorData lerp(
      NomoDialogColorData a, NomoDialogColorData b, double t) {
    return NomoDialogColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
    );
  }

  static NomoDialogColorData overrideWith(NomoDialogColorData base,
      [NomoDialogColorDataNullable? override]) {
    return NomoDialogColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
    );
  }
}

class NomoDialogSizingDataNullable {
  final double? elevation;
  final Widget? contentSpacing;
  final double? widthRatio;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  const NomoDialogSizingDataNullable({
    this.elevation,
    this.contentSpacing,
    this.widthRatio,
    this.margin,
    this.padding,
    this.borderRadius,
  });
}

class NomoDialogSizingData implements NomoDialogSizingDataNullable {
  @override
  final double elevation;
  @override
  final Widget contentSpacing;
  @override
  final double widthRatio;
  @override
  final EdgeInsetsGeometry margin;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final BorderRadiusGeometry borderRadius;
  const NomoDialogSizingData({
    this.elevation = 1.0,
    this.contentSpacing = const SizedBox(height: 12),
    this.widthRatio = 0.75,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.all(12),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });
  static NomoDialogSizingData lerp(
      NomoDialogSizingData a, NomoDialogSizingData b, double t) {
    return NomoDialogSizingData(
      elevation: lerpDouble(a.elevation, b.elevation, t)!,
      contentSpacing: t < 0.5 ? a.contentSpacing : b.contentSpacing,
      widthRatio: lerpDouble(a.widthRatio, b.widthRatio, t)!,
      margin: EdgeInsetsGeometry.lerp(a.margin, b.margin, t)!,
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
    );
  }

  static NomoDialogSizingData overrideWith(NomoDialogSizingData base,
      [NomoDialogSizingDataNullable? override]) {
    return NomoDialogSizingData(
      elevation: override?.elevation ?? base.elevation,
      contentSpacing: override?.contentSpacing ?? base.contentSpacing,
      widthRatio: override?.widthRatio ?? base.widthRatio,
      margin: override?.margin ?? base.margin,
      padding: override?.padding ?? base.padding,
      borderRadius: override?.borderRadius ?? base.borderRadius,
    );
  }
}

class NomoDialogConstantsNullable {
  const NomoDialogConstantsNullable();
}

class NomoDialogConstants implements NomoDialogConstantsNullable {
  const NomoDialogConstants();
}

class NomoDialogThemeData
    implements NomoDialogColorData, NomoDialogSizingData, NomoDialogConstants {
  @override
  final Color backgroundColor;
  @override
  final double elevation;
  @override
  final Widget contentSpacing;
  @override
  final double widthRatio;
  @override
  final EdgeInsetsGeometry margin;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final BorderRadiusGeometry borderRadius;
  const NomoDialogThemeData({
    this.backgroundColor = Colors.white,
    this.elevation = 1.0,
    this.contentSpacing = const SizedBox(height: 12),
    this.widthRatio = 0.75,
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.all(12),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
  });
  factory NomoDialogThemeData.from(
    NomoDialogColorData colors,
    NomoDialogSizingData sizing,
    NomoDialogConstants constants,
  ) {
    return NomoDialogThemeData(
      backgroundColor: colors.backgroundColor,
      elevation: sizing.elevation,
      contentSpacing: sizing.contentSpacing,
      widthRatio: sizing.widthRatio,
      margin: sizing.margin,
      padding: sizing.padding,
      borderRadius: sizing.borderRadius,
    );
  }
  NomoDialogThemeData copyWith([NomoDialogThemeDataNullable? override]) {
    return NomoDialogThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      elevation: override?.elevation ?? elevation,
      contentSpacing: override?.contentSpacing ?? contentSpacing,
      widthRatio: override?.widthRatio ?? widthRatio,
      margin: override?.margin ?? margin,
      padding: override?.padding ?? padding,
      borderRadius: override?.borderRadius ?? borderRadius,
    );
  }
}

class NomoDialogThemeDataNullable
    implements
        NomoDialogColorDataNullable,
        NomoDialogSizingDataNullable,
        NomoDialogConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final double? elevation;
  @override
  final Widget? contentSpacing;
  @override
  final double? widthRatio;
  @override
  final EdgeInsetsGeometry? margin;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final BorderRadiusGeometry? borderRadius;
  const NomoDialogThemeDataNullable({
    this.backgroundColor,
    this.elevation,
    this.contentSpacing,
    this.widthRatio,
    this.margin,
    this.padding,
    this.borderRadius,
  });
}

class NomoDialogThemeOverride extends InheritedWidget {
  final NomoDialogThemeDataNullable data;
  const NomoDialogThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoDialogThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoDialogThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoDialogThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoDialogThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoDialogThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoDialogThemeData getFromContext(
  BuildContext context,
  NomoDialog widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.dialogColor ??
          const NomoDialogColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.dialogSizing ??
          const NomoDialogSizingData();
  const globalConstants = NomoDialogConstants();
  final themeOverride = NomoDialogThemeOverride.maybeOf(context);
  final themeData = NomoDialogThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoDialogThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    elevation: widget.elevation ?? themeData.elevation,
    contentSpacing: widget.contentSpacing ?? themeData.contentSpacing,
    widthRatio: widget.widthRatio ?? themeData.widthRatio,
    margin: widget.margin ?? themeData.margin,
    padding: widget.padding ?? themeData.padding,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
  );
}
