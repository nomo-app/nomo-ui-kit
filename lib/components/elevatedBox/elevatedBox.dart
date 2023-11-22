import 'package:flutter/widgets.dart';

class ElevatedBox extends StatelessWidget {
  final Widget child;
  final double elevation;
  final Offset? offset;
  final Color? shadowColor;
  final BoxBorder? border;
  final BoxDecoration decoration;

  const ElevatedBox({
    required this.child,
    this.elevation = 1,
    this.offset = Offset.zero,
    this.shadowColor = const Color(0x33000000),
    this.decoration = const BoxDecoration(),
    this.border,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final shadows = [
      if (elevation > 0)
        BoxShadow(
          color: shadowColor ?? const Color(0x33000000),
          spreadRadius: 0.25 * elevation,
          blurRadius: 0.5 * elevation,
          offset: offset ?? Offset.zero,
        ),
      ...?decoration.boxShadow,
    ];

    return DecoratedBox(
      decoration: decoration.copyWith(
        boxShadow: shadows,
        border: border,
      ),
      child: child,
    );
  }
}
