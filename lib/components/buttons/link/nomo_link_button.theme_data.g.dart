// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_link_button.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class NomoLinkButtonColorDataNullable {
  final Color? foregroundColor;
  final Color? tapDownColor;
  const NomoLinkButtonColorDataNullable({
    this.foregroundColor,
    this.tapDownColor,
  });
}

class NomoLinkButtonColorData implements NomoLinkButtonColorDataNullable {
  final Color foregroundColor;
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
  final EdgeInsetsGeometry padding;
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

class NomoLinkButtonThemeData
    implements NomoLinkButtonColorData, NomoLinkButtonSizingData {
  final Color foregroundColor;
  final Color tapDownColor;
  final EdgeInsetsGeometry padding;
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
  ) {
    return NomoLinkButtonThemeData(
      foregroundColor: colors.foregroundColor,
      tapDownColor: colors.tapDownColor,
      padding: sizing.padding,
      selectionColor: sizing.selectionColor,
    );
  }
  NomoLinkButtonThemeData override(
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
        NomoLinkButtonSizingDataNullable {
  final Color? foregroundColor;
  final Color? tapDownColor;
  final EdgeInsetsGeometry? padding;
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
  const NomoLinkButtonThemeOverride({
    required this.data,
    required super.child,
  });
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
          NomoLinkButtonColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.linkButtonTheme ??
          NomoLinkButtonSizingData();
  final themeOverride = NomoLinkButtonThemeOverride.maybeOf(context);
  final themeData =
      NomoLinkButtonThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return NomoLinkButtonThemeData(
    foregroundColor: widget.foregroundColor ?? themeData.foregroundColor,
    tapDownColor: widget.tapDownColor ?? themeData.tapDownColor,
    padding: widget.padding ?? themeData.padding,
    selectionColor: widget.selectionColor ?? themeData.selectionColor,
  );
}
