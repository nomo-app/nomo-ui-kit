// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nomo_color_theme.dart';

// **************************************************************************
// ThemeUtilGenerator
// **************************************************************************

// ignore_for_file: prefer_constructors_over_static_methods,avoid_unused_constructor_parameters, require_trailing_commas, avoid_init_to_null
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
    loadingTheme: LoadingColorData.lerp(
      a.loadingTheme,
      b.loadingTheme,
      t,
    ),
    shimmerTheme: ShimmerColorData.lerp(
      a.shimmerTheme,
      b.shimmerTheme,
      t,
    ),
    expandableTheme: ExpandableColorData.lerp(
      a.expandableTheme,
      b.expandableTheme,
      t,
    ),
    inputTheme: NomoInputColorData.lerp(
      a.inputTheme,
      b.inputTheme,
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
  LoadingColorData? loadingTheme,
  ShimmerColorData? shimmerTheme,
  ExpandableColorData? expandableTheme,
  NomoInputColorData? inputTheme,
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
    loadingTheme: loadingTheme ?? def.loadingTheme,
    shimmerTheme: shimmerTheme ?? def.shimmerTheme,
    expandableTheme: expandableTheme ?? def.expandableTheme,
    inputTheme: inputTheme ?? def.inputTheme,
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
  LoadingColorData? loadingTheme,
  ShimmerColorData? shimmerTheme,
  ExpandableColorData? expandableTheme,
  NomoInputColorData? inputTheme,
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
    loadingTheme: loadingTheme ?? const LoadingColorData(),
    shimmerTheme: shimmerTheme ?? const ShimmerColorData(),
    expandableTheme: expandableTheme ?? const ExpandableColorData(),
    inputTheme: inputTheme ?? const NomoInputColorData(),
  );
}
