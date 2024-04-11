import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/info_item/nomo_info_item.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/notification/nomo_notification.dart';
import 'package:nomo_ui_kit/components/vertical_menu/nomo_vertical_tile.dart';

class NomoConstants {}

class NomoComponentConstants {
  final NomoInputConstants inputTheme;
  final NomoInfoItemConstants infoItemTheme;
  final NomoVerticalListTileConstants verticalListTileTheme;
  final NomoNotificationConstants notificationTheme;

  const NomoComponentConstants({
    this.inputTheme = const NomoInputConstants(),
    this.infoItemTheme = const NomoInfoItemConstants(),
    this.verticalListTileTheme = const NomoVerticalListTileConstants(),
    this.notificationTheme = const NomoNotificationConstants(),
  });
}

class NomoConstantsThemeData {
  final NomoConstants constants;
  final NomoComponentConstants componentConstants;

  NomoConstantsThemeData({
    required this.constants,
    required NomoComponentConstants Function(NomoConstants core)
        componentConstantsBuilder,
  }) : componentConstants = componentConstantsBuilder(constants);
}
