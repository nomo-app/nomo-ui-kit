part of nomo_theme;

class NomoTypographyTheme {
  final TextStyle b1;
  final TextStyle b2;
  final TextStyle b3;

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;

  const NomoTypographyTheme({
    required this.b1,
    required this.b2,
    required this.b3,
    required this.h1,
    required this.h2,
    required this.h3,
  });

  NomoTypographyTheme copyWith({
    NomoColorTheme? colorTheme,
    NomoSizingTheme? sizingTheme,
  }) {
    return NomoTypographyTheme(
      b1: b1.copyWith(
        color: colorTheme?.foreground1,
        fontSize: sizingTheme?.fontSizeB1,
      ),
      b2: b2.copyWith(
        color: colorTheme?.foreground2,
        fontSize: sizingTheme?.fontSizeB2,
      ),
      b3: b3.copyWith(
        color: colorTheme?.foreground3,
        fontSize: sizingTheme?.fontSizeB3,
      ),
      h1: h1.copyWith(
        color: colorTheme?.foreground1,
        fontSize: sizingTheme?.fontSizeH1,
      ),
      h2: h2.copyWith(
        color: colorTheme?.foreground1,
        fontSize: sizingTheme?.fontSizeH2,
      ),
      h3: h3.copyWith(
        color: colorTheme?.foreground1,
        fontSize: sizingTheme?.fontSizeH3,
      ),
    );
  }
}

final typography = NomoTypographyTheme(
  b1: GoogleFonts.inter(),
  b2: GoogleFonts.inter(),
  b3: GoogleFonts.inter(),
  h1: GoogleFonts.inter(),
  h2: GoogleFonts.inter(),
  h3: GoogleFonts.inter(),
);
