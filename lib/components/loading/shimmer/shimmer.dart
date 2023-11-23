import 'package:flutter/widgets.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/loading/shimmer/loading_shimmer.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'shimmer.theme_data.g.dart';

@NomoComponentThemeData('shimmerTheme')
class Shimmer extends StatefulWidget {
  final Widget? child;
  final Duration duration;

  @NomoColorField<LinearGradient>(
    LinearGradient(
      colors: [Color(0xFFEBEBF4), Color(0xFFF4F4F4), Color(0xFFEBEBF4)],
      stops: [0.1, 0.3, 0.4],
      begin: Alignment(-1.0, -0.3),
      end: Alignment(1.0, 0.3),
    ),
  )
  final LinearGradient? gradient;

  static ShimmerState? of(BuildContext context) {
    return context.findAncestorStateOfType<ShimmerState>();
  }

  const Shimmer({
    super.key,
    this.child,
    this.gradient,
    this.duration = const Duration(milliseconds: 1000),
  });

  @override
  ShimmerState createState() => ShimmerState();
}

class ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _shimmerController;
  late LinearGradient _gradient;

  @override
  void initState() {
    super.initState();

    _shimmerController = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: widget.duration);
  }

  @override
  void dispose() {
    _shimmerController.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    _gradient = getFromContext(context, widget).gradient;
    super.didChangeDependencies();
  }

  Listenable get shimmerChanges => _shimmerController;

  LinearGradient get gradient {
    return LinearGradient(
      colors: _gradient.colors,
      begin: _gradient.begin,
      end: _gradient.end,
      stops: _gradient.stops,
      tileMode: _gradient.tileMode,
      transform: SlidingGradientTransform(
        slidePercent: _shimmerController.value,
      ),
    );
  }

  bool get isSized {
    if (context.findRenderObject() is RenderBox) {
      return (context.findRenderObject()! as RenderBox).hasSize;
    } else {
      return false;
    }
  }

  Size get size => (context.findRenderObject()! as RenderBox).size;

  Offset getDescendantOffset({
    required RenderBox descendant,
    Offset offset = Offset.zero,
  }) {
    final shimmerBox = context.findRenderObject()! as RenderBox;
    return descendant.localToGlobal(offset, ancestor: shimmerBox);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox();
  }
}
