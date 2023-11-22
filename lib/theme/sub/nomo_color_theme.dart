import 'package:flutter/widgets.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/app/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/app/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/app/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/components/app/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/buttons/link/nomo_link_button.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/buttons/secondary/nomo_secondary_button.dart';
import 'package:nomo_ui_kit/components/buttons/text/nomo_text_button.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_color_theme.g.dart';

@NomoThemeUtils('NomoColors')
class NomoComponentColors {
  final NomoOutlineContainerColorData outlineContainerTheme;
  final NomoAppBarColorData appBarTheme;
  final NomoScaffoldColorData scaffoldTheme;
  final NomoBottomBarColorData bottomBarTheme;
  final NomoSiderColorData siderTheme;
  final NomoVerticalMenuColorData verticalMenuTheme;
  final PrimaryNomoButtonColorData primaryButtonTheme;
  final SecondaryNomoButtonColorData secondaryButtonTheme;
  final NomoTextButtonColorData textButtonTheme;
  final NomoLinkButtonColorData linkButtonTheme;

  const NomoComponentColors._({
    required this.outlineContainerTheme,
    required this.appBarTheme,
    required this.scaffoldTheme,
    required this.bottomBarTheme,
    required this.siderTheme,
    required this.verticalMenuTheme,
    required this.primaryButtonTheme,
    required this.secondaryButtonTheme,
    required this.textButtonTheme,
    required this.linkButtonTheme,
  });

  static NomoComponentColors defaultComponents(NomoColors core) =>
      defaultConstructor(
        outlineContainerTheme: NomoOutlineContainerThemeData(
          foreground: core.foreground1,
          background: core.background,
        ),
        appBarTheme: NomoAppBarColorData(
          backgroundColor: core.background,
        ),
        scaffoldTheme: NomoScaffoldColorData(
          backgroundColor: core.background,
        ),
        bottomBarTheme: NomoBottomBarColorData(
          background: core.primaryContainer,
          borderRadius: BorderRadius.circular(8),
          foreground: core.foreground1,
          selectedForeground: core.primary,
        ),
        siderTheme: NomoSiderColorData(
          backgroundColor: core.background,
        ),
        verticalMenuTheme: NomoVerticalMenuColorData(
          foreground: core.foreground1,
          background: core.background,
          selectedBackground: core.primary.lighten(0.25),
          selectedForeground: core.primary,
          borderRadius: BorderRadius.circular(6),
        ),
      );
}

class NomoColorThemeData {
  NomoColorThemeData({
    required this.colors,
    NomoComponentColors Function(NomoColors core) buildComponents =
        NomoComponentColors.defaultComponents,
  }) : components = buildComponents.call(colors);

  NomoColorThemeData._({
    required this.colors,
    required this.components,
  });

  factory NomoColorThemeData.lerp(
    NomoColorThemeData a,
    NomoColorThemeData b,
    double t,
  ) {
    return NomoColorThemeData._(
      colors: NomoColors.lerp(a.colors, b.colors, t),
      components: lerpNomoComponentColors(a.components, b.components, t),
    );
  }
  final NomoColors colors;
  final NomoComponentColors components;
}

class NomoColors {
  const NomoColors({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.background,
    required this.surface,
    required this.error,
    required this.disabledColor,
    required this.foreground1,
    required this.foreground2,
    required this.foreground3,
  });
  final Brightness brightness;

  /// Primary color
  final Color primary;

  /// Color on primary
  final Color onPrimary;
  final Color primaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color background;
  final Color surface;
  final Color error;
  final Color disabledColor;
  final Color foreground1;
  final Color foreground2;
  final Color foreground3;

  factory NomoColors.lerp(NomoColors a, NomoColors b, double t) {
    return NomoColors(
      brightness: t < 0.5 ? a.brightness : b.brightness,
      primary: Color.lerp(a.primary, b.primary, t)!,
      onPrimary: Color.lerp(a.onPrimary, b.onPrimary, t)!,
      primaryContainer: Color.lerp(a.primaryContainer, b.primaryContainer, t)!,
      secondary: Color.lerp(a.secondary, b.secondary, t)!,
      onSecondary: Color.lerp(a.onSecondary, b.onSecondary, t)!,
      secondaryContainer:
          Color.lerp(a.secondaryContainer, b.secondaryContainer, t)!,
      background: Color.lerp(a.background, b.background, t)!,
      surface: Color.lerp(a.surface, b.surface, t)!,
      error: Color.lerp(a.error, b.error, t)!,
      disabledColor: Color.lerp(a.disabledColor, b.disabledColor, t)!,
      foreground1: Color.lerp(a.foreground1, b.foreground1, t)!,
      foreground2: Color.lerp(a.foreground2, b.foreground2, t)!,
      foreground3: Color.lerp(a.foreground3, b.foreground3, t)!,
    );
  }
}
