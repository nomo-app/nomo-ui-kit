import 'package:nomo_ui_kit/utils/platform_info/platform_info.dart';

PlatformInfo getInstance() => const PlatformInfoWeb();

final class PlatformInfoWeb extends PlatformInfo {
  const PlatformInfoWeb() : super(isWeb: true);
}
