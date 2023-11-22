import 'package:flutter/widgets.dart';

typedef Wrapper = Widget Function(Widget child);

class MultiWrapper extends StatelessWidget {
  final List<Wrapper> wrappers;
  final Widget child;

  const MultiWrapper({
    required this.wrappers,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) =>
      wrappers.fold(child, (child, wrapper) => wrapper(child));
}
