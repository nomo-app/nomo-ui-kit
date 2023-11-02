// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_init_to_null

part of 'nomo_bottom_bar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class NomoBottomBarColorDataNullable {
  final Color? backgroundColor;
  const NomoBottomBarColorDataNullable({
    this.backgroundColor,
  });
}

class NomoBottomBarColorData implements NomoBottomBarColorDataNullable {
  final Color backgroundColor;
  const NomoBottomBarColorData({
    this.backgroundColor = Colors.red,
  });
}

class NomoBottomBarSizingDataNullable {
  final double? height;
  const NomoBottomBarSizingDataNullable({
    this.height,
  });
}

class NomoBottomBarSizingData implements NomoBottomBarSizingDataNullable {
  final double height;
  const NomoBottomBarSizingData({
    this.height = 56.0,
  });
}

class NomoBottomBarThemeData
    implements NomoBottomBarColorData, NomoBottomBarSizingData {
  final Color backgroundColor;
  final double height;
  const NomoBottomBarThemeData({
    this.backgroundColor = Colors.red,
    this.height = 56.0,
  });
  factory NomoBottomBarThemeData.from(
    NomoBottomBarColorData colors,
    NomoBottomBarSizingData sizing,
  ) {
    return NomoBottomBarThemeData(
      backgroundColor: colors.backgroundColor,
      height: sizing.height,
    );
  }
  NomoBottomBarThemeData override([NomoBottomBarThemeDataNullable? override]) {
    return NomoBottomBarThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      height: override?.height ?? height,
    );
  }
}

class NomoBottomBarThemeDataNullable
    implements NomoBottomBarColorDataNullable, NomoBottomBarSizingDataNullable {
  final Color? backgroundColor;
  final double? height;
  const NomoBottomBarThemeDataNullable({
    this.backgroundColor,
    this.height,
  });
}

class NomoBottomBarThemeOverride extends InheritedWidget {
  final NomoBottomBarThemeDataNullable data;
  const NomoBottomBarThemeOverride({
    required this.data,
    required super.child,
  });
  static NomoBottomBarThemeDataNullable of(BuildContext context) {
    final result = context
        .dependOnInheritedWidgetOfExactType<NomoBottomBarThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoBottomBarThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoBottomBarThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoBottomBarThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoBottomBarThemeData getFromContext(
  BuildContext context,
  NomoBottomBar widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.bottomBarTheme ??
          NomoBottomBarColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.bottomBarTheme ??
          NomoBottomBarSizingData();
  final themeOverride = NomoBottomBarThemeOverride.maybeOf(context);
  final themeData =
      NomoBottomBarThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return NomoBottomBarThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    height: widget.height ?? themeData.height,
  );
}
