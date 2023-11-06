part of nomo_theme;

class NomoSizes {
  final double? maxContentWidth;

  final double fontSizeB1;
  final double fontSizeB2;
  final double fontSizeB3;

  final double fontSizeH1;
  final double fontSizeH2;
  final double fontSizeH3;

  const NomoSizes({
    this.maxContentWidth,
    required this.fontSizeB1,
    required this.fontSizeB2,
    required this.fontSizeB3,
    required this.fontSizeH1,
    required this.fontSizeH2,
    required this.fontSizeH3,
  });
}

class NomoComponentSizes {
  final NomoOutlineContainerSizingData outlineContainerTheme;
  final NomoAppBarSizingData appBarTheme;
  final NomoScaffoldSizingData scaffoldTheme;
  final NomoBottomBarSizingData bottomBarTheme;
  final NomoSiderSizingData siderTheme;
  final NomoVerticalMenuSizingData verticalMenuTheme;

  const NomoComponentSizes._({
    this.outlineContainerTheme = const NomoOutlineContainerSizingData(),
    this.appBarTheme = const NomoAppBarSizingData(),
    this.scaffoldTheme = const NomoScaffoldSizingData(),
    this.bottomBarTheme = const NomoBottomBarSizingData(),
    this.siderTheme = const NomoSiderSizingData(),
    this.verticalMenuTheme = const NomoVerticalMenuSizingData(),
  });

  factory NomoComponentSizes.override({
    required NomoSizes sizes,
    NomoOutlineContainerSizingData? outlineContainerTheme,
    NomoAppBarSizingData? appBarTheme,
    NomoScaffoldSizingData? scaffoldTheme,
    NomoBottomBarSizingData? bottomBarTheme,
    NomoSiderSizingData? siderTheme,
    NomoVerticalMenuSizingData? verticalMenuTheme,
  }) {
    final def = defaultComponents(sizes);
    return NomoComponentSizes._(
      outlineContainerTheme: outlineContainerTheme ?? def.outlineContainerTheme,
      appBarTheme: appBarTheme ?? def.appBarTheme,
      scaffoldTheme: scaffoldTheme ?? def.scaffoldTheme,
      bottomBarTheme: bottomBarTheme ?? def.bottomBarTheme,
      siderTheme: siderTheme ?? def.siderTheme,
      verticalMenuTheme: verticalMenuTheme ?? def.verticalMenuTheme,
    );
  }

  static NomoComponentSizes defaultComponents(NomoSizes core) =>
      NomoComponentSizes._(
        outlineContainerTheme: NomoOutlineContainerSizingData(
          spacing: 100,
          padding: EdgeInsets.all(32),
        ),
        verticalMenuTheme: NomoVerticalMenuSizingData(
          hPadding: 12,
          height: 48,
        ),
        bottomBarTheme: NomoBottomBarSizingData(
          height: 56,
          iconSize: 24,
          spacing: 4,
        ),
      );
}

class NomoSizingThemeData {
  final NomoSizes sizes;
  final NomoComponentSizes components;

  NomoSizingThemeData({
    required this.sizes,
    NomoComponentSizes Function(NomoSizes core) buildComponents =
        NomoComponentSizes.defaultComponents,
  }) : components = buildComponents(sizes);
}
