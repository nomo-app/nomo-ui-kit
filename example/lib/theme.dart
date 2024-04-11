import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nomo_ui_kit/components/app/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/components/app/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_color_theme.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_constants.dart';
import 'package:nomo_ui_kit/theme/sub/nomo_sizing_theme.dart';

enum ColorMode { LIGHT, DARK }

enum SizingMode { SMALL, MEDIUM, LARGE }

class AppThemeDelegate extends NomoThemeDelegate<ColorMode, SizingMode> {
  @override
  NomoConstantsThemeData get constants {
    return NomoConstantsThemeData(
      constants: NomoConstants(),
      componentConstantsBuilder: (core) {
        return const NomoComponentConstants();
      },
    );
  }

  @override
  NomoComponentSizesNullable defaultComponentsSize(NomoSizes core) {
    return const NomoComponentSizesNullable();
  }

  @override
  ColorMode initialColorTheme() {
    return ColorMode.LIGHT;
  }

  @override
  SizingMode sizingThemeBuilder(double width) {
    return switch (width) {
      < 600 => SizingMode.SMALL,
      < 1080 => SizingMode.MEDIUM,
      _ => SizingMode.LARGE,
    };
  }

  @override
  NomoTypographyTheme get typography => NomoTypographyTheme(
        b1: GoogleFonts.roboto(),
        b2: GoogleFonts.roboto(),
        b3: GoogleFonts.roboto(),
        h1: GoogleFonts.inter(),
        h2: GoogleFonts.inter(),
        h3: GoogleFonts.inter(),
      );

  @override
  Map<SizingMode, NomoSizingThemeDataNullable> get sizingThemes {
    return {
      SizingMode.SMALL: NomoSizingThemeDataNullable(
        key: const ValueKey('small'),
        sizes: const NomoSizes(
          fontSizeB1: 10,
          fontSizeB2: 12,
          fontSizeB3: 14,
          fontSizeH1: 16,
          fontSizeH2: 18,
          fontSizeH3: 20,
          spacing1: 4,
          spacing2: 6,
          spacing3: 8,
        ),
        buildComponents: (core) {
          return const NomoComponentSizesNullable(
            scaffoldSizing: NomoScaffoldSizingDataNullable(
              showSider: false,
            ),
          );
        },
      ),
      SizingMode.MEDIUM: NomoSizingThemeDataNullable(
        key: const ValueKey('medium'),
        sizes: const NomoSizes(
          fontSizeB1: 12,
          fontSizeB2: 14,
          fontSizeB3: 16,
          fontSizeH1: 18,
          fontSizeH2: 20,
          fontSizeH3: 22,
          spacing1: 4,
          spacing2: 6,
          spacing3: 8,
        ),
        buildComponents: (core) {
          return const NomoComponentSizesNullable(
            siderSizing: NomoSiderSizingDataNullable(
              width: 200,
            ),
          );
        },
      ),
      SizingMode.LARGE: NomoSizingThemeDataNullable(
        key: const ValueKey('large'),
        sizes: const NomoSizes(
          maxContentWidth: 1000,
          fontSizeB1: 14,
          fontSizeB2: 16,
          fontSizeB3: 18,
          fontSizeH1: 20,
          fontSizeH2: 22,
          fontSizeH3: 24,
          spacing1: 8,
          spacing2: 10,
          spacing3: 12,
        ),
        buildComponents: (core) {
          return const NomoComponentSizesNullable(
            siderSizing: NomoSiderSizingDataNullable(
              width: 200,
            ),
          );
        },
      ),
    };
  }

  @override
  Map<ColorMode, NomoColorThemeDataNullable> get colorThemes {
    return {
      ColorMode.LIGHT: NomoColorThemeDataNullable(
        key: const ValueKey('light'),
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
      ),
      ColorMode.DARK: NomoColorThemeDataNullable(
        key: const ValueKey('dark'),
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
      ),
    };
  }

  @override
  NomoComponentColorsNullable defaultComponentsColor(NomoColors core) {
    return const NomoComponentColorsNullable();
  }
}
