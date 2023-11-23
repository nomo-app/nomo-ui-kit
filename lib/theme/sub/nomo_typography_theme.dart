part of nomo_theme;

class NomoTypographyTheme {
  const NomoTypographyTheme({
    required this.b1,
    required this.b2,
    required this.b3,
    required this.h1,
    required this.h2,
    required this.h3,
  });
  final TextStyle b1;
  final TextStyle b2;
  final TextStyle b3;

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;

  NomoTypographyTheme copyWith({
    NomoColors? colors,
    NomoSizes? sizes,
  }) {
    return NomoTypographyTheme(
      b1: b1.copyWith(
        color: colors?.foreground1,
        fontSize: sizes?.fontSizeB1,
      ),
      b2: b2.copyWith(
        color: colors?.foreground2,
        fontSize: sizes?.fontSizeB2,
      ),
      b3: b3.copyWith(
        color: colors?.foreground3,
        fontSize: sizes?.fontSizeB3,
      ),
      h1: h1.copyWith(
        color: colors?.foreground1,
        fontSize: sizes?.fontSizeH1,
      ),
      h2: h2.copyWith(
        color: colors?.foreground1,
        fontSize: sizes?.fontSizeH2,
      ),
      h3: h3.copyWith(
        color: colors?.foreground1,
        fontSize: sizes?.fontSizeH3,
      ),
    );
  }
}
