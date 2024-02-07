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
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/dialog/nomo_dialog.dart';
import 'package:nomo_ui_kit/components/expandable/expandable.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/loading/loading.dart';
import 'package:nomo_ui_kit/components/loading/shimmer/shimmer.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/extensions.dart';

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
  final LoadingColorData loadingTheme;
  final ShimmerColorData shimmerTheme;
  final ExpandableColorData expandableTheme;
  final NomoInputColorData inputTheme;
  final NomoDialogColorData dialogTheme;
  final NomoCardColorData cardTheme;

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
    required this.loadingTheme,
    required this.shimmerTheme,
    required this.expandableTheme,
    required this.inputTheme,
    required this.dialogTheme,
    required this.cardTheme,
  });

  static NomoComponentColors defaultComponents(NomoColors core) =>
      defaultConstructor(
        outlineContainerTheme: NomoOutlineContainerThemeData(
          foreground: core.foreground1,
          background: core.background1,
        ),
        appBarTheme: NomoAppBarColorData(
          backgroundColor: core.background1,
        ),
        scaffoldTheme: NomoScaffoldColorData(
          backgroundColor: core.background1,
        ),
        bottomBarTheme: NomoBottomBarColorData(
          background: core.surface,
          borderRadius: BorderRadius.circular(12),
          foreground: core.foreground1,
          selectedForeground: core.primary,
        ),
        secondaryButtonTheme: SecondaryNomoButtonColorData(
          foregroundColor: core.foreground1,
          selectionColor: core.secondary,
        ),
        siderTheme: NomoSiderColorData(
          backgroundColor: core.background1,
        ),
        verticalMenuTheme: NomoVerticalMenuColorData(
          foreground: core.foreground1,
          background: core.background1,
          selectedBackground: core.secondaryContainer,
          selectedForeground: core.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        expandableTheme: ExpandableColorData(
          iconColor: core.foreground1,
        ),
        dialogTheme: NomoDialogColorData(
          backgroundColor: core.surface,
        ),
        primaryButtonTheme: PrimaryNomoButtonColorData(
          backgroundColor: core.primary,
          foregroundColor: core.onPrimary,
        ),
      );
}

class NomoColorThemeData {
  NomoColorThemeData({
    required this.colors,
    required this.key,
    NomoComponentColors Function(NomoColors core) buildComponents =
        NomoComponentColors.defaultComponents,
  }) : components = buildComponents.call(colors);

  NomoColorThemeData._({
    required this.colors,
    required this.components,
    required this.key,
  });

  factory NomoColorThemeData.lerp(
    NomoColorThemeData a,
    NomoColorThemeData b,
    double t,
  ) {
    return NomoColorThemeData._(
      key: t < 0.5 ? a.key : b.key,
      colors: NomoColors.lerp(a.colors, b.colors, t),
      components: lerpNomoComponentColors(a.components, b.components, t),
    );
  }
  final NomoColors colors;
  final NomoComponentColors components;
  final ValueKey key;

  @override
  int get hashCode => key.hashCode;

  @override
  bool operator ==(Object other) {
    return other is NomoColorThemeData && other.key == key;
  }
}

class NomoColors {
  final Color primary;
  final Brightness brightness;
  final Color onPrimary;
  final Color primaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color secondaryContainer;
  final Color background1;
  final Color background2;
  final Color background3;
  final Color surface;
  final Color error;
  final Color disabled;
  final Color onDisabled;
  final Color foreground1;
  final Color foreground2;
  final Color foreground3;

  const NomoColors({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.secondary,
    required this.onSecondary,
    required this.secondaryContainer,
    required this.background1,
    required this.background2,
    required this.background3,
    required this.surface,
    required this.error,
    required this.disabled,
    required this.foreground1,
    required this.foreground2,
    required this.foreground3,
    required this.onDisabled,
  });

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
      background1: Color.lerp(a.background1, b.background1, t)!,
      background2: Color.lerp(a.background2, b.background2, t)!,
      background3: Color.lerp(a.background3, b.background3, t)!,
      surface: Color.lerp(a.surface, b.surface, t)!,
      error: Color.lerp(a.error, b.error, t)!,
      disabled: Color.lerp(a.disabled, b.disabled, t)!,
      foreground1: Color.lerp(a.foreground1, b.foreground1, t)!,
      foreground2: Color.lerp(a.foreground2, b.foreground2, t)!,
      foreground3: Color.lerp(a.foreground3, b.foreground3, t)!,
      onDisabled: Color.lerp(a.onDisabled, b.onDisabled, t)!,
    );
  }

  factory NomoColors.fromJson(Map<String, dynamic> json) {
    return NomoColors(
      primary: Color(_parseColor(json['primary'])),
      brightness: Brightness.values[json['brightness'] as int],
      onPrimary: Color(_parseColor(json['onPrimary'])),
      primaryContainer: Color(_parseColor(json['primaryContainer'])),
      secondary: Color(_parseColor(json['secondary'])),
      onSecondary: Color(_parseColor(json['onSecondary'])),
      secondaryContainer: Color(_parseColor(json['secondaryContainer'])),
      background1: Color(_parseColor(json['background1'])),
      background2: Color(_parseColor(json['background2'])),
      background3: Color(_parseColor(json['background3'])),
      surface: Color(_parseColor(json['surface'])),
      error: Color(_parseColor(json['error'])),
      disabled: Color(_parseColor(json['disabled'])),
      onDisabled: Color(_parseColor(json['onDisabled'])),
      foreground1: Color(_parseColor(json['foreground1'])),
      foreground2: Color(_parseColor(json['foreground2'])),
      foreground3: Color(_parseColor(json['foreground3'])),
    );
  }
  static int _parseColor(dynamic hexColor) {
    if (hexColor is! String || hexColor.isEmpty) {
      return 0xFFFFFFFF; // Default color in case of hexColor is no string
    }
    final String color;
    if (hexColor.startsWith('#')) {
      color = hexColor.replaceFirst('#', '0xff');
    } else {
      color = hexColor;
    }
    final a = int.parse(color);
    return a;
  }

  Map<String, dynamic> toJson() {
    return {
      'primary': primary.toHexColor(),
      'brightness': brightness.index,
      'onPrimary': onPrimary.toHexColor(),
      'primaryContainer': primaryContainer.toHexColor(),
      'secondary': secondary.toHexColor(),
      'onSecondary': onSecondary.toHexColor(),
      'secondaryContainer': secondaryContainer.toHexColor(),
      'background1': background1.toHexColor(),
      'background2': background2.toHexColor(),
      'background3': background3.toHexColor(),
      'surface': surface.toHexColor(),
      'error': error.toHexColor(),
      'disabled': disabled.toHexColor(),
      'onDisabled': onDisabled.toHexColor(),
      'foreground1': foreground1.toHexColor(),
      'foreground2': foreground2.toHexColor(),
      'foreground3': foreground3.toHexColor(),
    };
  }
}
