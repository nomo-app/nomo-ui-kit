import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/drop_down_item.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';

class NomoDropDownMenu<T> extends StatefulWidget {
  const NomoDropDownMenu({
    required this.items,
    this.onChanged,
    super.key,
    this.initialValue,
    this.width,
    this.height,
    this.decoration,
    this.iconColor,
    this.textStyle,
    this.dropdownElevation,
    this.dropDownShape,
    this.offset,
    this.dropdownColor,
    this.minFontSize = 12,
    this.maxFontSize = double.infinity,
    this.overflow = TextOverflow.ellipsis,
    this.padding,
    this.dropdownBorderColor,
    this.icon = Icons.keyboard_arrow_down,
    this.disableRotation = false,
    this.valueNotifer,
  });
  final List<NomoDropdownItem<T>> items;
  final ValueNotifier<T?>? valueNotifer;
  final T? initialValue;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final Color? iconColor;
  final TextStyle? textStyle;
  final void Function(T? value)? onChanged;
  final double? dropdownElevation;
  final ShapeBorder? dropDownShape;
  final Color? dropdownColor;
  final Offset? offset;
  final double? minFontSize;
  final double? maxFontSize;
  final TextOverflow? overflow;
  final EdgeInsetsGeometry? padding;
  final Color? dropdownBorderColor;
  final IconData icon;
  final bool disableRotation;

  @override
  State<NomoDropDownMenu<T>> createState() => _NomoDropDownMenuState();
}

class _NomoDropDownMenuState<T> extends State<NomoDropDownMenu<T>> {
  bool _isExpanded = false;

  late final ValueNotifier<T?> _valueNotifier;

  @override
  void initState() {
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

    super.dispose();
  }

  void onValueChange() {
    selectItem(_valueNotifier.value);
  }

  double _turns = 0;
  final LayerLink _layerLink = LayerLink();
  final ScrollController _scrollController = ScrollController();
  late OverlayEntry _overlayEntry;

  void toogleExpanded() {
    setState(() {
      _turns += 1 / 2;
      _isExpanded = !_isExpanded;
    });
    if (_isExpanded) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry);
    } else {
      _overlayEntry.remove();
    }
  }

  void closeOverlay() {
    setState(() {
      _turns -= 1 / 2;
      _isExpanded = false;
    });
    _overlayEntry.remove();
  }

  void selectItem(T? value) {
    _valueNotifier.value = value;
    _isExpanded = false;
    widget.onChanged?.call(value);
    setState(() {});
  }

  String get selectedDisplayText {
    return widget.items
        .firstWhere((element) => element.value == _valueNotifier.value)
        .displayText;
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: Container(
        decoration: widget.decoration,
        height: widget.height,
        width: widget.width,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: toogleExpanded,
            borderRadius: widget.decoration is BoxDecoration
                ? widget.decoration?.borderRadius
                    ?.resolve(Directionality.of(context))
                : null,
            child: Padding(
              padding: widget.padding ?? EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: NomoText(
                      overflow: widget.overflow,
                      selectedDisplayText,
                      style: widget.textStyle,
                      //   minFontSize: widget.minFontSize!,
                      //     maxFontSize: widget.maxFontSize!,
                    ),
                  ),
                  if (widget.disableRotation)
                    Icon(
                      widget.icon,
                      color: widget.iconColor ?? const Color(0xFF272626),
                    )
                  else
                    AnimatedRotation(
                      turns: _turns,
                      duration: const Duration(milliseconds: 200),
                      child: Icon(
                        widget.icon,
                        color: widget.iconColor ?? const Color(0xFF272626),
                      ),
                    ),
                ],
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
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: closeOverlay,
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
                    shape: widget.dropDownShape ??
                        RoundedRectangleBorder(
                          side: widget.dropdownBorderColor != null
                              ? BorderSide(
                                  color: widget.dropdownBorderColor!,
                                  width: 2,
                                )
                              : BorderSide.none,
                          borderRadius: BorderRadius.circular(8),
                        ),
                    elevation: widget.dropdownElevation ?? 0,
                    color: widget.dropdownColor ?? Colors.white,
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
                            return InkWell(
                              onTap: () {
                                toogleExpanded();
                                selectItem(item.value.value);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 16,
                                ),
                                child: NomoText(
                                  item.value.displayText,
                                  style: widget.textStyle,
                                ),
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
