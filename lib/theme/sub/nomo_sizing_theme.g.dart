// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: avoid_init_to_null

part of 'nomo_sizing_theme.dart';

// **************************************************************************
// ThemeUtilGenerator
// **************************************************************************

NomoComponentSizes lerpNomoComponentSizes(
    NomoComponentSizes a, NomoComponentSizes b, double t) {
  return NomoComponentSizes._(
    outlineContainerTheme: NomoOutlineContainerSizingData.lerp(
      a.outlineContainerTheme,
      b.outlineContainerTheme,
      t,
    ),
    appBarTheme: NomoAppBarSizingData.lerp(
      a.appBarTheme,
      b.appBarTheme,
      t,
    ),
    scaffoldTheme: NomoScaffoldSizingData.lerp(
      a.scaffoldTheme,
      b.scaffoldTheme,
      t,
    ),
    bottomBarTheme: NomoBottomBarSizingData.lerp(
      a.bottomBarTheme,
      b.bottomBarTheme,
      t,
    ),
    siderTheme: NomoSiderSizingData.lerp(
      a.siderTheme,
      b.siderTheme,
      t,
    ),
    verticalMenuTheme: NomoVerticalMenuSizingData.lerp(
      a.verticalMenuTheme,
      b.verticalMenuTheme,
      t,
    ),
    routeBodyTheme: NomoRouteBodySizingData.lerp(
      a.routeBodyTheme,
      b.routeBodyTheme,
      t,
    ),
    primaryButtonTheme: PrimaryNomoButtonSizingData.lerp(
      a.primaryButtonTheme,
      b.primaryButtonTheme,
      t,
    ),
    secondaryButtonTheme: SecondaryNomoButtonSizingData.lerp(
      a.secondaryButtonTheme,
      b.secondaryButtonTheme,
      t,
    ),
    textButtonTheme: NomoTextButtonSizingData.lerp(
      a.textButtonTheme,
      b.textButtonTheme,
      t,
    ),
    linkButtonTheme: NomoLinkButtonSizingData.lerp(
      a.linkButtonTheme,
      b.linkButtonTheme,
      t,
    ),
    expandableTheme: ExpandableSizingData.lerp(
      a.expandableTheme,
      b.expandableTheme,
      t,
    ),
  );
}

NomoComponentSizes overrideNomoComponentSizes({
  required NomoSizes core,
  NomoOutlineContainerSizingData? outlineContainerTheme,
  NomoAppBarSizingData? appBarTheme,
  NomoScaffoldSizingData? scaffoldTheme,
  NomoBottomBarSizingData? bottomBarTheme,
  NomoSiderSizingData? siderTheme,
  NomoVerticalMenuSizingData? verticalMenuTheme,
  NomoRouteBodySizingData? routeBodyTheme,
  PrimaryNomoButtonSizingData? primaryButtonTheme,
  SecondaryNomoButtonSizingData? secondaryButtonTheme,
  NomoTextButtonSizingData? textButtonTheme,
  NomoLinkButtonSizingData? linkButtonTheme,
  ExpandableSizingData? expandableTheme,
}) {
  final def = NomoComponentSizes.defaultComponents(core);
  return NomoComponentSizes._(
    outlineContainerTheme: outlineContainerTheme ?? def.outlineContainerTheme,
    appBarTheme: appBarTheme ?? def.appBarTheme,
    scaffoldTheme: scaffoldTheme ?? def.scaffoldTheme,
    bottomBarTheme: bottomBarTheme ?? def.bottomBarTheme,
    siderTheme: siderTheme ?? def.siderTheme,
    verticalMenuTheme: verticalMenuTheme ?? def.verticalMenuTheme,
    routeBodyTheme: routeBodyTheme ?? def.routeBodyTheme,
    primaryButtonTheme: primaryButtonTheme ?? def.primaryButtonTheme,
    secondaryButtonTheme: secondaryButtonTheme ?? def.secondaryButtonTheme,
    textButtonTheme: textButtonTheme ?? def.textButtonTheme,
    linkButtonTheme: linkButtonTheme ?? def.linkButtonTheme,
    expandableTheme: expandableTheme ?? def.expandableTheme,
  );
}

NomoComponentSizes defaultConstructor({
  NomoOutlineContainerSizingData? outlineContainerTheme,
  NomoAppBarSizingData? appBarTheme,
  NomoScaffoldSizingData? scaffoldTheme,
  NomoBottomBarSizingData? bottomBarTheme,
  NomoSiderSizingData? siderTheme,
  NomoVerticalMenuSizingData? verticalMenuTheme,
  NomoRouteBodySizingData? routeBodyTheme,
  PrimaryNomoButtonSizingData? primaryButtonTheme,
  SecondaryNomoButtonSizingData? secondaryButtonTheme,
  NomoTextButtonSizingData? textButtonTheme,
  NomoLinkButtonSizingData? linkButtonTheme,
  ExpandableSizingData? expandableTheme,
}) {
  return NomoComponentSizes._(
    outlineContainerTheme:
        outlineContainerTheme ?? const NomoOutlineContainerSizingData(),
    appBarTheme: appBarTheme ?? const NomoAppBarSizingData(),
    scaffoldTheme: scaffoldTheme ?? const NomoScaffoldSizingData(),
    bottomBarTheme: bottomBarTheme ?? const NomoBottomBarSizingData(),
    siderTheme: siderTheme ?? const NomoSiderSizingData(),
    verticalMenuTheme: verticalMenuTheme ?? const NomoVerticalMenuSizingData(),
    routeBodyTheme: routeBodyTheme ?? const NomoRouteBodySizingData(),
    primaryButtonTheme:
        primaryButtonTheme ?? const PrimaryNomoButtonSizingData(),
    secondaryButtonTheme:
        secondaryButtonTheme ?? const SecondaryNomoButtonSizingData(),
    textButtonTheme: textButtonTheme ?? const NomoTextButtonSizingData(),
    linkButtonTheme: linkButtonTheme ?? const NomoLinkButtonSizingData(),
    expandableTheme: expandableTheme ?? const ExpandableSizingData(),
  );
}
