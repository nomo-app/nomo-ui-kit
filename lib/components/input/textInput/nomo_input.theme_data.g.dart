// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_input.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoInputColorDataNullable {
  final Color? background;
  final Color? errorColor;
  final BorderRadiusGeometry? borderRadius;
  final Border? border;
  final Border? selectedBorder;
  final Border? errorBorder;
  final Border? selectedErrorBorder;
  final EdgeInsets? margin;
  const NomoInputColorDataNullable({
    this.background,
    this.errorColor,
    this.borderRadius,
    this.border,
    this.selectedBorder,
    this.errorBorder,
    this.selectedErrorBorder,
    this.margin,
  });
}

class NomoInputColorData implements NomoInputColorDataNullable {
  @override
  final Color background;
  @override
  final Color errorColor;
  @override
  final BorderRadiusGeometry borderRadius;
  @override
  final Border border;
  @override
  final Border selectedBorder;
  @override
  final Border errorBorder;
  @override
  final Border selectedErrorBorder;
  @override
  final EdgeInsets margin;
  const NomoInputColorData({
    this.background = Colors.white,
    this.errorColor = Colors.redAccent,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.border = const Border.fromBorderSide(
        BorderSide(color: Colors.transparent, width: 2)),
    this.selectedBorder =
        const Border.fromBorderSide(BorderSide(color: primaryColor, width: 2)),
    this.errorBorder =
        const Border.fromBorderSide(BorderSide(color: Colors.red, width: 2)),
    this.selectedErrorBorder = const Border.fromBorderSide(
        BorderSide(color: Colors.redAccent, width: 2)),
    this.margin = EdgeInsets.zero,
  });
  static NomoInputColorData lerp(
      NomoInputColorData a, NomoInputColorData b, double t) {
    return NomoInputColorData(
      background: Color.lerp(a.background, b.background, t)!,
      errorColor: Color.lerp(a.errorColor, b.errorColor, t)!,
      borderRadius:
          BorderRadiusGeometry.lerp(a.borderRadius, b.borderRadius, t)!,
      border: Border.lerp(a.border, b.border, t)!,
      selectedBorder: Border.lerp(a.selectedBorder, b.selectedBorder, t)!,
      errorBorder: Border.lerp(a.errorBorder, b.errorBorder, t)!,
      selectedErrorBorder:
          Border.lerp(a.selectedErrorBorder, b.selectedErrorBorder, t)!,
      margin: EdgeInsets.lerp(a.margin, b.margin, t)!,
    );
  }

  static NomoInputColorData overrideWith(NomoInputColorData base,
      [NomoInputColorDataNullable? override]) {
    return NomoInputColorData(
      background: override?.background ?? base.background,
      errorColor: override?.errorColor ?? base.errorColor,
      borderRadius: override?.borderRadius ?? base.borderRadius,
      border: override?.border ?? base.border,
      selectedBorder: override?.selectedBorder ?? base.selectedBorder,
      errorBorder: override?.errorBorder ?? base.errorBorder,
      selectedErrorBorder:
          override?.selectedErrorBorder ?? base.selectedErrorBorder,
      margin: override?.margin ?? base.margin,
    );
  }
}

class NomoInputSizingDataNullable {
  final EdgeInsets? padding;
  final double? textSpacing;
  const NomoInputSizingDataNullable({
    this.padding,
    this.textSpacing,
  });
}

class NomoInputSizingData implements NomoInputSizingDataNullable {
  @override
  final EdgeInsets padding;
  @override
  final double textSpacing;
  const NomoInputSizingData({
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.textSpacing = 8.0,
  });
  static NomoInputSizingData lerp(
      NomoInputSizingData a, NomoInputSizingData b, double t) {
    return NomoInputSizingData(
      padding: EdgeInsets.lerp(a.padding, b.padding, t)!,
      textSpacing: lerpDouble(a.textSpacing, b.textSpacing, t)!,
    );
  }

  static NomoInputSizingData overrideWith(NomoInputSizingData base,
      [NomoInputSizingDataNullable? override]) {
    return NomoInputSizingData(
      padding: override?.padding ?? base.padding,
      textSpacing: override?.textSpacing ?? base.textSpacing,
    );
  }
}

class NomoInputConstantsNullable {
  final Duration? duration;
  final Cubic? curve;
  final double? titleSpacing;
  const NomoInputConstantsNullable({
    this.duration,
    this.curve,
    this.titleSpacing,
  });
}

class NomoInputConstants implements NomoInputConstantsNullable {
  @override
  final Duration duration;
  @override
  final Cubic curve;
  @override
  final double titleSpacing;
  const NomoInputConstants({
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.easeInOut,
    this.titleSpacing = 2.0,
  });
}

class NomoInputThemeData
    implements NomoInputColorData, NomoInputSizingData, NomoInputConstants {
  @override
  final Color background;
  @override
  final Color errorColor;
  @override
  final BorderRadiusGeometry borderRadius;
  @override
  final Border border;
  @override
  final Border selectedBorder;
  @override
  final Border errorBorder;
  @override
  final Border selectedErrorBorder;
  @override
  final EdgeInsets margin;
  @override
  final EdgeInsets padding;
  @override
  final double textSpacing;
  @override
  final Duration duration;
  @override
  final Cubic curve;
  @override
  final double titleSpacing;
  const NomoInputThemeData({
    this.background = Colors.white,
    this.errorColor = Colors.redAccent,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    this.border = const Border.fromBorderSide(
        BorderSide(color: Colors.transparent, width: 2)),
    this.selectedBorder =
        const Border.fromBorderSide(BorderSide(color: primaryColor, width: 2)),
    this.errorBorder =
        const Border.fromBorderSide(BorderSide(color: Colors.red, width: 2)),
    this.selectedErrorBorder = const Border.fromBorderSide(
        BorderSide(color: Colors.redAccent, width: 2)),
    this.margin = EdgeInsets.zero,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    this.textSpacing = 8.0,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.easeInOut,
    this.titleSpacing = 2.0,
  });
  factory NomoInputThemeData.from(
    NomoInputColorData colors,
    NomoInputSizingData sizing,
    NomoInputConstants constants,
  ) {
    return NomoInputThemeData(
      background: colors.background,
      errorColor: colors.errorColor,
      borderRadius: colors.borderRadius,
      border: colors.border,
      selectedBorder: colors.selectedBorder,
      errorBorder: colors.errorBorder,
      selectedErrorBorder: colors.selectedErrorBorder,
      margin: colors.margin,
      padding: sizing.padding,
      textSpacing: sizing.textSpacing,
      duration: constants.duration,
      curve: constants.curve,
      titleSpacing: constants.titleSpacing,
    );
  }
  NomoInputThemeData copyWith([NomoInputThemeDataNullable? override]) {
    return NomoInputThemeData(
      background: override?.background ?? background,
      errorColor: override?.errorColor ?? errorColor,
      borderRadius: override?.borderRadius ?? borderRadius,
      border: override?.border ?? border,
      selectedBorder: override?.selectedBorder ?? selectedBorder,
      errorBorder: override?.errorBorder ?? errorBorder,
      selectedErrorBorder: override?.selectedErrorBorder ?? selectedErrorBorder,
      margin: override?.margin ?? margin,
      padding: override?.padding ?? padding,
      textSpacing: override?.textSpacing ?? textSpacing,
      duration: override?.duration ?? duration,
      curve: override?.curve ?? curve,
      titleSpacing: override?.titleSpacing ?? titleSpacing,
    );
  }
}

class NomoInputThemeDataNullable
    implements
        NomoInputColorDataNullable,
        NomoInputSizingDataNullable,
        NomoInputConstantsNullable {
  @override
  final Color? background;
  @override
  final Color? errorColor;
  @override
  final BorderRadiusGeometry? borderRadius;
  @override
  final Border? border;
  @override
  final Border? selectedBorder;
  @override
  final Border? errorBorder;
  @override
  final Border? selectedErrorBorder;
  @override
  final EdgeInsets? margin;
  @override
  final EdgeInsets? padding;
  @override
  final double? textSpacing;
  @override
  final Duration? duration;
  @override
  final Cubic? curve;
  @override
  final double? titleSpacing;
  const NomoInputThemeDataNullable({
    this.background,
    this.errorColor,
    this.borderRadius,
    this.border,
    this.selectedBorder,
    this.errorBorder,
    this.selectedErrorBorder,
    this.margin,
    this.padding,
    this.textSpacing,
    this.duration,
    this.curve,
    this.titleSpacing,
  });
}

class NomoInputThemeOverride extends InheritedWidget {
  final NomoInputThemeDataNullable data;
  const NomoInputThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoInputThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoInputThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoInputThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoInputThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoInputThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoInputThemeData getFromContext(
  BuildContext context,
  NomoInput widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.inputColor ??
          const NomoInputColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.inputSizing ??
          const NomoInputSizingData();
  final globalConstants = NomoTheme.maybeOf(context)?.constants.inputTheme ??
      const NomoInputConstants();
  final themeOverride = NomoInputThemeOverride.maybeOf(context);
  final themeData = NomoInputThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoInputThemeData(
    background: widget.background ?? themeData.background,
    errorColor: widget.errorColor ?? themeData.errorColor,
    borderRadius: widget.borderRadius ?? themeData.borderRadius,
    border: widget.border ?? themeData.border,
    selectedBorder: widget.selectedBorder ?? themeData.selectedBorder,
    errorBorder: widget.errorBorder ?? themeData.errorBorder,
    selectedErrorBorder:
        widget.selectedErrorBorder ?? themeData.selectedErrorBorder,
    margin: widget.margin ?? themeData.margin,
    padding: widget.padding ?? themeData.padding,
    textSpacing: widget.textSpacing ?? themeData.textSpacing,
    duration: widget.duration ?? themeData.duration,
    curve: widget.curve ?? themeData.curve,
    titleSpacing: widget.titleSpacing ?? themeData.titleSpacing,
  );
}
