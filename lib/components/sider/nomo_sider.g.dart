// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_init_to_null

part of 'nomo_sider.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class NomoSiderColorDataNullable {
  final Color? backgroundColor;
  final Border? border;
  const NomoSiderColorDataNullable({
    this.backgroundColor,
    this.border,
  });
}

class NomoSiderColorData implements NomoSiderColorDataNullable {
  final Color backgroundColor;
  final Border border;
  const NomoSiderColorData({
    this.backgroundColor = primaryColor,
    this.border =
        const Border(right: BorderSide(color: Colors.black12, width: 1)),
  });
  static NomoSiderColorData lerp(
      NomoSiderColorData a, NomoSiderColorData b, double t) {
    return NomoSiderColorData(
      backgroundColor: Color.lerp(a.backgroundColor, b.backgroundColor, t)!,
      border: Border.lerp(a.border, b.border, t)!,
    );
  }
}

class NomoSiderSizingDataNullable {
  final EdgeInsetsGeometry? padding;
  final double? width;
  const NomoSiderSizingDataNullable({
    this.padding,
    this.width,
  });
}

class NomoSiderSizingData implements NomoSiderSizingDataNullable {
  final EdgeInsetsGeometry padding;
  final double width;
  const NomoSiderSizingData({
    this.padding = const EdgeInsets.all(16),
    this.width = 80.0,
  });
  static NomoSiderSizingData lerp(
      NomoSiderSizingData a, NomoSiderSizingData b, double t) {
    return NomoSiderSizingData(
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t)!,
      width: lerpDouble(a.width, b.width, t)!,
    );
  }
}

class NomoSiderThemeData implements NomoSiderColorData, NomoSiderSizingData {
  final Color backgroundColor;
  final Border border;
  final EdgeInsetsGeometry padding;
  final double width;
  const NomoSiderThemeData({
    this.backgroundColor = primaryColor,
    this.border =
        const Border(right: BorderSide(color: Colors.black12, width: 1)),
    this.padding = const EdgeInsets.all(16),
    this.width = 80.0,
  });
  factory NomoSiderThemeData.from(
    NomoSiderColorData colors,
    NomoSiderSizingData sizing,
  ) {
    return NomoSiderThemeData(
      backgroundColor: colors.backgroundColor,
      border: colors.border,
      padding: sizing.padding,
      width: sizing.width,
    );
  }
  NomoSiderThemeData override([NomoSiderThemeDataNullable? override]) {
    return NomoSiderThemeData(
      backgroundColor: override?.backgroundColor ?? backgroundColor,
      border: override?.border ?? border,
      padding: override?.padding ?? padding,
      width: override?.width ?? width,
    );
  }
}

class NomoSiderThemeDataNullable
    implements NomoSiderColorDataNullable, NomoSiderSizingDataNullable {
  final Color? backgroundColor;
  final Border? border;
  final EdgeInsetsGeometry? padding;
  final double? width;
  const NomoSiderThemeDataNullable({
    this.backgroundColor,
    this.border,
    this.padding,
    this.width,
  });
}

class NomoSiderThemeOverride extends InheritedWidget {
  final NomoSiderThemeDataNullable data;
  const NomoSiderThemeOverride({
    required this.data,
    required super.child,
  });
  static NomoSiderThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoSiderThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static NomoSiderThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoSiderThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(NomoSiderThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

NomoSiderThemeData getFromContext(
  BuildContext context,
  NomoSider widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.siderTheme ??
          NomoSiderColorData();
  final globalSizingTheme =
      NomoTheme.maybeOf(context)?.componentSizes.siderTheme ??
          NomoSiderSizingData();
  final themeOverride = NomoSiderThemeOverride.maybeOf(context);
  final themeData = NomoSiderThemeData.from(globalColorTheme, globalSizingTheme)
      .override(themeOverride);
  return NomoSiderThemeData(
    backgroundColor: widget.backgroundColor ?? themeData.backgroundColor,
    border: widget.border ?? themeData.border,
    padding: widget.padding ?? themeData.padding,
    width: widget.width ?? themeData.width,
  );
}
