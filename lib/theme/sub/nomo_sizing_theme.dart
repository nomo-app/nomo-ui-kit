part of nomo_theme;

class NomoSizingTheme {
  final double? maxContentWidth;

  final double fontSizeB1;
  final double fontSizeB2;
  final double fontSizeB3;

  final double fontSizeH1;
  final double fontSizeH2;
  final double fontSizeH3;

  const NomoSizingTheme({
    this.maxContentWidth,
    required this.fontSizeB1,
    required this.fontSizeB2,
    required this.fontSizeB3,
    required this.fontSizeH1,
    required this.fontSizeH2,
    required this.fontSizeH3,
  });
}

const sizingSmall = NomoSizingTheme(
  fontSizeB1: 14,
  fontSizeB2: 16,
  fontSizeB3: 18,
  fontSizeH1: 20,
  fontSizeH2: 22,
  fontSizeH3: 24,
);

const sizingMedium = NomoSizingTheme(
  fontSizeB1: 16,
  fontSizeB2: 18,
  fontSizeB3: 20,
  fontSizeH1: 22,
  fontSizeH2: 24,
  fontSizeH3: 26,
);

const sizingLarge = NomoSizingTheme(
  maxContentWidth: 1000,
  fontSizeB1: 18,
  fontSizeB2: 20,
  fontSizeB3: 22,
  fontSizeH1: 26,
  fontSizeH2: 28,
  fontSizeH3: 30,
);

enum SizingMode {
  SMALL(600, sizingSmall),
  MEDIUM(1080, sizingMedium),
  LARGE(1440, sizingLarge);

  final double width;
  final NomoSizingTheme theme;

  const SizingMode(this.width, this.theme);
}
