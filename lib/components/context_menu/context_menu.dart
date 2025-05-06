import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/divider/nomo_divider.dart';
import 'package:nomo_ui_kit/components/loading/fade_in.dart';

OverlayEntry createContextMenuOverlay({
  required BuildContext context,
  required PreferredSizeWidget child,
  required Color backgroundColor,
  bool opaque = false,
  double spacing = 16,
  double arrowSize = 12,
  Duration duration = const Duration(milliseconds: 200),
  void Function(OverlayEntry entry)? onOutsideTap,
}) {
  final renderBox = context.findRenderObject() as RenderBox?;

  if (renderBox == null) {
    throw Exception('RenderBox not found');
  }

  final size = renderBox.size;

  final offset = renderBox.localToGlobal(Offset.zero);

  final screenWidth = MediaQuery.of(context).size.width;

  final overflowsTop = offset.dy - child.preferredSize.height < 0;

  final topInset = overflowsTop
      ? offset.dy + size.height + spacing
      : offset.dy - child.preferredSize.height - spacing;

  final overflowsRight = offset.dx + child.preferredSize.width > screenWidth;

  var leftInset = overflowsRight ? null : offset.dx;

  var rightInset = overflowsRight ? 20.0 : null;

  final arrowLeft = offset.dx + size.width / 2;

  final arrowTop = overflowsTop
      ? offset.dy + size.height + (spacing - arrowSize)
      : offset.dy - arrowSize - (spacing - arrowSize);

  late final OverlayEntry _entry;

  _entry = OverlayEntry(
    opaque: opaque,
    builder: (context) => GestureDetector(
      onTap: () {
        if (onOutsideTap != null) {
          return onOutsideTap(_entry);
        }
      },
      child: ColoredBox(
        color: Colors.transparent,
        child: Stack(
          children: [
            Positioned(
              top: topInset,
              left: leftInset,
              right: rightInset,
              child: FadeIn(
                duration: duration,
                child: child,
              ),
            ),
            Positioned(
              top: arrowTop,
              left: arrowLeft - arrowSize / 2,
              child: FadeIn(
                duration: duration,
                child: CustomPaint(
                  painter: TrianglePainter(
                    strokeColor: backgroundColor,
                    flip: overflowsTop,
                  ),
                  size: Size(arrowSize, arrowSize),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );

  return _entry;
}

class NomoContextMenu extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> actions;
  final List<Widget> children;

  final double itemHeight;
  final double childHeight;
  final double actionWidth;
  final double actionSpacing;
  final double childrenSpacing;
  final double width;
  final EdgeInsets padding;
  final BorderRadiusGeometry borderRadius;
  final Color backgroundColor;

  const NomoContextMenu({
    required this.actions,
    required this.backgroundColor,
    this.padding = const EdgeInsets.all(12),
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.children = const [],
    this.itemHeight = 48,
    this.actionWidth = 48,
    this.actionSpacing = 8,
    this.childrenSpacing = 8,
    this.width = 200,
    this.childHeight = 48,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: preferredSize.width,
      height: preferredSize.height,
      child: NomoCard(
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: padding.left,
                right: padding.right,
                top: padding.top,
              ),
              height: itemHeight,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (final action in actions) ...[
                    action,
                    if (actions.last != action) SizedBox(width: actionSpacing),
                  ],
                ],
              ),
            ),
            if (children.isNotEmpty)
              const NomoDivider(
                crossAxisSpacing: 16,
              ),
            Padding(
              padding: EdgeInsets.only(
                left: padding.left,
                right: padding.right,
                bottom: padding.bottom,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (final child in children) ...[
                    SizedBox(height: childHeight, child: child),
                    if (children.last != child)
                      SizedBox(height: childrenSpacing),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  double get _actionsWidth =>
      actions.length * actionWidth +
      (actions.length - 1) * actionSpacing +
      padding.horizontal;

  @override
  Size get preferredSize => Size(
        width > _actionsWidth ? width : _actionsWidth,
        childHeight * children.length +
            itemHeight +
            childrenSpacing * (children.length - 1) +
            padding.vertical +
            33,
      );
}

/// Custom Painter for Triangle
class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;
  final bool flip;

  TrianglePainter({
    required this.flip,
    this.strokeColor = Colors.black,
    this.paintingStyle = PaintingStyle.fill,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = strokeColor
      ..style = paintingStyle;

    final path = Path();

    if (flip) {
      path
        ..moveTo(size.width / 2, 0)
        ..lineTo(size.width, size.height)
        ..lineTo(0, size.height)
        ..lineTo(size.width / 2, 0)
        ..close();
    } else {
      path
        ..moveTo(0, 0)
        ..lineTo(size.width, 0)
        ..lineTo(size.width / 2, size.height)
        ..lineTo(0, 0)
        ..close();
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
