import 'package:nomo_ui_kit/utils/platform_info/platform_info_helper.dart'
    if (dart.library.io) './platform_info_io.dart'
    if (dart.library.html) './platform_info_web.dart';

abstract class PlatformInfo {
  final bool _isDesktop;
  final bool _isCupertino;
  final bool _isMaterial;
  final bool _isWeb;
  final bool _isLinux;
  final bool _isAndroid;
  final bool _isIOS;
  final bool _isMacOS;
  final bool _isWindows;
  final bool _isMobile;

  const PlatformInfo({
    required bool isWeb,
    bool isDesktop = false,
    bool isCupertino = false,
    bool isMaterial = false,
    bool isLinux = false,
    bool isAndroid = false,
    bool isIOS = false,
    bool isMacOS = false,
    bool isWindows = false,
    bool isMobile = false,
  })  : _isMobile = isMobile,
        _isWindows = isWindows,
        _isMacOS = isMacOS,
        _isIOS = isIOS,
        _isAndroid = isAndroid,
        _isLinux = isLinux,
        _isWeb = isWeb,
        _isMaterial = isMaterial,
        _isCupertino = isCupertino,
        _isDesktop = isDesktop;

  static PlatformInfo I = getPlatformInfo();

  static bool get isDesktop => I._isDesktop;
  static bool get isCupertino => I._isCupertino;
  static bool get isMaterial => I._isMaterial;
  static bool get isWeb => I._isWeb;
  static bool get isLinux => I._isLinux;
  static bool get isAndroid => I._isAndroid;
  static bool get isIOS => I._isIOS;
  static bool get isMacOS => I._isMacOS;
  static bool get isWindows => I._isWindows;
  static bool get isMobile => I._isMobile;
}
