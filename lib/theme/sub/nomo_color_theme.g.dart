// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_init_to_null

part of 'nomo_color_theme.dart';

// **************************************************************************
// ThemeUtilGenerator
// **************************************************************************

NomoComponentColors lerpNomoComponentColors(
    NomoComponentColors a, NomoComponentColors b, double t) {
  return NomoComponentColors._(
    outlineContainerTheme: NomoOutlineContainerColorData.lerp(
      a.outlineContainerTheme,
      b.outlineContainerTheme,
      t,
    ),
    appBarTheme: NomoAppBarColorData.lerp(
      a.appBarTheme,
      b.appBarTheme,
      t,
    ),
    scaffoldTheme: NomoScaffoldColorData.lerp(
      a.scaffoldTheme,
      b.scaffoldTheme,
      t,
    ),
    bottomBarTheme: NomoBottomBarColorData.lerp(
      a.bottomBarTheme,
      b.bottomBarTheme,
      t,
    ),
    siderTheme: NomoSiderColorData.lerp(
      a.siderTheme,
      b.siderTheme,
      t,
    ),
    verticalMenuTheme: NomoVerticalMenuColorData.lerp(
      a.verticalMenuTheme,
      b.verticalMenuTheme,
      t,
    ),
    primaryButtonTheme: PrimaryNomoButtonColorData.lerp(
      a.primaryButtonTheme,
      b.primaryButtonTheme,
      t,
    ),
    secondaryButtonTheme: SecondaryNomoButtonColorData.lerp(
      a.secondaryButtonTheme,
      b.secondaryButtonTheme,
      t,
    ),
    textButtonTheme: NomoTextButtonColorData.lerp(
      a.textButtonTheme,
      b.textButtonTheme,
      t,
    ),
    linkButtonTheme: NomoLinkButtonColorData.lerp(
      a.linkButtonTheme,
      b.linkButtonTheme,
      t,
    ),
  );
}

NomoComponentColors overrideNomoComponentColors({
  required NomoColors core,
  NomoOutlineContainerColorData? outlineContainerTheme,
  NomoAppBarColorData? appBarTheme,
  NomoScaffoldColorData? scaffoldTheme,
  NomoBottomBarColorData? bottomBarTheme,
  NomoSiderColorData? siderTheme,
  NomoVerticalMenuColorData? verticalMenuTheme,
  PrimaryNomoButtonColorData? primaryButtonTheme,
  SecondaryNomoButtonColorData? secondaryButtonTheme,
  NomoTextButtonColorData? textButtonTheme,
  NomoLinkButtonColorData? linkButtonTheme,
}) {
  final def = NomoComponentColors.defaultComponents(core);
  return NomoComponentColors._(
    outlineContainerTheme: outlineContainerTheme ?? def.outlineContainerTheme,
    appBarTheme: appBarTheme ?? def.appBarTheme,
    scaffoldTheme: scaffoldTheme ?? def.scaffoldTheme,
    bottomBarTheme: bottomBarTheme ?? def.bottomBarTheme,
    siderTheme: siderTheme ?? def.siderTheme,
    verticalMenuTheme: verticalMenuTheme ?? def.verticalMenuTheme,
    primaryButtonTheme: primaryButtonTheme ?? def.primaryButtonTheme,
    secondaryButtonTheme: secondaryButtonTheme ?? def.secondaryButtonTheme,
    textButtonTheme: textButtonTheme ?? def.textButtonTheme,
    linkButtonTheme: linkButtonTheme ?? def.linkButtonTheme,
  );
}

NomoComponentColors defaultConstructor({
  NomoOutlineContainerColorData? outlineContainerTheme,
  NomoAppBarColorData? appBarTheme,
  NomoScaffoldColorData? scaffoldTheme,
  NomoBottomBarColorData? bottomBarTheme,
  NomoSiderColorData? siderTheme,
  NomoVerticalMenuColorData? verticalMenuTheme,
  PrimaryNomoButtonColorData? primaryButtonTheme,
  SecondaryNomoButtonColorData? secondaryButtonTheme,
  NomoTextButtonColorData? textButtonTheme,
  NomoLinkButtonColorData? linkButtonTheme,
}) {
  return NomoComponentColors._(
    outlineContainerTheme:
        outlineContainerTheme ?? const NomoOutlineContainerColorData(),
    appBarTheme: appBarTheme ?? const NomoAppBarColorData(),
    scaffoldTheme: scaffoldTheme ?? const NomoScaffoldColorData(),
    bottomBarTheme: bottomBarTheme ?? const NomoBottomBarColorData(),
    siderTheme: siderTheme ?? const NomoSiderColorData(),
    verticalMenuTheme: verticalMenuTheme ?? const NomoVerticalMenuColorData(),
    primaryButtonTheme:
        primaryButtonTheme ?? const PrimaryNomoButtonColorData(),
    secondaryButtonTheme:
        secondaryButtonTheme ?? const SecondaryNomoButtonColorData(),
    textButtonTheme: textButtonTheme ?? const NomoTextButtonColorData(),
    linkButtonTheme: linkButtonTheme ?? const NomoLinkButtonColorData(),
  );
}
