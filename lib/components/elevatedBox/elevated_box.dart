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
    final shadows = getElevationShadow(
      elevation: elevation,
      shadowColor: shadowColor,
      offset: offset,
    );

    return DecoratedBox(
      decoration: decoration.copyWith(
        boxShadow: shadows,
        border: border,
      ),
      child: child,
    );
  }
}

List<BoxShadow> getElevationShadow({
  required double elevation,
  Color shadowColor = const Color(0x33000000),
  Offset offset = Offset.zero,
}) {
  return [
    if (elevation > 0)
      BoxShadow(
        color: shadowColor,
        spreadRadius: 0.25 * elevation,
        blurRadius: 0.5 * elevation,
        offset: offset,
      ),
  ];
}
