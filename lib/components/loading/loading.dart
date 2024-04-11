import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'loading.theme_data.g.dart';

@NomoComponentThemeData('loading')
class Loading extends StatelessWidget {
  @NomoColorField(primaryColor)
  final Color? color;

  @NomoColorField(4.0)
  final double? strokeWidth;

  final double? size;
  final EdgeInsetsGeometry? padding;
  final Color? endColor;
  final Duration? period;

  const Loading({
    this.color,
    this.size,
    this.padding,
    this.endColor,
    this.strokeWidth,
    this.period,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    if (endColor != null) {
      return LoadingColorAnimation(
        startColor: theme.color,
        endColor: endColor!,
        period: period ?? const Duration(milliseconds: 1000),
        strokeWidth: theme.strokeWidth,
      );
    }

    return Container(
      width: size,
      height: size,
      padding: padding,
      child: CircularProgressIndicator(
        color: theme.color,
        strokeWidth: theme.strokeWidth,
        strokeCap: StrokeCap.round,
      ),
    );
  }
}

class LoadingColorAnimation extends StatefulWidget {
  final Color startColor;
  final Color endColor;
  final Duration period;
  final double strokeWidth;

  const LoadingColorAnimation({
    required this.endColor,
    required this.startColor,
    required this.period,
    required this.strokeWidth,
    super.key,
  });

  @override
  State<LoadingColorAnimation> createState() => _LoadingColorAnimationState();
}

class _LoadingColorAnimationState extends State<LoadingColorAnimation>
    with TickerProviderStateMixin {
  late final AnimationController controller;
  late Animation<Color?> animation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
    )..repeat(reverse: true, period: widget.period);

    animation = ColorTween(begin: widget.startColor, end: widget.endColor)
        .animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      valueColor: animation,
      strokeWidth: widget.strokeWidth,
      strokeCap: StrokeCap.round,
    );
  }
}
