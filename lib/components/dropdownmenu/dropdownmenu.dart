import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/drop_down_item.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';

class NomoDropDownMenu<T> extends StatefulWidget {
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

  const NomoDropDownMenu({
    Key? key,
    required this.items,
    required this.onChanged,
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
  }) : super(key: key);

  @override
  State<NomoDropDownMenu> createState() => _NomoDropDownMenuState();
}

class _NomoDropDownMenuState<T> extends State<NomoDropDownMenu<T>> {
  bool _isExpanded = false;
  late NomoDropdownItem _selectedItem;
  double _turns = 0;
  final LayerLink _layerLink = LayerLink();
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 0);
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
        onPressed: () => toogleExpanded(),
        decoration: widget.decoration,
        padding: const EdgeInsets.all(8.0),
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
    RenderBox renderBox = context.findRenderObject()! as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);
    var topOffset = offset.dy + size.height + 5;
    return OverlayEntry(
      builder: (context) => GestureDetector(
        onTap: () => closeOverlay(),
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
                          borderRadius: BorderRadius.circular(8.0),
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
                                    horizontal: 8.0, vertical: 8.0),
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
