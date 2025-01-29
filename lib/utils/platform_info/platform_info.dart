import 'package:nomo_ui_kit/utils/platform_info/platform_info_unsupported.dart'
    if (dart.library.io) 'platform_info_io.dart'
    if (dart.library.html) 'platform_info_web.dart'
    if (dart.library.js_interop) 'platform_info_web.dart';

abstract class PlatformInfo {
  static final _instance = getInstance();

  static bool get isDesktop => _instance.isDesktop;
  static bool get isCupertino => _instance.isCupertino;
  static bool get isMaterial => _instance.isMaterial;
  static bool get isWeb => _instance.isWeb;
  static bool get isLinux => _instance.isLinux;
  static bool get isAndroid => _instance.isAndroid;
  static bool get isIOS => _instance.isIOS;
  static bool get isMacOS => _instance.isMacOS;
  static bool get isWindows => _instance.isWindows;
  static bool get isMobile => _instance.isMobile;
}
