// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expandable.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class ExpandableColorDataNullable {
  final EdgeInsetsGeometry? titlePadding;
  final EdgeInsetsGeometry? childrenPadding;
  final BorderRadius? borderRadius;
  final Color? highlightColor;
  final Color? focusColor;
  final Color? splashColor;
  final Color? hoverColor;
  final Color? iconColor;
  const ExpandableColorDataNullable({
    this.titlePadding,
    this.childrenPadding,
    this.borderRadius,
    this.highlightColor,
    this.focusColor,
    this.splashColor,
    this.hoverColor,
    this.iconColor,
  });
}

class ExpandableColorData implements ExpandableColorDataNullable {
  @override
  final EdgeInsetsGeometry titlePadding;
  @override
  final EdgeInsetsGeometry childrenPadding;
  @override
  final BorderRadius borderRadius;
  @override
  final Color? highlightColor;
  @override
  final Color? focusColor;
  @override
  final Color? splashColor;
  @override
  final Color? hoverColor;
  @override
  final Color? iconColor;
  const ExpandableColorData({
    this.titlePadding =
        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
    this.childrenPadding = const EdgeInsets.symmetric(vertical: 4.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.highlightColor = null,
    this.focusColor = null,
    this.splashColor = null,
    this.hoverColor = null,
    this.iconColor = null,
  });
  static ExpandableColorData lerp(
      ExpandableColorData a, ExpandableColorData b, double t) {
    return ExpandableColorData(
      titlePadding: EdgeInsetsGeometry.lerp(a.titlePadding, b.titlePadding, t)!,
      childrenPadding:
          EdgeInsetsGeometry.lerp(a.childrenPadding, b.childrenPadding, t)!,
      borderRadius: BorderRadius.lerp(a.borderRadius, b.borderRadius, t)!,
      highlightColor: Color.lerp(a.highlightColor, b.highlightColor, t),
      focusColor: Color.lerp(a.focusColor, b.focusColor, t),
      splashColor: Color.lerp(a.splashColor, b.splashColor, t),
      hoverColor: Color.lerp(a.hoverColor, b.hoverColor, t),
      iconColor: Color.lerp(a.iconColor, b.iconColor, t),
    );
  }

  static ExpandableColorData overrideWith(ExpandableColorData base,
      [ExpandableColorDataNullable? override]) {
    return ExpandableColorData(
      titlePadding: override?.titlePadding ?? base.titlePadding,
      childrenPadding: override?.childrenPadding ?? base.childrenPadding,
      borderRadius: override?.borderRadius ?? base.borderRadius,
      highlightColor: override?.highlightColor ?? base.highlightColor,
      focusColor: override?.focusColor ?? base.focusColor,
      splashColor: override?.splashColor ?? base.splashColor,
      hoverColor: override?.hoverColor ?? base.hoverColor,
      iconColor: override?.iconColor ?? base.iconColor,
    );
  }
}

class ExpandableSizingDataNullable {
  final double? iconSize;
  const ExpandableSizingDataNullable({
    this.iconSize,
  });
}

class ExpandableSizingData implements ExpandableSizingDataNullable {
  @override
  final double iconSize;
  const ExpandableSizingData({
    this.iconSize = 28.0,
  });
  static ExpandableSizingData lerp(
      ExpandableSizingData a, ExpandableSizingData b, double t) {
    return ExpandableSizingData(
      iconSize: lerpDouble(a.iconSize, b.iconSize, t)!,
    );
  }

  static ExpandableSizingData overrideWith(ExpandableSizingData base,
      [ExpandableSizingDataNullable? override]) {
    return ExpandableSizingData(
      iconSize: override?.iconSize ?? base.iconSize,
    );
  }
}

class ExpandableConstantsNullable {
  const ExpandableConstantsNullable();
}

class ExpandableConstants implements ExpandableConstantsNullable {
  const ExpandableConstants();
}

class ExpandableThemeData
    implements ExpandableColorData, ExpandableSizingData, ExpandableConstants {
  @override
  final EdgeInsetsGeometry titlePadding;
  @override
  final EdgeInsetsGeometry childrenPadding;
  @override
  final BorderRadius borderRadius;
  @override
  final Color? highlightColor;
  @override
  final Color? focusColor;
  @override
  final Color? splashColor;
  @override
  final Color? hoverColor;
  @override
  final Color? iconColor;
  @override
  final double iconSize;
  const ExpandableThemeData({
    this.titlePadding =
        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
    this.childrenPadding = const EdgeInsets.symmetric(vertical: 4.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.highlightColor = null,
    this.focusColor = null,
    this.splashColor = null,
    this.hoverColor = null,
    this.iconColor = null,
    this.iconSize = 28.0,
  });
  factory ExpandableThemeData.from(
    ExpandableColorData colors,
    ExpandableSizingData sizing,
    ExpandableConstants constants,
  ) {
    return ExpandableThemeData(
      titlePadding: colors.titlePadding,
      childrenPadding: colors.childrenPadding,
      borderRadius: colors.borderRadius,
      highlightColor: colors.highlightColor,
      focusColor: colors.focusColor,
      splashColor: colors.splashColor,
      hoverColor: colors.hoverColor,
      iconColor: colors.iconColor,
      iconSize: sizing.iconSize,
    );
  }
  ExpandableThemeData copyWith([ExpandableThemeDataNullable? override]) {
    return ExpandableThemeData(
      titlePadding: override?.titlePadding ?? titlePadding,
      childrenPadding: override?.childrenPadding ?? childrenPadding,
      borderRadius: override?.borderRadius ?? borderRadius,
      highlightColor: override?.highlightColor ?? highlightColor,
      focusColor: override?.focusColor ?? focusColor,
      splashColor: override?.splashColor ?? splashColor,
      hoverColor: override?.hoverColor ?? hoverColor,
      iconColor: override?.iconColor ?? iconColor,
      iconSize: override?.iconSize ?? iconSize,
    );
  }
}

class ExpandableThemeDataNullable
    implements
        ExpandableColorDataNullable,
        ExpandableSizingDataNullable,
        ExpandableConstantsNullable {
  @override
  final EdgeInsetsGeometry? titlePadding;
  @override
  final EdgeInsetsGeometry? childrenPadding;
  @override
  final BorderRadius? borderRadius;
  @override
  final Color? highlightColor;
  @override
  final Color? focusColor;
  @override
  final Color? splashColor;
  @override
  final Color? hoverColor;
  @override
  final Color? iconColor;
  @override
  final double? iconSize;
  const ExpandableThemeDataNullable({
    this.titlePadding,
    this.childrenPadding,
    this.borderRadius,
    this.highlightColor,
    this.focusColor,
    this.splashColor,
    this.hoverColor,
    this.iconColor,
    this.iconSize,
  });
}

class ExpandableThemeOverride extends InheritedWidget {
  final ExpandableThemeDataNullable data;
  const ExpandableThemeOverride(
      {required this.data, required super.child, super.key});
  static ExpandableThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<ExpandableThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static ExpandableThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ExpandableThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(ExpandableThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

ExpandableThemeData getFromContext(
  BuildContext context,
  Expandable widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.expandableColor ??
          const ExpandableColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.expandableSizing ??
          const ExpandableSizingData();
  const globalConstants = ExpandableConstants();
  final themeOverride = ExpandableThemeOverride.maybeOf(context);
  final themeData = ExpandableThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return ExpandableThemeData(
    titlePadding: widget.titlePadding ?? themeData.titlePadding,
    childrenPadding: widget.childrenPadding ?? themeData.childrenPadding,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    highlightColor: widget.highlightColor ?? themeData.highlightColor,
    focusColor: widget.focusColor ?? themeData.focusColor,
    splashColor: widget.splashColor ?? themeData.splashColor,
    hoverColor: widget.hoverColor ?? themeData.hoverColor,
    iconColor: widget.iconColor ?? themeData.iconColor,
    iconSize: widget.iconSize ?? themeData.iconSize,
  );
}
