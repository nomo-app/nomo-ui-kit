// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_init_to_null

part of 'nomo_scaffold.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class NomoScaffoldColorDataNullable {
  final Color? backgroundColor;
  const NomoScaffoldColorDataNullable({
    this.backgroundColor,
  });
}

class NomoScaffoldColorData implements NomoScaffoldColorDataNullable {
  final Color backgroundColor;
  const NomoScaffoldColorData({
    this.backgroundColor = Colors.white,
  });
}

class NomoScaffoldSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final bool? showBottomBar;
  final bool? showSider;
  const NomoScaffoldSizingDataNullable({
    this.padding,
    this.showBottomBar,
    this.showSider,
  });
}

class NomoScaffoldSizingData implements NomoScaffoldSizingDataNullable {
  final EdgeInsetsGeometry padding;
  final bool showBottomBar;
  final bool showSider;
  const NomoScaffoldSizingData({
    this.padding = const EdgeInsets.all(16),
    this.showBottomBar = false,
    this.showSider = true,
  });
}

class NomoScaffoldThemeData
    implements NomoScaffoldColorData, NomoScaffoldSizingData {
  final Color backgroundColor;
  final EdgeInsetsGeometry padding;
  final bool showBottomBar;
  final bool showSider;
  const NomoScaffoldThemeData({
    this.backgroundColor = Colors.white,
    this.padding = const EdgeInsets.all(16),
    this.showBottomBar = false,
    this.showSider = true,
  });
  factory NomoScaffoldThemeData.from(
    NomoScaffoldColorData colors,
    NomoScaffoldSizingData sizing,
  ) {
    return NomoScaffoldThemeData(
      backgroundColor: colors.backgroundColor,
      padding: sizing.padding,
      showBottomBar: sizing.showBottomBar,
      showSider: sizing.showSider,
    );
  }
  NomoScaffoldThemeData override([NomoScaffoldThemeDataNullable? override]) {
    return NomoScaffoldThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      padding: override?.padding ?? padding,
      showBottomBar: override?.showBottomBar ?? showBottomBar,
      showSider: override?.showSider ?? showSider,
    );
  }
}

class NomoScaffoldThemeDataNullable
    implements NomoScaffoldColorDataNullable, NomoScaffoldSizingDataNullable {
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final bool? showBottomBar;
  final bool? showSider;
  const NomoScaffoldThemeDataNullable({
    this.backgroundColor,
    this.padding,
    this.showBottomBar,
    this.showSider,
  });
}

class NomoScaffoldThemeOverride extends InheritedWidget {
  final NomoScaffoldThemeDataNullable data;
  const NomoScaffoldThemeOverride({
    required this.data,
    required super.child,
  });
  static NomoScaffoldThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoScaffoldThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoScaffoldThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoScaffoldThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoScaffoldThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoScaffoldThemeData getFromContext(
  BuildContext context,
  NomoScaffold widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.scaffoldTheme ??
          NomoScaffoldColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.scaffoldTheme ??
          NomoScaffoldSizingData();
  final themeOverride = NomoScaffoldThemeOverride.maybeOf(context);
  final themeData =
      NomoScaffoldThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return NomoScaffoldThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    padding: widget.padding ?? themeData.padding,
    showBottomBar: widget.showBottomBar ?? themeData.showBottomBar,
    showSider: widget.showSider ?? themeData.showSider,
  );
}
