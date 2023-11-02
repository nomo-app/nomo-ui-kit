// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: use_full_hex_values_for_flutter_colors, ignore_init_to_null

part of 'nomo_app_bar.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class NomoAppBarColorDataNullable {
  final Color? backgroundColor;
  const NomoAppBarColorDataNullable({
    this.backgroundColor,
  });
}

class NomoAppBarColorData implements NomoAppBarColorDataNullable {
  final Color backgroundColor;
  const NomoAppBarColorData({
    this.backgroundColor = Colors.red,
  });
}

class NomoAppBarSizingDataNullable {
  final PreferredSizeWidget? bottom;
  final double? height;
  const NomoAppBarSizingDataNullable({
    this.bottom,
    this.height,
  });
}

class NomoAppBarSizingData implements NomoAppBarSizingDataNullable {
  final PreferredSizeWidget? bottom;
  final double height;
  const NomoAppBarSizingData({
    this.bottom = null,
    this.height = kToolbarHeight,
  });
}

class NomoAppBarThemeData implements NomoAppBarColorData, NomoAppBarSizingData {
  final Color backgroundColor;
  final PreferredSizeWidget? bottom;
  final double height;
  const NomoAppBarThemeData({
    this.backgroundColor = Colors.red,
    this.bottom = null,
    this.height = kToolbarHeight,
  });
  factory NomoAppBarThemeData.from(
    NomoAppBarColorData colors,
    NomoAppBarSizingData sizing,
  ) {
    return NomoAppBarThemeData(
      backgroundColor: colors.backgroundColor,
      bottom: sizing.bottom,
      height: sizing.height,
    );
  }
  NomoAppBarThemeData override([NomoAppBarThemeDataNullable? override]) {
    return NomoAppBarThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      bottom: override?.bottom ?? bottom,
      height: override?.height ?? height,
    );
  }
}

class NomoAppBarThemeDataNullable
    implements NomoAppBarColorDataNullable, NomoAppBarSizingDataNullable {
  final Color? backgroundColor;
  final PreferredSizeWidget? bottom;
  final double? height;
  const NomoAppBarThemeDataNullable({
    this.backgroundColor,
    this.bottom,
    this.height,
  });
}

class NomoAppBarThemeOverride extends InheritedWidget {
  final NomoAppBarThemeDataNullable data;
  const NomoAppBarThemeOverride({
    required this.data,
    required super.child,
  });
  static NomoAppBarThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoAppBarThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoAppBarThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoAppBarThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoAppBarThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoAppBarThemeData getFromContext(
  BuildContext context,
  NomoAppBar widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.appBarTheme ??
          NomoAppBarThemeData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.appBarTheme ??
          NomoAppBarThemeData();
  final themeOverride = NomoAppBarThemeOverride.maybeOf(context);
  final themeData =
      NomoAppBarThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return NomoAppBarThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    bottom: widget.bottom ?? themeData.bottom,
    height: widget.height ?? themeData.height,
  );
}
