library nomo_theme;

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/layout/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/layout/bottom_bar/nomo_bottom_bar.dart';
import 'package:nomo_ui_kit/components/layout/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/layout/scaffold/nomo_scaffold.dart';
import 'package:nomo_ui_kit/components/layout/sider/nomo_sider.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';

export 'dart:ui';

part 'sub/nomo_color_theme.dart';
part 'sub/nomo_sizing_theme.dart';
part 'sub/nomo_typography_theme.dart';
part 'theme_extension.dart';

const primaryColor = Color(0xFFBCA570);
const secondary = Color(0xffd1af72);

class NomoThemeData {
  NomoThemeData({
    required this.colorTheme,
    required this.sizingTheme,
    required NomoTypographyTheme textTheme,
  }) : typographyTheme = textTheme.copyWith(
          colors: colorTheme.colors,
          sizes: sizingTheme.sizes,
        );
  final NomoColorThemeData colorTheme;
  final NomoTypographyTheme typographyTheme;
  final NomoSizingThemeData sizingTheme;

  NomoColors get colors => colorTheme.colors;
  NomoComponentColors get componentColors => colorTheme.components;

  NomoSizes get sizes => sizingTheme.sizes;
  NomoComponentSizes get componentSizes => sizingTheme.components;

  static NomoThemeData lerp(NomoThemeData a, NomoThemeData b, double t) {
    return NomoThemeData(
      colorTheme: NomoColorThemeData.lerp(a.colorTheme, b.colorTheme, t),
      sizingTheme: NomoSizingThemeData.lerp(a.sizingTheme, b.sizingTheme, t),
      textTheme: t < 0.5 ? a.typographyTheme : b.typographyTheme,
    );
  }

  NomoThemeData copyWith({
    NomoColorThemeData? colorTheme,
    NomoTypographyTheme? typographyTheme,
    NomoSizingThemeData? sizingTheme,
  }) {
    return NomoThemeData(
      colorTheme: colorTheme ?? this.colorTheme,
      textTheme: (typographyTheme ?? this.typographyTheme).copyWith(
        colors: colorTheme?.colors,
        sizes: sizingTheme?.sizes,
      ),
      sizingTheme: sizingTheme ?? this.sizingTheme,
    );
  }
}

class NomoTheme extends InheritedWidget {
  const NomoTheme({
    required this.value,
    required super.child,
    super.key,
  });
  final NomoThemeData value;

  static NomoThemeData of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<NomoTheme>();
    assert(result != null, 'No ThemeInfo found in context');
    return result!.value;
  }

  static NomoThemeData? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NomoTheme>()?.value;
  }

  @override
  bool updateShouldNotify(NomoTheme oldWidget) {
    return oldWidget.value != value;
  }
}
