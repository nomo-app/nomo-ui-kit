import 'package:flutter/widgets.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_info_item.theme_data.g.dart';

@NomoComponentThemeData('infoItemTheme')
class NomoInfoItem extends StatelessWidget {
  final String title;
  final String value;

  @NomoConstant(TextStyle())
  final TextStyle? titleStyle;

  @NomoConstant(TextStyle())
  final TextStyle? valueStyle;

  @NomoSizingField(EdgeInsets.zero)
  final EdgeInsets? padding;

  const NomoInfoItem({
    required this.title,
    required this.value,
    super.key,
    this.titleStyle,
    this.valueStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return Padding(
      padding: theme.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NomoText(
            title,
            style: theme.titleStyle,
          ),
          NomoText(
            value,
            style: theme.valueStyle,
          ),
        ],
      ),
    );
  }
}
