import 'dart:io';

class PlatformInfo {
  static bool get isCupertino => Platform.isIOS || Platform.isMacOS;

  static bool get isMaterial => !isCupertino;

  static bool get isDesktop => Platform.isLinux || Platform.isMacOS || Platform.isMacOS;
}
