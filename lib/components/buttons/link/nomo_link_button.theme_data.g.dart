// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_link_button.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants
class NomoLinkButtonColorDataNullable {
  final Color? foregroundColor;
  final Color? tapDownColor;
  const NomoLinkButtonColorDataNullable({
    this.foregroundColor,
    this.tapDownColor,
  });
}

class NomoLinkButtonColorData implements NomoLinkButtonColorDataNullable {
  @override
  final Color foregroundColor;
  @override
  final Color tapDownColor;
  const NomoLinkButtonColorData({
    this.foregroundColor = const Color(0xFF1677ff),
    this.tapDownColor = const Color(0xFF0958d9),
  });
  static NomoLinkButtonColorData lerp(
      NomoLinkButtonColorData a, NomoLinkButtonColorData b, double t) {
    return NomoLinkButtonColorData(
      foregroundColor: Color.lerp(a.foregroundColor, b.foregroundColor, t)!,
      tapDownColor: Color.lerp(a.tapDownColor, b.tapDownColor, t)!,
    );
  }
}

class NomoLinkButtonSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final Color? selectionColor;
  const NomoLinkButtonSizingDataNullable({
    this.padding,
    this.selectionColor,
  });
}

class NomoLinkButtonSizingData implements NomoLinkButtonSizingDataNullable {
  @override
  final EdgeInsetsGeometry padding;
  @override
  final Color selectionColor;
  const NomoLinkButtonSizingData({
    this.padding = const EdgeInsets.all(16),
    this.selectionColor = const Color(0xFF4096ff),
  });
  static NomoLinkButtonSizingData lerp(
      NomoLinkButtonSizingData a, NomoLinkButtonSizingData b, double t) {
    return NomoLinkButtonSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      selectionColor: Color.lerp(a.selectionColor, b.selectionColor, t)!,
    );
  }
}

class NomoLinkButtonConstantsNullable {
  const NomoLinkButtonConstantsNullable();
}

class NomoLinkButtonConstants implements NomoLinkButtonConstantsNullable {
  const NomoLinkButtonConstants();
}

class NomoLinkButtonThemeData
    implements
        NomoLinkButtonColorData,
        NomoLinkButtonSizingData,
        NomoLinkButtonConstants {
  @override
  final Color foregroundColor;
  @override
  final Color tapDownColor;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final Color selectionColor;
  const NomoLinkButtonThemeData({
    this.foregroundColor = const Color(0xFF1677ff),
    this.tapDownColor = const Color(0xFF0958d9),
    this.padding = const EdgeInsets.all(16),
    this.selectionColor = const Color(0xFF4096ff),
  });
  factory NomoLinkButtonThemeData.from(
    NomoLinkButtonColorData colors,
    NomoLinkButtonSizingData sizing,
    NomoLinkButtonConstants constants,
  ) {
    return NomoLinkButtonThemeData(
      foregroundColor: colors.foregroundColor,
      tapDownColor: colors.tapDownColor,
      padding: sizing.padding,
      selectionColor: sizing.selectionColor,
    );
  }
  NomoLinkButtonThemeData copyWith(
      [NomoLinkButtonThemeDataNullable? override]) {
    return NomoLinkButtonThemeData(
      foregroundColor: override?.foregroundColor ?? foregroundColor,
      tapDownColor: override?.tapDownColor ?? tapDownColor,
      padding: override?.padding ?? padding,
      selectionColor: override?.selectionColor ?? selectionColor,
    );
  }
}

class NomoLinkButtonThemeDataNullable
    implements
        NomoLinkButtonColorDataNullable,
        NomoLinkButtonSizingDataNullable,
        NomoLinkButtonConstantsNullable {
  @override
  final Color? foregroundColor;
  @override
  final Color? tapDownColor;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final Color? selectionColor;
  const NomoLinkButtonThemeDataNullable({
    this.foregroundColor,
    this.tapDownColor,
    this.padding,
    this.selectionColor,
  });
}

class NomoLinkButtonThemeOverride extends InheritedWidget {
  final NomoLinkButtonThemeDataNullable data;
  const NomoLinkButtonThemeOverride(
      {required this.data, required super.child, super.key});
  static NomoLinkButtonThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoLinkButtonThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoLinkButtonThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoLinkButtonThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoLinkButtonThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoLinkButtonThemeData getFromContext(
  BuildContext context,
  NomoLinkButton widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.linkButtonTheme ??
          const NomoLinkButtonColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.linkButtonTheme ??
          const NomoLinkButtonSizingData();
  const globalConstants = NomoLinkButtonConstants();
  final themeOverride = NomoLinkButtonThemeOverride.maybeOf(context);
  final themeData = NomoLinkButtonThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoLinkButtonThemeData(
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    tapDownColor: widget.tapDownColor ?? themeData.tapDownColor,
    padding: widget.padding ?? themeData.padding,
    selectionColor: widget.selectionColor ?? themeData.selectionColor,
  );
}
