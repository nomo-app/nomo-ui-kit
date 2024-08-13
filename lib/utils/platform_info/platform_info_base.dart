abstract class BasePlatformInfo {
  final bool isDesktop;
  final bool isCupertino;
  final bool isMaterial;
  final bool isWeb;
  final bool isLinux;
  final bool isAndroid;
  final bool isIOS;
  final bool isMacOS;
  final bool isWindows;
  final bool isMobile;

  const BasePlatformInfo({
    required this.isWeb,
    this.isDesktop = false,
    this.isCupertino = false,
    this.isMaterial = false,
    this.isLinux = false,
    this.isAndroid = false,
    this.isIOS = false,
    this.isMacOS = false,
    this.isWindows = false,
    this.isMobile = false,
  });
}
