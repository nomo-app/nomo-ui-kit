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

  const NomoComponentSizes._({
    this.outlineContainerTheme = const NomoOutlineContainerSizingData(),
    this.appBarTheme = const NomoAppBarSizingData(),
  });

  factory NomoComponentSizes.override({
    required NomoSizes sizes,
    NomoOutlineContainerSizingData? outlineContainerTheme,
    NomoAppBarSizingData? appBarTheme,
  }) {
    final def = defaultComponents(sizes);
    return NomoComponentSizes._(
      outlineContainerTheme: outlineContainerTheme ?? def.outlineContainerTheme,
      appBarTheme: appBarTheme ?? def.appBarTheme,
    );
  }

  static NomoComponentSizes defaultComponents(NomoSizes core) =>
      NomoComponentSizes._(
        outlineContainerTheme: NomoOutlineContainerSizingData(
          spacing: 100,
          padding: EdgeInsets.all(32),
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
    fontSizeB1: 14,
    fontSizeB2: 16,
    fontSizeB3: 18,
    fontSizeH1: 20,
    fontSizeH2: 22,
    fontSizeH3: 24,
  ),
  buildComponents: (core) => NomoComponentSizes.override(
    sizes: core,
    outlineContainerTheme: NomoOutlineContainerSizingData(
      padding: EdgeInsets.all(4),
      spacing: 4,
    ),
  ),
);

final sizingMedium = NomoSizingThemeData(
    sizes: NomoSizes(
  fontSizeB1: 16,
  fontSizeB2: 18,
  fontSizeB3: 20,
  fontSizeH1: 22,
  fontSizeH2: 24,
  fontSizeH3: 26,
));

final sizingLarge = NomoSizingThemeData(
  sizes: NomoSizes(
    maxContentWidth: 1000,
    fontSizeB1: 18,
    fontSizeB2: 20,
    fontSizeB3: 22,
    fontSizeH1: 26,
    fontSizeH2: 28,
    fontSizeH3: 30,
  ),
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
