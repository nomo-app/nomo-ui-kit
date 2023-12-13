// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_color_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_constants.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';

final typography = NomoTypographyTheme(
  b1: GoogleFonts.roboto(),
  b2: GoogleFonts.roboto(),
  b3: GoogleFonts.roboto(),
  h1: GoogleFonts.nunito(),
  h2: GoogleFonts.nunito(),
  h3: GoogleFonts.nunito(),
);

const constants = NomoComponentConstants(
  inputTheme: NomoInputConstants(
    duration: Duration(milliseconds: 200),
  ),
);

enum ColorMode {
  LIGHT('Nomo Light', "assets/images/light/registrationbackground.png"),
  DARK('Nomo Dark', "assets/images/dark/registrationbackground.png"),
  AVINOC('AVINOC', "assets/images/avinoc/registrationbackground.png");

  final String displayName;
  final String imagePath;

  const ColorMode(this.displayName, this.imagePath);

  NomoColorThemeData get theme => switch (this) {
        ColorMode.LIGHT => light,
        ColorMode.DARK => dark,
        ColorMode.AVINOC => avinoc,
      };
}

extension ColorTypeExt on NomoColorThemeData {
  ColorMode get type {
    return ColorMode.values.firstWhere(
      (element) => element.theme == this,
      orElse: () => ColorMode.LIGHT,
    );
  }

  bool get isLight => type == ColorMode.LIGHT;
  bool get isDark => type == ColorMode.DARK;
  bool get isAvinoc => type == ColorMode.AVINOC;

  Color get borderColor => Colors.white24;
}

final light = NomoColorThemeData(
  colors: const NomoColors(
    primary: primaryColor,
    onPrimary: Colors.white,
    primaryContainer: Color(0xffFCFAF7),
    secondary: secondary,
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xffe6d0a3),
    background1: Color(0xFFF5F5F5),
    background2: Color(0xFFE0E0E0),
    background3: Color(0xFFBDBDBD),
    surface: Colors.white,
    error: Colors.redAccent,
    disabled: Color(0xFFE0E0E0),
    foreground1: Color(0xCF000000),
    foreground2: Color(0xDF000000),
    foreground3: Color(0xEF000000),
    brightness: Brightness.light,
    onDisabled: Colors.grey,
  ),
  buildComponents: (core) {
    return overrideNomoComponentColors(
      core: core,
      outlineContainerTheme: NomoOutlineContainerColorData(
        background: core.background1.darken(0.05),
      ),
    );
  },
);

final dark = NomoColorThemeData(
  colors: const NomoColors(
    primary: primaryColor,
    onPrimary: Colors.white,
    primaryContainer: Color(0xffFCFAF7),
    secondary: secondary,
    onSecondary: Color(0xff000000),
    secondaryContainer: Color(0xffe6d0a3),
    background1: Color(0xff293138),
    background2: Color(0xff1e2428),
    background3: Color(0xff13191d),
    surface: Color(0xff2e363c),
    error: Colors.redAccent,
    disabled: Color(0xFFE0E0E0),
    foreground1: Color(0xEAFFFFFF),
    foreground2: Color(0xF0FFFFFF),
    foreground3: Color(0xFAFFFFFF),
    brightness: Brightness.dark,
    onDisabled: Colors.grey,
  ),
  buildComponents: (core) {
    return overrideNomoComponentColors(
      core: core,
      outlineContainerTheme: NomoOutlineContainerColorData(
        background: core.background1.lighten(0.05),
        border: const Border.fromBorderSide(
          BorderSide(
            color: Colors.white24,
          ),
        ),
      ),
    );
  },
);

final avinoc = NomoColorThemeData(
  colors: const NomoColors(
    primary: Color(0xff2FAAA5),
    onPrimary: Colors.white,
    primaryContainer: Color.fromARGB(255, 202, 255, 253),
    secondary: Color(0xff2FAAA5),
    onSecondary: Color(0xff1C1C1C),
    secondaryContainer: Color(0xff1C1C1C),
    background1: Color(0xff272F4A),
    background2: Color(0xff1C1C1C),
    background3: Color(0xff13191d),
    surface: Color(0xFF101d42),
    error: Colors.redAccent,
    disabled: Color(0xFFE0E0E0),
    foreground1: Color(0xEAFFFFFF),
    foreground2: Color(0xF0FFFFFF),
    foreground3: Color(0xFAFFFFFF),
    brightness: Brightness.dark,
    onDisabled: Colors.grey,
  ),
);

final sizingSmall = NomoSizingThemeData(
  sizes: const NomoSizes(
    fontSizeB1: 10,
    fontSizeB2: 12,
    fontSizeB3: 14,
    fontSizeH1: 16,
    fontSizeH2: 18,
    fontSizeH3: 20,
  ),
  buildComponents: (core) => overrideNomoComponentSizes(
    core: core,
    outlineContainerTheme: const NomoOutlineContainerSizingData(
      padding: EdgeInsets.all(4),
      spacing: 4,
    ),
    appBarTheme: const NomoAppBarSizingData(),
    scaffoldTheme: const NomoScaffoldSizingData(
      showBottomBar: true,
      showSider: false,
    ),
    routeBodyTheme: const NomoRouteBodySizingData(
      padding: EdgeInsets.all(16),
    ),
  ),
);

final sizingMedium = NomoSizingThemeData(
  sizes: const NomoSizes(
    fontSizeB1: 12,
    fontSizeB2: 14,
    fontSizeB3: 16,
    fontSizeH1: 18,
    fontSizeH2: 20,
    fontSizeH3: 22,
  ),
  buildComponents: (core) {
    return overrideNomoComponentSizes(
      core: core,
      outlineContainerTheme: const NomoOutlineContainerSizingData(
        padding: EdgeInsets.all(8),
        spacing: 8,
      ),
      appBarTheme: const NomoAppBarSizingData(),
      scaffoldTheme: const NomoScaffoldSizingData(
        showSider: false,
      ),
      routeBodyTheme: const NomoRouteBodySizingData(
        padding: EdgeInsets.all(24),
      ),
    );
  },
);

final sizingLarge = NomoSizingThemeData(
  sizes: const NomoSizes(
    maxContentWidth: 1000,
    fontSizeB1: 14,
    fontSizeB2: 16,
    fontSizeB3: 18,
    fontSizeH1: 20,
    fontSizeH2: 22,
    fontSizeH3: 24,
  ),
  buildComponents: (core) {
    return overrideNomoComponentSizes(
      core: core,
      siderTheme: const NomoSiderThemeData(
        padding: EdgeInsets.all(4),
        width: 200,
      ),
      routeBodyTheme: const NomoRouteBodySizingData(
        padding: EdgeInsets.all(32),
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
