import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/drop_down_item.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'dropdownmenu.theme_data.g.dart';

@NomoComponentThemeData('dropDownMenu')
class NomoDropDownMenu<T> extends StatefulWidget {
  const NomoDropDownMenu({
    required this.items,
    this.onChanged,
    super.key,
    this.initialValue,
    this.width,
    this.height,
    this.iconColor,
    this.textStyle,
    this.dropdownElevation,
    this.offset,
    this.dropdownColor,
    this.minFontSize = 12,
    this.overflow = TextOverflow.ellipsis,
    this.padding,
    this.dropdownBorder,
    this.icon = Icons.keyboard_arrow_down,
    this.disableRotation = false,
    this.valueNotifer,
    this.focusNode,
    this.backgroundColor,
    this.borderRadius,
    this.border,
    this.itemPadding,
    this.itemHeight = 48,
  });

  final List<NomoDropdownItem<T>> items;
  final ValueNotifier<T?>? valueNotifer;
  final T? initialValue;
  final FocusNode? focusNode;
  final void Function(T? value)? onChanged;
  final IconData icon;
  final bool disableRotation;
  final TextOverflow? overflow;
  final double? width;
  final double? height;
  final TextStyle? textStyle;
  final Offset? offset;
  final double itemHeight;

  @NomoColorField(Color(0xFF272626))
  final Color? iconColor;

  @NomoColorField(1.0)
  final double? dropdownElevation;

  @NomoColorField(Colors.white)
  final Color? dropdownColor;

  @NomoSizingField(10.0)
  final double? minFontSize;

  @NomoSizingField<EdgeInsetsGeometry>(EdgeInsets.zero)
  final EdgeInsetsGeometry? itemPadding;

  @NomoSizingField<EdgeInsetsGeometry>(
    EdgeInsets.symmetric(
      horizontal: 12,
      vertical: 8,
    ),
  )
  final EdgeInsetsGeometry? padding;

  @NomoColorField<ShapeBorder?>(null)
  final ShapeBorder? dropdownBorder;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoSizingField<BorderRadius?>(null)
  final BorderRadius? borderRadius;

  @NomoColorField<BorderSide>(BorderSide.none)
  final BorderSide? border;

  @override
  State<NomoDropDownMenu<T>> createState() => _NomoDropDownMenuState();
}

class _NomoDropDownMenuState<T> extends State<NomoDropDownMenu<T>> {
  bool get _isExpanded => _focusNode.hasFocus;

  late final ValueNotifier<T?> _valueNotifier;
  late final FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = widget.focusNode ?? FocusNode()
      ..addListener(onFocusChanged);
    _valueNotifier = widget.valueNotifer ??
        ValueNotifier<T?>(widget.initialValue ?? widget.items.first.value)
      ..addListener(onValueChange);
    super.initState();
  }

  @override
  void dispose() {
    if (widget.valueNotifer == null) {
      _valueNotifier.dispose();
    }
    _valueNotifier.removeListener(onValueChange);
    if (widget.focusNode == null) {
      _focusNode.dispose();
    }
    _focusNode.removeListener(onFocusChanged);

    super.dispose();
  }

  void onValueChange() {
    selectItem(_valueNotifier.value);
  }

  void onFocusChanged() {
    if (_focusNode.hasFocus) {
      setState(() {
        _turns += 1 / 2;
      });
      _overlayEntry = _createOverlayEntry();

      Overlay.of(context).insert(_overlayEntry);
      return;
    }

    setState(() {
      _turns -= 1 / 2;
    });
    _overlayEntry.remove();
  }

  double _turns = 0;
  final LayerLink _layerLink = LayerLink();
  final ScrollController _scrollController = ScrollController();
  late OverlayEntry _overlayEntry;

  void selectItem(T? value) {
    _valueNotifier.value = value;
    widget.onChanged?.call(value);
    setState(() {});
  }

  NomoDropdownItem<T> get selectedItem {
    return widget.items
        .firstWhere((element) => element.value == _valueNotifier.value);
  }

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, widget);

    return Focus(
      focusNode: _focusNode,
      child: CompositedTransformTarget(
        link: _layerLink,
        child: SizedBox(
          height: widget.height,
          width: widget.width,
          child: Material(
            color: theme.backgroundColor,
            shape: RoundedRectangleBorder(
              side: _isExpanded
                  ? theme.border.copyWith(
                      color: context.colors.primary,
                      width: 2,
                      style: BorderStyle.solid,
                    )
                  : theme.border,
              borderRadius: theme.borderRadius ?? BorderRadius.zero,
            ),
            child: InkWell(
              onTap: () {
                if (_isExpanded) {
                  _focusNode.unfocus();
                } else {
                  _focusNode.requestFocus();
                }
              },
              borderRadius: theme.borderRadius ?? BorderRadius.zero,
              child: Padding(
                padding: theme.padding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: switch (selectedItem) {
                        final NomoDropDownItemString<T> item => NomoText(
                            overflow: widget.overflow,
                            item.title,
                            style: widget.textStyle,
                            maxLines: 1,
                            fit: true,
                            minFontSize: theme.minFontSize,
                          ),
                        final NomoDropdownItemWidget<T> item => item.widget,
                      },
                    ),
                    if (widget.disableRotation)
                      Icon(
                        widget.icon,
                        color: theme.iconColor,
                      )
                    else
                      AnimatedRotation(
                        turns: _turns,
                        duration: const Duration(milliseconds: 200),
                        child: Icon(
                          widget.icon,
                          color: theme.iconColor,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject()! as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);
    final topOffset = offset.dy + size.height + 5;
    final theme = getFromContext(context, widget);
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () {
          _focusNode.unfocus();
        },
        behavior: HitTestBehavior.translucent,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                left: offset.dx,
                top: topOffset,
                width: widget.width ?? size.width,
                child: CompositedTransformFollower(
                  offset: widget.offset ?? Offset(0, size.height + 5),
                  link: _layerLink,
                  showWhenUnlinked: false,
                  child: Material(
                    shape: theme.dropdownBorder ??
                        RoundedRectangleBorder(
                          borderRadius: theme.borderRadius ?? BorderRadius.zero,
                        ),
                    elevation: theme.dropdownElevation,
                    color: theme.dropdownColor,
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: (MediaQuery.of(context).size.height -
                                    topOffset -
                                    15)
                                .isNegative
                            ? 100
                            : MediaQuery.of(context).size.height -
                                topOffset -
                                15,
                      ),
                      child: RawScrollbar(
                        thumbVisibility: true,
                        thumbColor: Colors.grey,
                        controller: _scrollController,
                        child: ListView(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          shrinkWrap: true,
                          controller: _scrollController,
                          children: widget.items.asMap().entries.map((item) {
                            return SizedBox(
                              height: widget.itemHeight,
                              child: InkWell(
                                onTap: () {
                                  _focusNode.unfocus();

                                  selectItem(item.value.value);
                                },
                                child: switch (item.value) {
                                  final NomoDropDownItemString<T> item =>
                                    Padding(
                                      padding: theme.itemPadding,
                                      child: Row(
                                        children: [
                                          NomoText(
                                            item.title,
                                            style: widget.textStyle,
                                          ),
                                        ],
                                      ),
                                    ),
                                  final NomoDropdownItemWidget<T> item =>
                                    Padding(
                                      padding: theme.itemPadding,
                                      child: item.widget,
                                    ),
                                },
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
