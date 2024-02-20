// ignore_for_file: prefer_asserts_with_message

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

enum TextLayoutItem {
  text,
  leading,
  trailling,
  placeHolder,
}

class TextInputLayoutDelegate
    extends SlottedMultiChildRenderObjectWidget<TextLayoutItem, RenderBox> {
  TextInputLayoutDelegate({
    required this.children,
    required this.placeHolderTitleHeight,
    required this.animation,
    required this.textAlign,
  }) : super(key: ValueKey(children.hashCode));
  final Map<TextLayoutItem, Widget> children;
  final Size? placeHolderTitleHeight;
  final double animation;
  final TextAlign textAlign;

  @override
  Iterable<TextLayoutItem> get slots => children.keys;

  @override
  Widget? childForSlot(TextLayoutItem slot) {
    return children[slot];
  }

  @override
  SlottedContainerRenderObjectMixin<TextLayoutItem, RenderBox>
      createRenderObject(
    BuildContext context,
  ) {
    return TextInputLayoutRenderbox(
      items: children.keys.toList(),
      placeHolderTitleHeight: placeHolderTitleHeight,
      animation: animation,
      textAlign: textAlign,
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    SlottedContainerRenderObjectMixin<TextLayoutItem, RenderBox> renderObject,
  ) {
    renderObject as TextInputLayoutRenderbox;
  }
}

class TextInputLayoutRenderbox extends RenderBox
    with
        SlottedContainerRenderObjectMixin<TextLayoutItem, RenderBox>,
        DebugOverflowIndicatorMixin {
  TextInputLayoutRenderbox({
    required this.items,
    required this.placeHolderTitleHeight,
    required this.animation,
    required this.textAlign,
  });
  final List<TextLayoutItem> items;
  final Size? placeHolderTitleHeight;
  late Size contentSize;
  final double animation;
  final TextAlign textAlign;

  double centerVertically(double maxHeight, Size s) {
    if (maxHeight == double.infinity) {
      return 0;
    }
    return (maxHeight - s.height) / 2;
  }

  Size findIntrinsicSize(RenderBox? box, double maxWidth) {
    if (box == null) return Size.zero;
    box.layout(BoxConstraints(maxWidth: maxWidth), parentUsesSize: true);
    return box.size;
  }

  double findMaxHeight(Map<TextLayoutItem, Size> intrinsicSizes) {
    var max = 0.0;
    for (final size in intrinsicSizes.values) {
      if (size.height > max) max = size.height;
    }
    return max;
  }

  @override
  void performLayout() {
    final constraints = this.constraints;
    final maxWidth = constraints.maxWidth;

    final text = childForSlot(TextLayoutItem.text)!;
    final tralling = childForSlot(TextLayoutItem.trailling);
    final leading = childForSlot(TextLayoutItem.leading);
    final placeHolder = childForSlot(TextLayoutItem.placeHolder);

    final intrinsicSizes = {
      TextLayoutItem.leading: findIntrinsicSize(leading, maxWidth),
      TextLayoutItem.trailling: findIntrinsicSize(tralling, maxWidth),
      TextLayoutItem.placeHolder: findIntrinsicSize(placeHolder, maxWidth),
    };
    intrinsicSizes[TextLayoutItem.text] = findIntrinsicSize(
      text,
      maxWidth -
          intrinsicSizes[TextLayoutItem.trailling]!.width -
          intrinsicSizes[TextLayoutItem.leading]!.width,
    );

    var maxHeight = constraints.maxHeight == double.infinity
        ? findMaxHeight(intrinsicSizes)
        : constraints.maxHeight;
    final textMaxHeight = maxHeight;
    final textInset = placeHolderTitleHeight?.height ?? 0;
    if (placeHolderTitleHeight != null &&
        constraints.maxHeight == double.infinity) {
      maxHeight += placeHolderTitleHeight!.height;
    }

    ///
    /// Leading
    ///
    final leadingSize = intrinsicSizes[TextLayoutItem.leading] ?? Size.zero;
    if (leading != null) {
      final backButtonOffset =
          Offset(0, centerVertically(maxHeight, leadingSize));
      (leading.parentData! as BoxParentData).offset = backButtonOffset;
    }

    ///
    /// Trailling
    ///
    final traillingSize = intrinsicSizes[TextLayoutItem.trailling] ?? Size.zero;
    if (tralling != null) {
      final backButtonOffset = Offset(maxWidth - traillingSize.width,
          centerVertically(maxHeight, traillingSize));
      (tralling.parentData! as BoxParentData).offset = backButtonOffset;
    }

    ///
    /// Text
    ///
    var textSize = intrinsicSizes[TextLayoutItem.text]!;
    text.layout(
      BoxConstraints(
        maxWidth: maxWidth - leadingSize.width - traillingSize.width,
        maxHeight: textMaxHeight,
      ),
      parentUsesSize: true,
    );
    textSize = text.size;
    final textOffset = Offset(leadingSize.width,
        textInset + centerVertically(textMaxHeight, textSize));
    (text.parentData! as BoxParentData).offset = textOffset;

    ///
    /// Placeholder
    ///
    if (placeHolder != null) {
      final placeHolderSize =
          intrinsicSizes[TextLayoutItem.placeHolder] ?? Size.zero;
      final topInset = (placeHolderTitleHeight != null ? animation : 1) *
          centerVertically(maxHeight, placeHolderSize);
      placeHolder.layout(constraints);

      final dx = switch (textAlign) {
        TextAlign.start ||
        TextAlign.left ||
        TextAlign.justify =>
          leadingSize.width,
        TextAlign.end ||
        TextAlign.right =>
          maxWidth - traillingSize.width - placeHolderSize.width,
        TextAlign.center => (maxWidth - placeHolderSize.width) / 2,
      };

      final placeHolderOffset = Offset(dx, topInset);
      (placeHolder.parentData! as BoxParentData).offset = placeHolderOffset;
    }

    size = Size(maxWidth, maxHeight);
    contentSize = size;
  }

  ///
  /// PAINT
  ///
  @override
  void paint(PaintingContext context, Offset offset) {
    // Paint the background.
    context.canvas.drawRect(
      offset & size,
      Paint()..color = const Color(0x00FFFFFF),
    );

    void paintChild(RenderBox child, PaintingContext context, Offset offset) {
      final childParentData = child.parentData! as BoxParentData;
      context.paintChild(child, childParentData.offset + offset);
    }

    for (final box in children) {
      paintChild(box, context, offset);
    }

    // Paint an overflow indicator in debug mode if the children want to be
    // larger than the incoming constraints allow.
    assert(() {
      paintOverflowIndicator(
        context,
        offset,
        Offset.zero & size,
        Offset.zero & contentSize,
      );
      return true;
    }());
  }

  ///
  /// HIT TEST
  ///
  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    for (final child in children) {
      final parentData = child.parentData! as BoxParentData;
      final isHit = result.addWithPaintOffset(
        offset: parentData.offset,
        position: position,
        hitTest: (BoxHitTestResult result, Offset transformed) {
          assert(transformed == position - parentData.offset);
          return child.hitTest(result, position: transformed);
        },
      );
      if (isHit) {
        return true;
      }
    }
    return false;
  }

  ///
  /// INTRINSIC SIZES
  ///

  @override
  double computeMinIntrinsicWidth(double height) {
    var width = 0.0;
    for (final box in children) {
      width += box.getMinIntrinsicWidth(double.infinity);
    }
    return width;
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    var width = 0.0;
    for (final box in children) {
      width += box.getMaxIntrinsicWidth(double.infinity);
    }
    return width;
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    var height = 0.0;
    for (final box in children) {
      height += box.getMinIntrinsicHeight(double.infinity);
    }
    return height;
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    var height = 0.0;
    for (final box in children) {
      height += box.getMaxIntrinsicHeight(double.infinity);
    }
    return height;
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    const childConstraints = BoxConstraints();
    var s = Size.zero;
    for (final box in children) {
      final boxSize = box.computeDryLayout(childConstraints);
      s = Size(s.width + boxSize.width, s.height + boxSize.height);
    }
    return constraints.constrain(s);
  }
}
