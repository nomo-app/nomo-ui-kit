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
import 'package:nomo_ui_kit/components/dialog/nomo_dialog.dart';
import 'package:nomo_ui_kit/components/expandable/expandable.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/loading/loading.dart';
import 'package:nomo_ui_kit/components/loading/shimmer/shimmer.dart';
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
  final LoadingColorData loadingTheme;
  final ShimmerColorData shimmerTheme;
  final ExpandableColorData expandableTheme;
  final NomoInputColorData inputTheme;
  final NomoDialogColorData dialogTheme;

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
          borderRadius: BorderRadius.circular(8),
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
          selectedBackground: core.primary.lighten(0.25),
          selectedForeground: core.primary,
          borderRadius: BorderRadius.circular(6),
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
      primary: Color(json['primary'] as int),
      brightness: Brightness.values[json['brightness'] as int],
      onPrimary: Color(json['onPrimary'] as int),
      primaryContainer: Color(json['primaryContainer'] as int),
      secondary: Color(json['secondary'] as int),
      onSecondary: Color(json['onSecondary'] as int),
      secondaryContainer: Color(json['secondaryContainer'] as int),
      background1: Color(json['background1'] as int),
      background2: Color(json['background2'] as int),
      background3: Color(json['background3'] as int),
      surface: Color(json['surface'] as int),
      error: Color(json['error'] as int),
      disabled: Color(json['disabled'] as int),
      onDisabled: Color(json['onDisabled'] as int),
      foreground1: Color(json['foreground1'] as int),
      foreground2: Color(json['foreground2'] as int),
      foreground3: Color(json['foreground3'] as int),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'primary': primary.value,
      'brightness': brightness.index,
      'onPrimary': onPrimary.value,
      'primaryContainer': primaryContainer.value,
      'secondary': secondary.value,
      'onSecondary': onSecondary.value,
      'secondaryContainer': secondaryContainer.value,
      'background1': background1.value,
      'background2': background2.value,
      'background3': background3.value,
      'surface': surface.value,
      'error': error.value,
      'disabled': disabled.value,
      'onDisabled': onDisabled.value,
      'foreground1': foreground1.value,
      'foreground2': foreground2.value,
      'foreground3': foreground3.value,
    };
  }
}
