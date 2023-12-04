// ignore_for_file: prefer_asserts_with_message

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app/app_bar/layout/appbar_layout_delegate.dart';

class AppBarLayoutRenderBox extends RenderBox
    with SlottedContainerRenderObjectMixin<AppBarItem, RenderBox>, DebugOverflowIndicatorMixin {
  AppBarLayoutRenderBox({
    required this.items,
  });
  final List<AppBarItem> items;
  late Size contentSize;

  double centerVertically(double maxHeight, Size s) {
    if (maxHeight == double.infinity) {
      return 0;
    }
    return (maxHeight - s.height) / 2;
  }

  @override
  void performLayout() {
    final constraints = this.constraints;
    final maxWidth = constraints.maxWidth;
    var maxHeight = constraints.maxHeight;
    contentSize = Size(maxWidth, maxHeight);

    final actions = childForSlot(AppBarItem.actions);
    final title = childForSlot(AppBarItem.title);
    final backButton = childForSlot(AppBarItem.backButton);

    var remaingConstraints = constraints.copyWith(minHeight: 0);

    ///
    /// Back Button
    ///
    var backButtonSize = Size.zero;
    BoxParentData? backButtonParentData;

    if (backButton != null) {
      backButton.layout(remaingConstraints, parentUsesSize: true);
      backButtonSize = backButton.size;

      final backButtonOffset = Offset(0, centerVertically(maxHeight, backButtonSize));

      backButtonParentData = backButton.parentData! as BoxParentData..offset = backButtonOffset;
      remaingConstraints = remaingConstraints.copyWith(
        maxWidth: remaingConstraints.maxWidth - backButtonSize.width,
      );
    }

    ///
    /// Actions
    ///
    var actionSize = Size.zero;
    BoxParentData? actionParentData;
    if (actions != null) {
      actions.layout(remaingConstraints, parentUsesSize: true);
      actionSize = actions.size;
      final offsetAction = Offset(
        maxWidth - actionSize.width,
        centerVertically(maxHeight, actionSize),
      );
      actionParentData = actions.parentData! as BoxParentData..offset = offsetAction;
      remaingConstraints = remaingConstraints.copyWith(
        maxWidth: remaingConstraints.maxWidth - actionSize.width,
      );
    }

    ///
    /// Title
    ///
    final biggestIndent = backButtonSize.width >= actionSize.width ? backButtonSize.width : actionSize.width;

    final titleConstraints = BoxConstraints(
      maxWidth: maxWidth - biggestIndent * 2,
      maxHeight: remaingConstraints.maxHeight,
    );
    var titleSize = Size.zero;
    BoxParentData? titleParentData;
    if (title != null) {
      title.layout(titleConstraints, parentUsesSize: true);
      titleSize = title.size;
      final offsetTitle = Offset(
        ((titleConstraints.maxWidth - titleSize.width) / 2) + biggestIndent,
        centerVertically(maxHeight, titleSize),
      );
      titleParentData = title.parentData! as BoxParentData..offset = offsetTitle;
    }

    /// Find the biggest height
    final biggestHeight = max(backButtonSize.height, max(titleSize.height, actionSize.height));

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
