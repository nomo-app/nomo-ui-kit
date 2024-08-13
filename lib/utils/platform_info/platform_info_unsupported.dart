import 'package:nomo_ui_kit/utils/platform_info/platform_info_base.dart';

BasePlatformInfo getInstance() => throw UnsupportedError(
      'Cannot create a PlatformInfo without dart:io or dart:html',
    );
