import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_dropdown_button.theme_data.g.dart';

class DropDownItem<T> {
  final T value;

  final String displayName;

  const DropDownItem({
    required this.value,
    required this.displayName,
  });
}

@NomoComponentThemeData('dropdownButton')
class NomoDropDownButton<T> extends StatefulWidget {
  final List<DropDownItem<T>> options;
  final void Function(T? value) onChanged;
  final T? inital;
  final bool isExpanded;
  final bool fitText;
  final double? width;
  final IconData icon;
  final Widget? child;
  final ValueNotifier<T?>? valueNotifier;
  final EdgeInsetsGeometry? padding;

  const NomoDropDownButton({
    required this.options,
    required this.onChanged,
    super.key,
    this.isExpanded = false,
    this.fitText = false,
    this.width,
    this.inital,
    this.icon = Icons.arrow_drop_down,
    this.child,
    this.valueNotifier,
    this.padding,
  }) : assert(options.length > 0, 'options cannot be empty');

  @override
  State<NomoDropDownButton<T>> createState() => _NomoDropDownButtonState<T>();
}

class _NomoDropDownButtonState<T> extends State<NomoDropDownButton<T>> {
  late final ValueNotifier<T?> _valueNotifier =
      widget.valueNotifier ?? ValueNotifier(widget.inital);

  @override
  void dispose() {
    if (widget.valueNotifier == null) _valueNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = NomoTheme.of(context);
    return ValueListenableBuilder(
      valueListenable: _valueNotifier,
      builder: (context, value, child) {
        return DropdownButton<T>(
          isDense: true,
          value: value,
          padding: widget.padding,
          icon: child ??
              Icon(
                widget.icon,
                color: context.colors.foreground3,
              ),
          dropdownColor: context.colors.surface,
          items: [
            for (final DropDownItem<T> item in widget.options)
              DropdownMenuItem<T>(
                value: item.value,
                child: SizedBox(
                  width: widget.width,
                  child: NomoText(
                    overflow: TextOverflow.ellipsis,
                    style: theme.typography.b2,
                    item.displayName,
                  ),
                ),
              ),
          ],
          underline: Container(height: 0),
          borderRadius: BorderRadius.circular(8),
          onChanged: (val) {
            _valueNotifier.value = val;

            widget.onChanged(val);
          },
        );
      },
    );
  }
}
