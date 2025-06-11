import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/switch/cupertino_switch.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_switch.theme_data.g.dart';

@NomoComponentThemeData('switch')
class NomoSwitch extends StatelessWidget {
  final bool value;
  final void Function(bool val)? onValueChanged;

  @NomoColorField<Color>(Colors.white)
  final Color? activeForeground;

  @NomoColorField(Colors.black54)
  final Color? foreground;

  @NomoColorField(primaryColor)
  final Color? activeBackground;

  @NomoColorField(Colors.black12)
  final Color? background;

  const NomoSwitch({
    required this.value,
    required this.onValueChanged,
    this.activeBackground,
    this.activeForeground,
    this.background,
    this.foreground,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    return CupertinoSwitch(
      value: value,
      onChanged: onValueChanged,
      width: 48,
      height: 24,
      thumbSize: 18,
      activeTrackColor: theme.activeBackground,
      inactiveTrackColor: theme.background,
      thumbColor: theme.activeForeground,
      inactiveThumbColor: theme.foreground,
    );
  }
}
