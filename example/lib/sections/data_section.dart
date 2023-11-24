import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/components/data/nodata/no_data.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class DataSection extends StatelessWidget {
  const DataSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      children: [
        NomoText(
          "Data",
          style: context.typography.h3,
        ),
        8.vSpacing,
        NomoText(
          "Data Input and etc...",
          style: context.typography.b1,
        ),
        32.vSpacing,
        NomoOutlineContainer(
          child: NoData(),
        ),
      ],
    );
  }
}
