import 'package:nomo_ui_kit/utils/platform_info/platform_info_base.dart';

BasePlatformInfo getInstance() => const PlatformInfoWeb();

final class PlatformInfoWeb extends BasePlatformInfo {
  const PlatformInfoWeb() : super(isWeb: true);
}
