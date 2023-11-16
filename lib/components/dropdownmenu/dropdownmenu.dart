import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/drop_down_item.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';

class NomoDropDownMenu<T> extends StatefulWidget {

  const NomoDropDownMenu({
    required this.items, required this.onChanged, super.key,
    this.initailValue,
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
  });
  final List<NomoDropdownItem<T>> items;
  final NomoDropdownItem<T>? initailValue;
  final double? width;
  final double? height;
  final BoxDecoration? decoration;
  final Color? iconColor;
  final TextStyle? textStyle;
  final Function(dynamic) onChanged;
  final double? dropdownElevation;
  final ShapeBorder? dropDownShape;
  final Color? dropdownColor;
  final Offset? offset;
  final double? minFontSize;
  final double? maxFontSize;
  final TextOverflow? overflow;

  @override
  State<NomoDropDownMenu> createState() => _NomoDropDownMenuState();
}

class _NomoDropDownMenuState<T> extends State<NomoDropDownMenu<T>> {
  bool _isExpanded = false;
  late NomoDropdownItem _selectedItem;
  double _turns = 0;
  final LayerLink _layerLink = LayerLink();
  final ScrollController _scrollController =
      ScrollController();
  late OverlayEntry _overlayEntry;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.initailValue ?? widget.items.first;
  }

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
      _turns += 1 / 2;
      _isExpanded = false;
    });
    _overlayEntry.remove();
  }

  void selectItem(NomoDropdownItem item) {
    setState(() {
      _selectedItem = item;
      _isExpanded = false;
      widget.onChanged(item.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: NomoCard(
        onPressed: toogleExpanded,
        decoration: widget.decoration,
        width: widget.width,
        height: widget.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: NomoText(
                overflow: widget.overflow,
                _selectedItem.displayText,
                style: widget.textStyle ?? const TextStyle(fontSize: 16),
                //   minFontSize: widget.minFontSize!,
                //     maxFontSize: widget.maxFontSize!,
              ),
            ),
            AnimatedRotation(
              turns: _turns,
              duration: const Duration(milliseconds: 200),
              child: Icon(
                Icons.keyboard_arrow_down,
                color: widget.iconColor ?? const Color(0xFF272626),
              ),
            ),
          ],
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
                          padding: const EdgeInsets.all(1),
                          shrinkWrap: true,
                          controller: _scrollController,
                          children: widget.items.asMap().entries.map((item) {
                            return InkWell(
                              onTap: () {
                                toogleExpanded();
                                selectItem(item.value);
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 8,),
                                child: NomoText(
                                  item.value.displayText,
                                  style: widget.textStyle ??
                                      const TextStyle(fontSize: 14),
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
