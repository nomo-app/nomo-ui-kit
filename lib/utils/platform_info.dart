import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;

class PlatformInfo {
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

  static PlatformInfo? _instance;

  const PlatformInfo({
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

  static PlatformInfo get I {
    return _instance ??= kIsWeb
        ? const PlatformInfo(isWeb: true)
        : PlatformInfo(
            isWeb: false,
            isCupertino: _isCupertino,
            isDesktop: _isDesktop,
            isMaterial: _isMaterial,
            isLinux: Platform.isLinux,
            isAndroid: Platform.isAndroid,
            isIOS: Platform.isIOS,
            isMacOS: Platform.isMacOS,
            isWindows: Platform.isWindows,
            isMobile: Platform.isAndroid || Platform.isIOS,
          );
  }

  static bool get _isCupertino => Platform.isIOS || Platform.isMacOS;

  static bool get _isMaterial => !_isCupertino;

  static bool get _isDesktop =>
      Platform.isLinux || Platform.isWindows || Platform.isMacOS;
}
