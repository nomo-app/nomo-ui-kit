import 'package:flutter/widgets.dart';
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
import 'package:nomo_ui_kit/components/expandable/expandable.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_menu.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_sizing_theme.g.dart';

class NomoSizes {
  const NomoSizes({
    required this.fontSizeB1,
    required this.fontSizeB2,
    required this.fontSizeB3,
    required this.fontSizeH1,
    required this.fontSizeH2,
    required this.fontSizeH3,
    required this.spacing1,
    required this.spacing2,
    required this.spacing3,
    this.maxContentWidth,
  });
  final double? maxContentWidth;

  final double fontSizeB1;
  final double fontSizeB2;
  final double fontSizeB3;

  final double fontSizeH1;
  final double fontSizeH2;
  final double fontSizeH3;

  final double spacing1;
  final double spacing2;
  final double spacing3;

  static NomoSizes lerp(NomoSizes a, NomoSizes b, double t) {
    return NomoSizes(
      maxContentWidth: lerpDouble(
        a.maxContentWidth ?? b.maxContentWidth,
        b.maxContentWidth ?? a.maxContentWidth,
        t,
      ),
      fontSizeB1: lerpDouble(a.fontSizeB1, b.fontSizeB1, t)!,
      fontSizeB2: lerpDouble(a.fontSizeB2, b.fontSizeB2, t)!,
      fontSizeB3: lerpDouble(a.fontSizeB3, b.fontSizeB3, t)!,
      fontSizeH1: lerpDouble(a.fontSizeH1, b.fontSizeH1, t)!,
      fontSizeH2: lerpDouble(a.fontSizeH2, b.fontSizeH2, t)!,
      fontSizeH3: lerpDouble(a.fontSizeH3, b.fontSizeH3, t)!,
      spacing1: lerpDouble(a.spacing1, b.spacing1, t)!,
      spacing2: lerpDouble(a.spacing2, b.spacing2, t)!,
      spacing3: lerpDouble(a.spacing3, b.spacing3, t)!,
    );
  }

  factory NomoSizes.fromJson(Map<String, dynamic> json) {
    return NomoSizes(
      maxContentWidth: json['maxContentWidth'] as double?,
      fontSizeB1: json['fontSizeB1'] as double,
      fontSizeB2: json['fontSizeB2'] as double,
      fontSizeB3: json['fontSizeB3'] as double,
      fontSizeH1: json['fontSizeH1'] as double,
      fontSizeH2: json['fontSizeH2'] as double,
      fontSizeH3: json['fontSizeH3'] as double,
      spacing1: json['spacing1'] as double,
      spacing2: json['spacing2'] as double,
      spacing3: json['spacing3'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'maxContentWidth': maxContentWidth,
      'fontSizeB1': fontSizeB1,
      'fontSizeB2': fontSizeB2,
      'fontSizeB3': fontSizeB3,
      'fontSizeH1': fontSizeH1,
      'fontSizeH2': fontSizeH2,
      'fontSizeH3': fontSizeH3,
      'spacing1': spacing1,
      'spacing2': spacing2,
      'spacing3': spacing3,
    };
  }
}

@NomoThemeUtils('NomoSizes')
class NomoComponentSizes {
  final NomoOutlineContainerSizingData outlineContainerTheme;
  final NomoAppBarSizingData appBarTheme;
  final NomoScaffoldSizingData scaffoldTheme;
  final NomoBottomBarSizingData bottomBarTheme;
  final NomoSiderSizingData siderTheme;
  final NomoVerticalMenuSizingData verticalMenuTheme;
  final NomoRouteBodySizingData routeBodyTheme;
  final PrimaryNomoButtonSizingData primaryButtonTheme;
  final SecondaryNomoButtonSizingData secondaryButtonTheme;
  final NomoTextButtonSizingData textButtonTheme;
  final NomoLinkButtonSizingData linkButtonTheme;
  final ExpandableSizingData expandableTheme;
  final NomoInputSizingData inputTheme;
  final NomoDialogSizingData dialogTheme;
  final NomoCardSizingData cardTheme;

  const NomoComponentSizes._({
    required this.outlineContainerTheme,
    required this.appBarTheme,
    required this.scaffoldTheme,
    required this.bottomBarTheme,
    required this.siderTheme,
    required this.verticalMenuTheme,
    required this.routeBodyTheme,
    required this.primaryButtonTheme,
    required this.secondaryButtonTheme,
    required this.textButtonTheme,
    required this.linkButtonTheme,
    required this.expandableTheme,
    required this.inputTheme,
    required this.dialogTheme,
    required this.cardTheme,
  });

  static NomoComponentSizes defaultComponents(NomoSizes core) =>
      defaultConstructor(
        outlineContainerTheme: const NomoOutlineContainerSizingData(
          padding: EdgeInsets.all(32),
        ),
        primaryButtonTheme: const PrimaryNomoButtonSizingData(
          padding: EdgeInsets.symmetric(vertical: 12),
        ),
      );
}

class NomoSizingThemeData {
  NomoSizingThemeData({
    required this.key,
    required this.sizes,
    NomoComponentSizes Function(NomoSizes core) buildComponents =
        NomoComponentSizes.defaultComponents,
  }) : components = buildComponents(sizes);

  NomoSizingThemeData._({
    required this.sizes,
    required this.components,
    required this.key,
  });
  final NomoSizes sizes;
  final NomoComponentSizes components;
  final ValueKey key;

  @override
  int get hashCode => key.hashCode;

  @override
  bool operator ==(Object other) {
    return other is NomoSizingThemeData && other.key == key;
  }

  static NomoSizingThemeData lerp(
    NomoSizingThemeData a,
    NomoSizingThemeData b,
    double t,
  ) {
    return NomoSizingThemeData._(
      key: t < 0.5 ? a.key : b.key,
      sizes: NomoSizes.lerp(a.sizes, b.sizes, t),
      components: lerpNomoComponentSizes(a.components, b.components, t),
    );
  }
}
