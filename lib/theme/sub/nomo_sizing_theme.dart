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

final sizingSmall = NomoSizingThemeData(
  sizes: NomoSizes(
    fontSizeB1: 10,
    fontSizeB2: 12,
    fontSizeB3: 14,
    fontSizeH1: 16,
    fontSizeH2: 18,
    fontSizeH3: 20,
  ),
  buildComponents: (core) => NomoComponentSizes.override(
    sizes: core,
    outlineContainerTheme: NomoOutlineContainerSizingData(
      padding: EdgeInsets.all(4),
      spacing: 4,
    ),
    appBarTheme: NomoAppBarSizingData(),
    scaffoldTheme: NomoScaffoldSizingData(
      showBottomBar: true,
      showSider: false,
    ),
  ),
);

final sizingMedium = NomoSizingThemeData(
  sizes: NomoSizes(
    fontSizeB1: 12,
    fontSizeB2: 14,
    fontSizeB3: 16,
    fontSizeH1: 18,
    fontSizeH2: 20,
    fontSizeH3: 22,
  ),
);

final sizingLarge = NomoSizingThemeData(
  sizes: NomoSizes(
    maxContentWidth: 1000,
    fontSizeB1: 14,
    fontSizeB2: 16,
    fontSizeB3: 18,
    fontSizeH1: 20,
    fontSizeH2: 22,
    fontSizeH3: 24,
  ),
  buildComponents: (core) {
    return NomoComponentSizes.override(
      sizes: core,
      siderTheme: NomoSiderThemeData(
        padding: EdgeInsets.all(4),
        width: 200,
      ),
    );
  },
);

enum SizingMode {
  SMALL(600),
  MEDIUM(1080),
  LARGE(1440);

  final double width;

  NomoSizingThemeData get theme => switch (this) {
        SizingMode.SMALL => sizingSmall,
        SizingMode.MEDIUM => sizingMedium,
        SizingMode.LARGE => sizingLarge,
      };

  const SizingMode(this.width);
}
