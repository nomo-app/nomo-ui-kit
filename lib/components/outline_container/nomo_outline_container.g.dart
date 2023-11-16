// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_init_to_null

part of 'nomo_outline_container.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class NomoOutlineContainerColorDataNullable {
  final Color? foreground;
  final Color? background;
  final BoxShape? shape;
  const NomoOutlineContainerColorDataNullable({
    this.foreground,
    this.background,
    this.shape,
  });
}

class NomoOutlineContainerColorData
    implements NomoOutlineContainerColorDataNullable {
  final Color foreground;
  final Color background;
  final BoxShape shape;
  const NomoOutlineContainerColorData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.shape = BoxShape.rectangle,
  });
  static NomoOutlineContainerColorData lerp(NomoOutlineContainerColorData a,
      NomoOutlineContainerColorData b, double t) {
    return NomoOutlineContainerColorData(
      foreground: Color.lerp(a.foreground, b.foreground, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      shape: t < 0.5 ? a.shape : b.shape,
    );
  }
}

class NomoOutlineContainerSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final double? spacing;
  const NomoOutlineContainerSizingDataNullable({
    this.padding,
    this.spacing,
  });
}

class NomoOutlineContainerSizingData
    implements NomoOutlineContainerSizingDataNullable {
  final EdgeInsetsGeometry padding;
  final double spacing;
  const NomoOutlineContainerSizingData({
    this.padding = const EdgeInsets.all(16),
    this.spacing = 16.0,
  });
  static NomoOutlineContainerSizingData lerp(NomoOutlineContainerSizingData a,
      NomoOutlineContainerSizingData b, double t) {
    return NomoOutlineContainerSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      spacing: lerpDouble(a.spacing, b.spacing, t)!,
    );
  }
}

class NomoOutlineContainerThemeData
    implements NomoOutlineContainerColorData, NomoOutlineContainerSizingData {
  final Color foreground;
  final Color background;
  final BoxShape shape;
  final EdgeInsetsGeometry padding;
  final double spacing;
  const NomoOutlineContainerThemeData({
    this.foreground = Colors.black,
    this.background = Colors.white,
    this.shape = BoxShape.rectangle,
    this.padding = const EdgeInsets.all(16),
    this.spacing = 16.0,
  });
  factory NomoOutlineContainerThemeData.from(
    NomoOutlineContainerColorData colors,
    NomoOutlineContainerSizingData sizing,
  ) {
    return NomoOutlineContainerThemeData(
      foreground: colors.foreground,
      background: colors.background,
      shape: colors.shape,
      padding: sizing.padding,
      spacing: sizing.spacing,
    );
  }
  NomoOutlineContainerThemeData override(
      [NomoOutlineContainerThemeDataNullable? override]) {
    return NomoOutlineContainerThemeData(
      foreground: override?.foreground ?? foreground,
      background: override?.background ?? background,
      shape: override?.shape ?? shape,
      padding: override?.padding ?? padding,
      spacing: override?.spacing ?? spacing,
    );
  }
}

class NomoOutlineContainerThemeDataNullable
    implements
        NomoOutlineContainerColorDataNullable,
        NomoOutlineContainerSizingDataNullable {
  final Color? foreground;
  final Color? background;
  final BoxShape? shape;
  final EdgeInsetsGeometry? padding;
  final double? spacing;
  const NomoOutlineContainerThemeDataNullable({
    this.foreground,
    this.background,
    this.shape,
    this.padding,
    this.spacing,
  });
}

class NomoOutlineContainerThemeOverride extends InheritedWidget {
  final NomoOutlineContainerThemeDataNullable data;
  const NomoOutlineContainerThemeOverride({
    required this.data,
    required super.child,
  });
  static NomoOutlineContainerThemeDataNullable of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<
        NomoOutlineContainerThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoOutlineContainerThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoOutlineContainerThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoOutlineContainerThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoOutlineContainerThemeData getFromContext(
  BuildContext context,
  NomoOutlineContainer widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.outlineContainerTheme ??
          NomoOutlineContainerColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.outlineContainerTheme ??
          NomoOutlineContainerSizingData();
  final themeOverride = NomoOutlineContainerThemeOverride.maybeOf(context);
  final themeData =
      NomoOutlineContainerThemeData.from(globalColorTheme, globalSizingTheme)
          .override(themeOverride);
  return NomoOutlineContainerThemeData(
    foreground: widget.foreground ?? themeData.foreground,
    background: widget.background ?? themeData.background,
    shape: widget.shape ?? themeData.shape,
    padding: widget.padding ?? themeData.padding,
    spacing: widget.spacing ?? themeData.spacing,
  );
}
