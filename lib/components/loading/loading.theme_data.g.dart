// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading.dart';

// **************************************************************************
// ComponentThemeDataGenerator
// **************************************************************************

class LoadingColorDataNullable {
  final Color? color;
  final double? strokeWidth;
  const LoadingColorDataNullable({
    this.color,
    this.strokeWidth,
  });
}

class LoadingColorData implements LoadingColorDataNullable {
  final Color color;
  final double strokeWidth;
  const LoadingColorData({
    this.color = primaryColor,
    this.strokeWidth = 4.0,
  });
  static LoadingColorData lerp(
      LoadingColorData a, LoadingColorData b, double t) {
    return LoadingColorData(
      color: Color.lerp(a.color, b.color, t)!,
      strokeWidth: lerpDouble(a.strokeWidth, b.strokeWidth, t)!,
    );
  }
}

class LoadingSizingDataNullable {
  const LoadingSizingDataNullable();
}

class LoadingSizingData implements LoadingSizingDataNullable {
  const LoadingSizingData();
  static LoadingSizingData lerp(
      LoadingSizingData a, LoadingSizingData b, double t) {
    return LoadingSizingData();
  }
}

class LoadingThemeData implements LoadingColorData, LoadingSizingData {
  final Color color;
  final double strokeWidth;
  const LoadingThemeData({
    this.color = primaryColor,
    this.strokeWidth = 4.0,
  });
  factory LoadingThemeData.from(
    LoadingColorData colors,
    LoadingSizingData sizing,
  ) {
    return LoadingThemeData(
      color: colors.color,
      strokeWidth: colors.strokeWidth,
    );
  }
  LoadingThemeData override([LoadingThemeDataNullable? override]) {
    return LoadingThemeData(
      color: override?.color ?? color,
      strokeWidth: override?.strokeWidth ?? strokeWidth,
    );
  }
}

class LoadingThemeDataNullable
    implements LoadingColorDataNullable, LoadingSizingDataNullable {
  final Color? color;
  final double? strokeWidth;
  const LoadingThemeDataNullable({
    this.color,
    this.strokeWidth,
  });
}

class LoadingThemeOverride extends InheritedWidget {
  final LoadingThemeDataNullable data;
  const LoadingThemeOverride({
    required this.data,
    required super.child,
  });
  static LoadingThemeDataNullable of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<LoadingThemeOverride>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.data;
  }

  static LoadingThemeDataNullable? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<LoadingThemeOverride>()
        ?.data;
  }

  @override
  bool updateShouldNotify(LoadingThemeOverride oldWidget) {
    return oldWidget.data != data;
  }
}

LoadingThemeData getFromContext(
  BuildContext context,
  Loading widget,
) {
  final globalColorTheme =
      NomoTheme.maybeOf(context)?.componentColors.loadingTheme ??
          LoadingColorData();
  final globalSizingTheme = LoadingSizingData();
  final themeOverride = LoadingThemeOverride.maybeOf(context);
  final themeData = LoadingThemeData.from(globalColorTheme, globalSizingTheme)
      .override(themeOverride);
  return LoadingThemeData(
    color: widget.color ?? themeData.color,
    strokeWidth: widget.strokeWidth ?? themeData.strokeWidth,
  );
}
