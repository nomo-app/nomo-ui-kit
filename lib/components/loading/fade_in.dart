import 'package:flutter/widgets.dart';

/// Copied from: https://github.com/Klerith/animate_do_package

/// Class [FadeIn]:
/// [key]: optional widget key reference
/// [child]: mandatory, widget to animate
/// [duration]: how much time the animation should take
/// [delay]: delay before the animation starts
/// [controller]: optional/mandatory, exposes the animation controller created by Animate_do
/// [manualTrigger]: boolean that indicates if you want to trigger the animation manually with the controller
/// [animate]: For a State controller property, if you re-render changing it from false to true, the animation will be fired inmediatelly
class FadeIn extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Duration delay;
  final void Function(AnimationController)? controller;
  final bool manualTrigger;
  final bool animate;

  FadeIn({
    required this.child,
    super.key,
    this.duration = const Duration(milliseconds: 400),
    this.delay = Duration.zero,
    this.controller,
    this.manualTrigger = false,
    this.animate = true,
  }) {
    if (manualTrigger == true && controller == null) {
      throw FlutterError('If you want to use manualTrigger:true, \n\n'
          'Then you must provide the controller property, that is a callback like:\n\n'
          ' ( controller: AnimationController) => yourController = controller \n\n');
    }
  }

  @override
  FadeInState createState() => FadeInState();
}

/// FadeState class
/// The animation magic happens here
class FadeInState extends State<FadeIn> with SingleTickerProviderStateMixin {
  /// Animation controller that controls this animation
  AnimationController? controller;

  /// is the widget disposed?
  bool disposed = false;

  /// Animation movement value
  late Animation<double> animation;

  @override
  void dispose() {
    disposed = true;
    controller!.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: widget.duration, vsync: this);
    animation = CurvedAnimation(curve: Curves.easeOut, parent: controller!);

    if (!widget.manualTrigger && widget.animate) {
      Future.delayed(widget.delay, () {
        if (!disposed) {
          controller?.forward();
        }
      });
    }

    if (widget.controller is Function) {
      widget.controller!(controller!);
    }
  }

  @override
  Widget build(BuildContext context) {
    /// Launch the animation ASAP or wait if is needed
    if (widget.animate && widget.delay.inMilliseconds == 0) {
      controller?.forward();
    }

    /// If the animation already happen, we can animate it back
    if (!widget.animate) {
      controller?.animateBack(0);
    }

    /// Builds the animation with the corresponding
    return AnimatedBuilder(
      animation: animation,
      builder: (BuildContext context, Widget? child) {
        return Opacity(
          opacity: animation.value,
          child: widget.child,
        );
      },
    );
  }
}
