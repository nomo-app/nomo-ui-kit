import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';

class AnimatedNomoDefaultTextStyle extends ImplicitlyAnimatedWidget {
  /// Creates a widget that animates the default text style implicitly.
  ///
  /// The [child], [style], [softWrap], [overflow], [curve], and [duration]
  /// arguments must not be null.
  const AnimatedNomoDefaultTextStyle({
    required this.child,
    required this.style,
    required super.duration,
    super.key,
    super.curve,
    super.onEnd,
  });

  /// The widget below this widget in the tree.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget child;

  /// The target text style.
  ///
  /// The text style must not be null.
  ///
  /// When this property is changed, the style will be animated over [duration] time.
  final TextStyle style;

  @override
  AnimatedWidgetBaseState<AnimatedNomoDefaultTextStyle> createState() => _AnimatedDefaultTextStyleState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    style.debugFillProperties(properties);
  }
}

class _AnimatedDefaultTextStyleState extends AnimatedWidgetBaseState<AnimatedNomoDefaultTextStyle> {
  TextStyleTween? _style;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _style =
        visitor(_style, widget.style, (dynamic value) => TextStyleTween(begin: value as TextStyle)) as TextStyleTween?;
  }

  @override
  Widget build(BuildContext context) {
    return NomoDefaultTextStyle(
      style: _style!.evaluate(animation),
      child: widget.child,
    );
  }
}
