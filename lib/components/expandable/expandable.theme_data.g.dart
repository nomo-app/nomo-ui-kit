// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expandable.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class ExpandableColorDataNullable {
  final EdgeInsetsGeometry? titlePadding;
  final EdgeInsetsGeometry? childrenPadding;
  final BorderRadius? borderRadius;
  final Color? highlightColor;
  final Color? focusColor;
  final Color? splashColor;
  final Color? hoverColor;
  const ExpandableColorDataNullable({
    this.titlePadding,
    this.childrenPadding,
    this.borderRadius,
    this.highlightColor,
    this.focusColor,
    this.splashColor,
    this.hoverColor,
  });
}

class ExpandableColorData implements ExpandableColorDataNullable {
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry childrenPadding;
  final BorderRadius borderRadius;
  final Color? highlightColor;
  final Color? focusColor;
  final Color? splashColor;
  final Color? hoverColor;
  const ExpandableColorData({
    this.titlePadding =
        const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
    this.childrenPadding = const EdgeInsets.symmetric(vertical: 4.0),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.highlightColor = null,
    this.focusColor = null,
    this.splashColor = null,
    this.hoverColor = null,
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
}

class ExpandableThemeData implements ExpandableColorData, ExpandableSizingData {
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry childrenPadding;
  final BorderRadius borderRadius;
  final Color? highlightColor;
  final Color? focusColor;
  final Color? splashColor;
  final Color? hoverColor;
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
    this.iconSize = 28.0,
  });
  factory ExpandableThemeData.from(
    ExpandableColorData colors,
    ExpandableSizingData sizing,
  ) {
    return ExpandableThemeData(
      titlePadding: colors.titlePadding,
      childrenPadding: colors.childrenPadding,
      borderRadius: colors.borderRadius,
      highlightColor: colors.highlightColor,
      focusColor: colors.focusColor,
      splashColor: colors.splashColor,
      hoverColor: colors.hoverColor,
      iconSize: sizing.iconSize,
    );
  }
  ExpandableThemeData override([ExpandableThemeDataNullable? override]) {
    return ExpandableThemeData(
      titlePadding: override?.titlePadding ?? titlePadding,
      childrenPadding: override?.childrenPadding ?? childrenPadding,
      borderRadius: override?.borderRadius ?? borderRadius,
      highlightColor: override?.highlightColor ?? highlightColor,
      focusColor: override?.focusColor ?? focusColor,
      splashColor: override?.splashColor ?? splashColor,
      hoverColor: override?.hoverColor ?? hoverColor,
      iconSize: override?.iconSize ?? iconSize,
    );
  }
}

class ExpandableThemeDataNullable
    implements ExpandableColorDataNullable, ExpandableSizingDataNullable {
  final EdgeInsetsGeometry? titlePadding;
  final EdgeInsetsGeometry? childrenPadding;
  final BorderRadius? borderRadius;
  final Color? highlightColor;
  final Color? focusColor;
  final Color? splashColor;
  final Color? hoverColor;
  final double? iconSize;
  const ExpandableThemeDataNullable({
    this.titlePadding,
    this.childrenPadding,
    this.borderRadius,
    this.highlightColor,
    this.focusColor,
    this.splashColor,
    this.hoverColor,
    this.iconSize,
  });
}

class ExpandableThemeOverride extends InheritedWidget {
  final ExpandableThemeDataNullable data;
  const ExpandableThemeOverride({
    required this.data,
    required super.child,
  });
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
      NomoTheme.maybeOf(context)?.componentColors.expandableTheme ??
          ExpandableColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.expandableTheme ??
          ExpandableSizingData();
  final themeOverride = ExpandableThemeOverride.maybeOf(context);
  final themeData =
      ExpandableThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return ExpandableThemeData(
    titlePadding: widget.titlePadding ?? themeData.titlePadding,
    childrenPadding: widget.childrenPadding ?? themeData.childrenPadding,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    highlightColor: widget.highlightColor ?? themeData.highlightColor,
    focusColor: widget.focusColor ?? themeData.focusColor,
    splashColor: widget.splashColor ?? themeData.splashColor,
    hoverColor: widget.hoverColor ?? themeData.hoverColor,
    iconSize: widget.iconSize ?? themeData.iconSize,
  );
}
