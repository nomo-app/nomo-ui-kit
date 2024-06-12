import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/app/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/app/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/app/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/components/app/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/buttons/link/nomo_link_button.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/buttons/secondary/nomo_secondary_button.dart';
import 'package:nomo_ui_kit/components/buttons/text/nomo_text_button.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/dialog/nomo_dialog.dart';
import 'package:nomo_ui_kit/components/divider/nomo_divider.dart';
import 'package:nomo_ui_kit/components/expandable/expandable.dart';
import 'package:nomo_ui_kit/components/info_item/nomo_info_item.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/loading/loading.dart';
import 'package:nomo_ui_kit/components/loading/shimmer/shimmer.dart';
import 'package:nomo_ui_kit/components/notification/nomo_notification.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/snackbar/nomo_snackbar.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/utils/extensions.dart';

part 'nomo_color_theme.g.dart';

@NomoThemeUtils(
  'NomoComponentColors',
)
// ignore: unused_element
const _ = [
  NomoOutlineContainerColorData,
  NomoAppBarColorData,
  NomoScaffoldColorData,
  NomoBottomBarColorData,
  NomoSiderColorData,
  NomoVerticalMenuColorData,
  PrimaryNomoButtonColorData,
  SecondaryNomoButtonColorData,
  NomoTextButtonColorData,
  NomoLinkButtonColorData,
  LoadingColorData,
  ShimmerColorData,
  ExpandableColorData,
  NomoInputColorData,
  NomoDialogColorData,
  NomoCardColorData,
  NomoDividerColorData,
  NomoInfoItemColorData,
  NomoNotificationColorData,
  NomoRouteBodyColorData,
  NomoSnackBarColorData,
];

NomoComponentColors predefinedComponentColors(NomoColors colors) {
  return NomoComponentColors(
    appBarColor: NomoAppBarColorData(
      backgroundColor: colors.surface,
    ),
    siderColor: NomoSiderColorData(
      backgroundColor: colors.surface,
      border: const Border.fromBorderSide(BorderSide.none),
    ),
    verticalMenuColor: NomoVerticalMenuColorData(
      background: colors.surface,
      selectedBackground: colors.primaryContainer,
      foreground: colors.foreground1,
      selectedForeground: colors.primary,
    ),
    bottomBarColor: NomoBottomBarColorData(
      background: colors.surface,
      foreground: colors.foreground1,
      selectedForeground: colors.primary,
    ),
    scaffoldColor: NomoScaffoldColorData(
      backgroundColor: colors.background1,
    ),
    cardColor: NomoCardColorData(
      backgroundColor: colors.surface,
      border: const Border.fromBorderSide(BorderSide.none),
    ),
    dialogColor: NomoDialogColorData(
      backgroundColor: colors.surface,
    ),
    inputColor: NomoInputColorData(
      background: colors.background2,
      border: const Border.fromBorderSide(BorderSide.none),
      borderRadius: BorderRadius.circular(12),
      errorColor: colors.error,
    ),
    primaryButtonColor: PrimaryNomoButtonColorData(
      backgroundColor: colors.primary,
      foregroundColor: colors.onPrimary,
      borderRadius: BorderRadius.circular(12),
    ),
    secondaryButtonColor: SecondaryNomoButtonColorData(
      backgroundColor: colors.secondary,
      foregroundColor: colors.onSecondary,
      borderRadius: BorderRadius.circular(12),
    ),
    textButtonColor: NomoTextButtonColorData(
      foregroundColor: colors.foreground1,
    ),
    outlineContainerColor: NomoOutlineContainerColorData(
      background: colors.background2,
    ),
    loadingColor: LoadingColorData(
      color: colors.primary,
    ),
  );
}

@immutable
class NomoColorThemeData implements NomoColorThemeDataNullable {
  const NomoColorThemeData({
    required this.colors,
    required this.key,
    required this.components,
  });

  factory NomoColorThemeData.lerp(
    NomoColorThemeData a,
    NomoColorThemeData b,
    double t,
  ) {
    return NomoColorThemeData(
      key: t < 0.5 ? a.key : b.key,
      colors: NomoColors.lerp(a.colors, b.colors, t),
      components: lerpNomoComponentColors(a.components, b.components, t),
    );
  }
  @override
  final NomoColors colors;
  @override
  final NomoComponentColors components;
  @override
  final ValueKey<Object> key;

  @override
  int get hashCode => key.hashCode;

  @override
  bool operator ==(Object other) {
    return other is NomoColorThemeData && other.key == key;
  }
}

class NomoColorThemeDataNullable {
  final NomoColors colors;
  final NomoComponentColorsNullable? components;
  final ValueKey<Object> key;

  NomoColorThemeDataNullable({
    required this.colors,
    required this.key,
    NomoComponentColorsNullable Function(NomoColors core)? buildComponents,
  }) : components = buildComponents?.call(colors);

  static NomoColorThemeData convert(
    NomoColorThemeDataNullable data,
    NomoComponentColors defaultComponents,
  ) {
    return NomoColorThemeData(
      key: data.key,
      colors: data.colors,
      components: defaultComponents.overrideWith(data.components),
    );
  }
}

@immutable
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

  NomoColors copyWith({
    Brightness? brightness,
    Color? primary,
    Color? onPrimary,
    Color? primaryContainer,
    Color? secondary,
    Color? onSecondary,
    Color? secondaryContainer,
    Color? background1,
    Color? background2,
    Color? background3,
    Color? surface,
    Color? error,
    Color? disabled,
    Color? onDisabled,
    Color? foreground1,
    Color? foreground2,
    Color? foreground3,
  }) {
    return NomoColors(
      brightness: brightness ?? this.brightness,
      primary: primary ?? this.primary,
      onPrimary: onPrimary ?? this.onPrimary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      secondary: secondary ?? this.secondary,
      onSecondary: onSecondary ?? this.onSecondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      background1: background1 ?? this.background1,
      background2: background2 ?? this.background2,
      background3: background3 ?? this.background3,
      surface: surface ?? this.surface,
      error: error ?? this.error,
      disabled: disabled ?? this.disabled,
      onDisabled: onDisabled ?? this.onDisabled,
      foreground1: foreground1 ?? this.foreground1,
      foreground2: foreground2 ?? this.foreground2,
      foreground3: foreground3 ?? this.foreground3,
    );
  }

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

  @override
  int get hashCode => Object.hashAll([
        primary,
        brightness,
        onPrimary,
        primaryContainer,
        secondary,
        onSecondary,
        secondaryContainer,
        background1,
        background2,
        background3,
        surface,
        error,
        disabled,
        onDisabled,
        foreground1,
        foreground2,
        foreground3,
      ]);
  @override
  bool operator ==(Object other) {
    return other is NomoColors &&
        other.primary == primary &&
        other.brightness == brightness &&
        other.onPrimary == onPrimary &&
        other.primaryContainer == primaryContainer &&
        other.secondary == secondary &&
        other.onSecondary == onSecondary &&
        other.secondaryContainer == secondaryContainer &&
        other.background1 == background1 &&
        other.background2 == background2 &&
        other.background3 == background3 &&
        other.surface == surface &&
        other.error == error &&
        other.disabled == disabled &&
        other.onDisabled == onDisabled &&
        other.foreground1 == foreground1 &&
        other.foreground2 == foreground2 &&
        other.foreground3 == foreground3;
  }
}
