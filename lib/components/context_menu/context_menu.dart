import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/loading/fade_in.dart';

OverlayEntry showContextMenu({
  required BuildContext context,
  required PreferredSizeWidget child,
  required Color backgroundColor,
  bool opaque = false,
  double spacing = 16,
  double arrowSize = 12,
  Duration duration = const Duration(milliseconds: 200),
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
      ? offset.dy + size.height
      : offset.dy - child.preferredSize.height - spacing;

  final overflowsRight = offset.dx + child.preferredSize.width > screenWidth;

  double leftInset = overflowsRight
      ? screenWidth - child.preferredSize.width - spacing
      : offset.dx;

  if (leftInset < 20) {
    leftInset = 20;
  }

  double? rightInset = leftInset > 20 ? 20 : null;

  final arrowLeft = offset.dx + size.width / 2;

  late final OverlayEntry _entry;

  _entry = OverlayEntry(
    opaque: opaque,
    builder: (context) => GestureDetector(
      onTap: () {
        _entry.remove();
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
              top: offset.dy - arrowSize - (spacing - arrowSize),
              left: arrowLeft - arrowSize / 2,
              child: FadeIn(
                duration: duration,
                child: CustomPaint(
                  painter: TrianglePainter(
                    strokeColor: backgroundColor,
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

  Overlay.of(context, rootOverlay: true).insert(_entry);

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
              const Divider(
                height: 16,
                thickness: 1,
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
            16,
      );
}

/// Custom Painter for Triangle
class TrianglePainter extends CustomPainter {
  final Color strokeColor;
  final PaintingStyle paintingStyle;

  TrianglePainter({
    this.strokeColor = Colors.black,
    this.paintingStyle = PaintingStyle.fill,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = strokeColor
      ..style = paintingStyle;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width / 2, size.height)
      ..lineTo(0, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
