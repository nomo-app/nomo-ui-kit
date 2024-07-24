import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class DynamicRow extends MultiChildRenderObjectWidget {
  const DynamicRow({
    super.key,
    super.children,
    this.vSpacing = 8,
    this.hSpacing = 8,
    this.mainAxisSize = MainAxisSize.max,
  });
  final double vSpacing;
  final double hSpacing;
  final MainAxisSize mainAxisSize;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return CustomRenderBox(
      mainAxisSize: mainAxisSize,
      vSpacing: vSpacing,
      hSpacing: hSpacing,
    );
  }

  @override
  void updateRenderObject(BuildContext context, CustomRenderBox renderObject) {
    renderObject
      ..mainAxisSize = mainAxisSize
      ..vSpacing = vSpacing
      ..hSpacing = hSpacing;
  }

  @override
  void didUnmountRenderObject(CustomRenderBox renderObject) {
    renderObject.markNeedsLayout();
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DoubleProperty('vSpacing', vSpacing))
      ..add(DoubleProperty('hSpacing', hSpacing))
      ..add(EnumProperty('mainAxisSize', mainAxisSize));
  }
}

class CustomRenderBox extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, CustomLayoutParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, CustomLayoutParentData> {
  CustomRenderBox({
    required this.mainAxisSize,
    required this.vSpacing,
    required this.hSpacing,
  });

  MainAxisSize mainAxisSize;
  double vSpacing;
  double hSpacing;
  CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center;

  @override
  void setupParentData(RenderObject child) {
    if (child.parentData is! CustomLayoutParentData) {
      child.parentData = CustomLayoutParentData();
    }
  }

  @override
  bool hitTestChildren(BoxHitTestResult result, {required Offset position}) {
    var child = lastChild;
    while (child != null) {
      if (child.hitTest(
        BoxHitTestResult.wrap(result),
        position: position - child.pData.offset,
      )) {
        return true;
      }
      child = childBefore(child);
    }
    return false;
  }

  @override
  void performLayout() {
    // Size and position all children here.
    final constraints = this.constraints.copyWith(minWidth: 0);
    // final maxHeight = constraints.maxHeight;
    final maxWidth = constraints.maxWidth;

    var child = firstChild;

    /// Layout Phase
    final childSizes = <RenderBox, Size>{};

    while (child != null) {
      child.layout(constraints, parentUsesSize: true);
      final size = child.size;
      childSizes[child] = size;
      child = childAfter(child);
    }
    child = firstChild;

    /// Position Phase 1: Fit children into rows
    var offset = Offset.zero;
    var height = 0.0;
    var width = 0.0;
    final rowMaxHeights = <int, (Iterable<RenderBox>, Size)>{};
    var i = 0;
    while (child != null) {
      final childSize = childSizes[child]!;
      final childParentData = child.pData;
      final overlaps = offset.dx + childSize.width > maxWidth;

      if (overlaps) {
        offset = Offset(
            0, offset.dy + (rowMaxHeights[i]?.$2.height ?? 0) + vSpacing);
        i++;
      }

      rowMaxHeights[i] = (
        [
          ...?rowMaxHeights[i]?.$1,
          child,
        ],
        Size(
          max(rowMaxHeights[i]?.$2.width ?? 0, childSize.width),
          max(rowMaxHeights[i]?.$2.height ?? 0, childSize.height),
        ),
      );

      childParentData.offset = offset;

      final cWidth = child.size.width;

      // Update
      final isLast = child == lastChild;
      offset = offset.translate(cWidth + (isLast ? 0 : hSpacing), 0);
      width = max(width, offset.dx);

      child = childAfter(child);
    }

    /// Position Phase 2: Align children in rows and calculate height
    child = firstChild;
    while (child != null) {
      final childParentData = child.pData;

      final maxVSize = rowMaxHeights.entries
          .singleWhere((e) => e.value.$1.contains(child))
          .value
          .$2
          .height;

      if (crossAxisAlignment == CrossAxisAlignment.center) {
        if (child.size.height < maxVSize) {
          childParentData.offset = childParentData.offset.translate(
            0,
            (maxVSize - child.size.height) / 2,
          );
        }
      }

      child = childAfter(child);
    }

    height = offset.dy + rowMaxHeights[i]!.$2.height;
    width = mainAxisSize == MainAxisSize.min ? width : maxWidth;

    size = Size(width, height);
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // Paint all children here.
    var child = firstChild;
    while (child != null) {
      final childParentData = child.parentData! as CustomLayoutParentData;
      context.paintChild(child, childParentData.offset + offset);
      child = childAfter(child);
    }
  }
}

class CustomLayoutParentData extends ContainerBoxParentData<RenderBox> {}

extension on RenderBox {
  CustomLayoutParentData get pData => parentData! as CustomLayoutParentData;
}
