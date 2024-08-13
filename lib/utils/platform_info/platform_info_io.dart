import 'dart:io';
import 'package:nomo_ui_kit/utils/platform_info/platform_info.dart';

PlatformInfo getInstance() => PlatformInfoIO();

final class PlatformInfoIO extends PlatformInfo {
  PlatformInfoIO()
      : super(
          isWeb: false,
          isCupertino: Platform.isIOS || Platform.isMacOS,
          isDesktop: Platform.isLinux || Platform.isWindows || Platform.isMacOS,
          isMaterial: !(Platform.isIOS || Platform.isMacOS),
          isLinux: Platform.isLinux,
          isAndroid: Platform.isAndroid,
          isIOS: Platform.isIOS,
          isMacOS: Platform.isMacOS,
          isWindows: Platform.isWindows,
          isMobile: Platform.isAndroid || Platform.isIOS,
        );
}
