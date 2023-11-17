part of nomo_theme;

class NomoSizes {
  const NomoSizes({
    required this.fontSizeB1,
    required this.fontSizeB2,
    required this.fontSizeB3,
    required this.fontSizeH1,
    required this.fontSizeH2,
    required this.fontSizeH3,
    this.maxContentWidth,
  });
  final double? maxContentWidth;

  final double fontSizeB1;
  final double fontSizeB2;
  final double fontSizeB3;

  final double fontSizeH1;
  final double fontSizeH2;
  final double fontSizeH3;

  static NomoSizes lerp(NomoSizes a, NomoSizes b, double t) {
    return NomoSizes(
      maxContentWidth: lerpDouble(a.maxContentWidth, b.maxContentWidth, t),
      fontSizeB1: lerpDouble(a.fontSizeB1, b.fontSizeB1, t)!,
      fontSizeB2: lerpDouble(a.fontSizeB2, b.fontSizeB2, t)!,
      fontSizeB3: lerpDouble(a.fontSizeB3, b.fontSizeB3, t)!,
      fontSizeH1: lerpDouble(a.fontSizeH1, b.fontSizeH1, t)!,
      fontSizeH2: lerpDouble(a.fontSizeH2, b.fontSizeH2, t)!,
      fontSizeH3: lerpDouble(a.fontSizeH3, b.fontSizeH3, t)!,
    );
  }
}

class NomoComponentSizes {
  const NomoComponentSizes._({
    this.outlineContainerTheme = const NomoOutlineContainerSizingData(),
    this.appBarTheme = const NomoAppBarSizingData(),
    this.scaffoldTheme = const NomoScaffoldSizingData(),
    this.bottomBarTheme = const NomoBottomBarSizingData(),
    this.siderTheme = const NomoSiderSizingData(),
    this.verticalMenuTheme = const NomoVerticalMenuSizingData(),
    this.routeBodyTheme = const NomoRouteBodySizingData(),
  });

  factory NomoComponentSizes.override({
    required NomoSizes sizes,
    NomoOutlineContainerSizingData? outlineContainerTheme,
    NomoAppBarSizingData? appBarTheme,
    NomoScaffoldSizingData? scaffoldTheme,
    NomoBottomBarSizingData? bottomBarTheme,
    NomoSiderSizingData? siderTheme,
    NomoVerticalMenuSizingData? verticalMenuTheme,
    NomoRouteBodySizingData? routeBodyTheme,
  }) {
    final def = defaultComponents(sizes);
    return NomoComponentSizes._(
      outlineContainerTheme: outlineContainerTheme ?? def.outlineContainerTheme,
      appBarTheme: appBarTheme ?? def.appBarTheme,
      scaffoldTheme: scaffoldTheme ?? def.scaffoldTheme,
      bottomBarTheme: bottomBarTheme ?? def.bottomBarTheme,
      siderTheme: siderTheme ?? def.siderTheme,
      verticalMenuTheme: verticalMenuTheme ?? def.verticalMenuTheme,
      routeBodyTheme: routeBodyTheme ?? def.routeBodyTheme,
    );
  }
  final NomoOutlineContainerSizingData outlineContainerTheme;
  final NomoAppBarSizingData appBarTheme;
  final NomoScaffoldSizingData scaffoldTheme;
  final NomoBottomBarSizingData bottomBarTheme;
  final NomoSiderSizingData siderTheme;
  final NomoVerticalMenuSizingData verticalMenuTheme;
  final NomoRouteBodySizingData routeBodyTheme;

  static NomoComponentSizes defaultComponents(NomoSizes core) =>
      const NomoComponentSizes._(
        outlineContainerTheme: NomoOutlineContainerSizingData(
          spacing: 100,
          padding: EdgeInsets.all(32),
        ),
        verticalMenuTheme: NomoVerticalMenuSizingData(
          hPadding: 12,
          height: 48,
        ),
        bottomBarTheme: NomoBottomBarSizingData(
          iconSize: 24,
        ),
        routeBodyTheme: NomoRouteBodySizingData(
          padding: EdgeInsets.all(16),
        ),
      );

  static NomoComponentSizes lerp(
    NomoComponentSizes a,
    NomoComponentSizes b,
    double t,
  ) {
    return NomoComponentSizes._(
      outlineContainerTheme: NomoOutlineContainerSizingData.lerp(
        a.outlineContainerTheme,
        b.outlineContainerTheme,
        t,
      ),
      appBarTheme: NomoAppBarSizingData.lerp(a.appBarTheme, b.appBarTheme, t),
      scaffoldTheme: NomoScaffoldSizingData.lerp(
        a.scaffoldTheme,
        b.scaffoldTheme,
        t,
      ),
      bottomBarTheme:
          NomoBottomBarSizingData.lerp(a.bottomBarTheme, b.bottomBarTheme, t),
      siderTheme: NomoSiderSizingData.lerp(a.siderTheme, b.siderTheme, t),
      verticalMenuTheme: NomoVerticalMenuSizingData.lerp(
        a.verticalMenuTheme,
        b.verticalMenuTheme,
        t,
      ),
      routeBodyTheme:
          NomoRouteBodySizingData.lerp(a.routeBodyTheme, b.routeBodyTheme, t),
    );
  }
}

class NomoSizingThemeData {
  NomoSizingThemeData({
    required this.sizes,
    NomoComponentSizes Function(NomoSizes core) buildComponents =
        NomoComponentSizes.defaultComponents,
  }) : components = buildComponents(sizes);

  NomoSizingThemeData._({
    required this.sizes,
    required this.components,
  });
  final NomoSizes sizes;
  final NomoComponentSizes components;

  static NomoSizingThemeData lerp(
    NomoSizingThemeData a,
    NomoSizingThemeData b,
    double t,
  ) {
    return NomoSizingThemeData._(
      sizes: NomoSizes.lerp(a.sizes, b.sizes, t),
      components: NomoComponentSizes.lerp(a.components, b.components, t),
    );
  }
}
