// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_input.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoInputColorDataNullable {
  final Color? background;
  final Color? selectionColor;
  const NomoInputColorDataNullable({
    this.background,
    this.selectionColor,
  });
}

class NomoInputColorData implements NomoInputColorDataNullable {
  @override
  final Color background;
  @override
  final Color selectionColor;
  const NomoInputColorData({
    this.background = Colors.white,
    this.selectionColor = primaryColor,
  });
  static NomoInputColorData lerp(
      NomoInputColorData a, NomoInputColorData b, double t) {
    return NomoInputColorData(
      background: Color.lerp(a.background, b.background, t)!,
      selectionColor: Color.lerp(a.selectionColor, b.selectionColor, t)!,
    );
  }
}

class NomoInputSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  const NomoInputSizingDataNullable({
    this.padding,
  });
}

class NomoInputSizingData implements NomoInputSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  const NomoInputSizingData({
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });
  static NomoInputSizingData lerp(
      NomoInputSizingData a, NomoInputSizingData b, double t) {
    return NomoInputSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
    );
  }
}

class NomoInputThemeData implements NomoInputColorData, NomoInputSizingData {
  @override
  final Color background;
  @override
  final Color selectionColor;
  @override
  final EdgeInsetsGeometry padding;
  const NomoInputThemeData({
    this.background = Colors.white,
    this.selectionColor = primaryColor,
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });
  factory NomoInputThemeData.from(
    NomoInputColorData colors,
    NomoInputSizingData sizing,
  ) {
    return NomoInputThemeData(
      background: colors.background,
      selectionColor: colors.selectionColor,
      padding: sizing.padding,
    );
  }
  NomoInputThemeData copyWith([NomoInputThemeDataNullable? override]) {
    return NomoInputThemeData(
      background: override?.background ?? background,
      selectionColor: override?.selectionColor ?? selectionColor,
      padding: override?.padding ?? padding,
    );
  }
}

class NomoInputThemeDataNullable
    implements NomoInputColorDataNullable, NomoInputSizingDataNullable {
  @override
  final Color? background;
  @override
  final Color? selectionColor;
  @override
  final EdgeInsetsGeometry? padding;
  const NomoInputThemeDataNullable({
    this.background,
    this.selectionColor,
    this.padding,
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
      NomoTheme.maybeOf(context)?.componentColors.inputTheme ??
          const NomoInputColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.inputTheme ??
          const NomoInputSizingData();
  final themeOverride = NomoInputThemeOverride.maybeOf(context);
  final themeData = NomoInputThemeData.from(globalColorTheme, globalSizingTheme)
      .copyWith(themeOverride);
  return NomoInputThemeData(
    background: widget.background ?? themeData.background,
    selectionColor: widget.selectionColor ?? themeData.selectionColor,
    padding: widget.padding ?? themeData.padding,
  );
}
