import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app_bar/layout/appbar_layout_delegate.dart';

class AppBarLayoutRenderBox extends RenderBox
    with
        SlottedContainerRenderObjectMixin<AppBarItem, RenderBox>,
        DebugOverflowIndicatorMixin {
  final List<AppBarItem> items;
  late Size contentSize;

  AppBarLayoutRenderBox({
    required this.items,
  });

  double centerVertically(double maxHeight, Size s) {
    if (maxHeight == double.infinity) {
      return 0;
    }
    return (maxHeight - s.height) / 2;
  }

  @override
  void performLayout() {
    BoxConstraints constraints = this.constraints;
    double maxWidth = constraints.maxWidth;
    double maxHeight = constraints.maxHeight;
    contentSize = Size(maxWidth, maxHeight);

    RenderBox? actions = childForSlot(AppBarItem.actions);
    RenderBox? title = childForSlot(AppBarItem.title);
    RenderBox? backButton = childForSlot(AppBarItem.backButton);

    BoxConstraints remaingConstraints = constraints.copyWith(minHeight: 0);

    ///
    /// Back Button
    ///
    Size backButtonSize = Size.zero;
    BoxParentData? backButtonParentData;

    if (backButton != null) {
      backButton.layout(remaingConstraints, parentUsesSize: true);
      backButtonSize = backButton.size;

      final backButtonOffset =
          Offset(0, centerVertically(maxHeight, backButtonSize));

      backButtonParentData = backButton.parentData! as BoxParentData;
      backButtonParentData.offset = backButtonOffset;
      remaingConstraints = remaingConstraints.copyWith(
        maxWidth: remaingConstraints.maxWidth - backButtonSize.width,
      );
    }

    ///
    /// Actions
    ///
    Size actionSize = Size.zero;
    BoxParentData? actionParentData;
    if (actions != null) {
      actions.layout(remaingConstraints, parentUsesSize: true);
      actionSize = actions.size;
      final offset_action = Offset(
        maxWidth - actionSize.width,
        centerVertically(maxHeight, actionSize),
      );
      actionParentData = actions.parentData! as BoxParentData;
      actionParentData.offset = offset_action;
      remaingConstraints = remaingConstraints.copyWith(
        maxWidth: remaingConstraints.maxWidth - actionSize.width,
      );
    }

    ///
    /// Title
    ///
    final biggestIndent = backButtonSize.width >= actionSize.width
        ? backButtonSize.width
        : actionSize.width;

    final titleConstraints = BoxConstraints(
      maxWidth: maxWidth - biggestIndent * 2,
      maxHeight: remaingConstraints.maxHeight,
    );
    Size titleSize = Size.zero;
    BoxParentData? titleParentData;
    if (title != null) {
      title.layout(titleConstraints, parentUsesSize: true);
      titleSize = title.size;
      final offset_title = Offset(
        ((titleConstraints.maxWidth - titleSize.width) / 2) + biggestIndent,
        centerVertically(maxHeight, titleSize),
      );
      titleParentData = title.parentData! as BoxParentData;
      titleParentData.offset = offset_title;
    }

    /// Find the biggest height
    final biggestHeight =
        max(backButtonSize.height, max(titleSize.height, actionSize.height));

    if (maxHeight == double.infinity) {
      maxHeight = biggestHeight;
      contentSize = Size(maxWidth, biggestHeight);

      if (backButtonParentData != null) {
        backButtonParentData.offset = Offset(
          backButtonParentData.offset.dx,
          centerVertically(maxHeight, backButtonSize),
        );
      }
      if (actionParentData != null) {
        actionParentData.offset = Offset(
          actionParentData.offset.dx,
          centerVertically(maxHeight, actionSize),
        );
      }
      if (titleParentData != null) {
        titleParentData.offset = Offset(
          titleParentData.offset.dx,
          centerVertically(maxHeight, titleSize),
        );
      }
    }

    size = contentSize;
  }

  ///
  /// PAINT
  ///
  @override
  void paint(PaintingContext context, Offset offset) {
    // Paint the background.
    context.canvas.drawRect(
      offset & size,
      Paint()..color = Color(0x00FFFFFF),
    );

    void paintChild(RenderBox child, PaintingContext context, Offset offset) {
      final BoxParentData childParentData = child.parentData! as BoxParentData;
      context.paintChild(child, childParentData.offset + offset);
    }

    for (RenderBox box in children) {
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
    for (final RenderBox child in children) {
      final BoxParentData parentData = child.parentData! as BoxParentData;
      final bool isHit = result.addWithPaintOffset(
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
    double width = 0;
    for (RenderBox box in children) {
      width += box.getMinIntrinsicWidth(double.infinity);
    }
    return width;
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    double width = 0;
    for (RenderBox box in children) {
      width += box.getMaxIntrinsicWidth(double.infinity);
    }
    return width;
  }

  @override
  double computeMinIntrinsicHeight(double width) {
    double height = 0;
    for (RenderBox box in children) {
      height += box.getMinIntrinsicHeight(double.infinity);
    }
    return height;
  }

  @override
  double computeMaxIntrinsicHeight(double width) {
    double height = 0;
    for (RenderBox box in children) {
      height += box.getMaxIntrinsicHeight(double.infinity);
    }
    return height;
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    const BoxConstraints childConstraints = BoxConstraints();
    Size s = Size.zero;
    for (RenderBox box in children) {
      Size boxSize = box.computeDryLayout(childConstraints);
      s = Size(s.width + boxSize.width, s.height + boxSize.height);
    }
    return constraints.constrain(s);
  }
}
