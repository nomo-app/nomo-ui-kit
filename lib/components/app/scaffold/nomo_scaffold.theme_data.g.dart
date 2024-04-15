// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_scaffold.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null, use_named_constants, strict_raw_type, prefer_const_constructors, unnecessary_non_null_assertion
class NomoScaffoldColorDataNullable {
  final Color? backgroundColor;
  const NomoScaffoldColorDataNullable({
    this.backgroundColor,
  });
}

class NomoScaffoldColorData implements NomoScaffoldColorDataNullable {
  @override
  final Color backgroundColor;
  const NomoScaffoldColorData({
    this.backgroundColor = Colors.white,
  });
  static NomoScaffoldColorData lerp(
      NomoScaffoldColorData a, NomoScaffoldColorData b, double t) {
    return NomoScaffoldColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
    );
  }

  static NomoScaffoldColorData overrideWith(NomoScaffoldColorData base,
      [NomoScaffoldColorDataNullable? override]) {
    return NomoScaffoldColorData(
      backgroundColor: override?.backgroundColor ?? base.backgroundColor,
    );
  }
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
  @override
  final EdgeInsetsGeometry padding;
  @override
  final bool showBottomBar;
  @override
  final bool showSider;
  const NomoScaffoldSizingData({
    this.padding = EdgeInsets.zero,
    this.showBottomBar = false,
    this.showSider = true,
  });
  static NomoScaffoldSizingData lerp(
      NomoScaffoldSizingData a, NomoScaffoldSizingData b, double t) {
    return NomoScaffoldSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      showBottomBar: t < 0.5 ? a.showBottomBar : b.showBottomBar,
      showSider: t < 0.5 ? a.showSider : b.showSider,
    );
  }

  static NomoScaffoldSizingData overrideWith(NomoScaffoldSizingData base,
      [NomoScaffoldSizingDataNullable? override]) {
    return NomoScaffoldSizingData(
      padding: override?.padding ?? base.padding,
      showBottomBar: override?.showBottomBar ?? base.showBottomBar,
      showSider: override?.showSider ?? base.showSider,
    );
  }
}

class NomoScaffoldConstantsNullable {
  const NomoScaffoldConstantsNullable();
}

class NomoScaffoldConstants implements NomoScaffoldConstantsNullable {
  const NomoScaffoldConstants();
}

class NomoScaffoldThemeData
    implements
        NomoScaffoldColorData,
        NomoScaffoldSizingData,
        NomoScaffoldConstants {
  @override
  final Color backgroundColor;
  @override
  final EdgeInsetsGeometry padding;
  @override
  final bool showBottomBar;
  @override
  final bool showSider;
  const NomoScaffoldThemeData({
    this.backgroundColor = Colors.white,
    this.padding = EdgeInsets.zero,
    this.showBottomBar = false,
    this.showSider = true,
  });
  factory NomoScaffoldThemeData.from(
    NomoScaffoldColorData colors,
    NomoScaffoldSizingData sizing,
    NomoScaffoldConstants constants,
  ) {
    return NomoScaffoldThemeData(
      backgroundColor: colors.backgroundColor,
      padding: sizing.padding,
      showBottomBar: sizing.showBottomBar,
      showSider: sizing.showSider,
    );
  }
  NomoScaffoldThemeData copyWith([NomoScaffoldThemeDataNullable? override]) {
    return NomoScaffoldThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      padding: override?.padding ?? padding,
      showBottomBar: override?.showBottomBar ?? showBottomBar,
      showSider: override?.showSider ?? showSider,
    );
  }
}

class NomoScaffoldThemeDataNullable
    implements
        NomoScaffoldColorDataNullable,
        NomoScaffoldSizingDataNullable,
        NomoScaffoldConstantsNullable {
  @override
  final Color? backgroundColor;
  @override
  final EdgeInsetsGeometry? padding;
  @override
  final bool? showBottomBar;
  @override
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
  const NomoScaffoldThemeOverride(
      {required this.data, required super.child, super.key});
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
      NomoTheme.maybeOf(context)?.componentColors.scaffoldColor ??
          const NomoScaffoldColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.scaffoldSizing ??
          const NomoScaffoldSizingData();
  const globalConstants = NomoScaffoldConstants();
  final themeOverride = NomoScaffoldThemeOverride.maybeOf(context);
  final themeData = NomoScaffoldThemeData.from(
          globalColorTheme, globalSizingTheme, globalConstants)
      .copyWith(themeOverride);
  return NomoScaffoldThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    padding: widget.padding ?? themeData.padding,
    showBottomBar: widget.showBottomBar ?? themeData.showBottomBar,
    showSider: widget.showSider ?? themeData.showSider,
  );
}
