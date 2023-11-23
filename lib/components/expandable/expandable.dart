import 'dart:math' show pi;

import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/buttons/base/nomo_button.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'expandable.theme_data.g.dart';

const _kExpand = Icons.arrow_forward_ios_rounded;
const _kDuration = Duration(milliseconds: 300);
const _kCurve = Curves.easeInOut;

@NomoComponentThemeData('expandableTheme')
class Expandable extends StatefulWidget {
  final Widget title;
  final List<Widget> children;
  final IconData expandIcon;
  final Duration duration;
  final Curve curve;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BoxDecoration? decoration;

  /// If the [expansionNotifier] is defined [initiallyExpanded] is ignored
  /// If the [expansionNotifier] is not defined the state will be handled internally
  final ValueNotifier<bool>? expansionNotifier;

  final void Function()? onLongPress;
  final void Function(bool isExpanded)? onExpansionChanged;
  final bool initiallyExpanded;

  /// Styles
  @NomoSizingField(28.0)
  final double? iconSize;
  @NomoColorField(EdgeInsets.symmetric(horizontal: 8.0, vertical: 4))
  final EdgeInsetsGeometry? titlePadding;
  @NomoColorField(EdgeInsets.symmetric(vertical: 4.0))
  final EdgeInsetsGeometry? childrenPadding;
  @NomoColorField(BorderRadius.all(Radius.circular(12)))
  final BorderRadius? borderRadius;
  @NomoColorField<Color?>(null)
  final Color? highlightColor;
  @NomoColorField<Color?>(null)
  final Color? focusColor;
  @NomoColorField<Color?>(null)
  final Color? splashColor;
  @NomoColorField<Color?>(null)
  final Color? hoverColor;
  @NomoColorField<Color?>(null)
  final Color? iconColor;

  const Expandable({
    required this.title,
    required this.children,
    super.key,
    this.decoration,
    this.padding,
    this.curve = _kCurve,
    this.duration = _kDuration,
    this.expandIcon = _kExpand,
    this.margin,
    this.expansionNotifier,
    this.iconSize,
    this.initiallyExpanded = false,
    this.onLongPress,
    this.titlePadding,
    this.childrenPadding,
    this.onExpansionChanged,
    this.borderRadius,
    this.focusColor,
    this.highlightColor,
    this.hoverColor,
    this.splashColor,
    this.iconColor,
  });

  @override
  State<Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> with TickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<double> turnAnimation;
  late final Animation<double> heightFactorAnimation;
  late final ValueNotifier<bool> stateNotifier;
  late ExpandableThemeData theme;

  @override
  void initState() {
    stateNotifier = widget.expansionNotifier ?? ValueNotifier(widget.initiallyExpanded)
      ..addListener(onStateChanged);

    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
      value: stateNotifier.value ? 1 : 0,
    );

    turnAnimation = Tween(begin: pi / 2, end: 1.5 * pi).animate(
      CurvedAnimation(
        parent: controller,
        curve: widget.curve,
      ),
    );
    heightFactorAnimation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: widget.curve,
      ),
    );

    super.initState();
  }

  @override
  void didChangeDependencies() {
    theme = getFromContext(context, widget);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    controller.dispose();
    stateNotifier
      ..removeListener(onStateChanged)
      ..dispose();
    super.dispose();
  }

  void onStateChanged() {
    final isExpanded = stateNotifier.value;
    if (isExpanded) {
      controller.forward();
    } else {
      controller.reverse();
    }
    widget.onExpansionChanged?.call(isExpanded);
  }

  void onTap() {
    stateNotifier.value = !stateNotifier.value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: stateNotifier,
      builder: (context, value, _) {
        return AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            final hideChildren = value && controller.isDismissed;
            return Container(
              margin: widget.margin ?? EdgeInsets.zero,
              decoration: widget.decoration,
              padding: widget.padding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Material(
                    type: MaterialType.transparency,
                    child: InkWell(
                      onTap: onTap,
                      onLongPress: widget.onLongPress,
                      highlightColor: theme.highlightColor,
                      splashColor: theme.splashColor,
                      hoverColor: theme.hoverColor,
                      focusColor: theme.focusColor,
                      borderRadius: widget.borderRadius,
                      child: Padding(
                        padding: theme.titlePadding,
                        child: Row(
                          children: [
                            Expanded(child: widget.title),
                            NomoButton(
                              onPressed: onTap,
                              shape: BoxShape.circle,
                              padding: const EdgeInsets.all(12),
                              child: Transform.rotate(
                                angle: turnAnimation.value,
                                child: Icon(
                                  widget.expandIcon,
                                  size: theme.iconSize,
                                  color: theme.iconColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  ClipRect(
                    child: Align(
                      heightFactor: heightFactorAnimation.value,
                      child: Offstage(
                        offstage: hideChildren,
                        child: Padding(
                          padding: theme.childrenPadding,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisSize: MainAxisSize.min,
                            children: widget.children,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
