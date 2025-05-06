import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/buttons/base/nomo_button.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_link_button.theme_data.g.dart';

@NomoComponentThemeData('linkButton')
class NomoLinkButton extends StatefulWidget with NomoButtonMixin {
  final String text;
  final TextStyle? textStyle;

  @override
  final FocusNode? focusNode;
  @override
  final VoidCallback? onSecondaryPressed;

  @override
  final VoidCallback? onPressed;
  @override
  final bool? enabled;
  @override
  final double? width;
  @override
  final double? height;
  @override
  final EdgeInsetsGeometry? margin;
  @override
  bool? get expandToConstraints => null;

  ///
  /// Theme Fields
  ///
  @override
  @NomoColorField(Color(0xFF1677ff))
  final Color? foregroundColor;
  @override
  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;
  @override
  @NomoSizingField<Color>(Color(0xFF4096ff))
  final Color? selectionColor;

  @NomoColorField<Color>(Color(0xFF0958d9))
  final Color? tapDownColor;

  /// Not used

  @override
  Border? get border => null;

  @override
  Color? get backgroundColor => null;

  @override
  BorderRadiusGeometry? get borderRadius => null;

  @override
  double? get elevation => null;

  @override
  BoxShape? get shape => null;

  @override
  Color? get splashColor => null;

  @override
  Color? get focusColor => null;

  @override
  Color? get hoverColor => null;

  @override
  Color? get highlightColor => null;

  const NomoLinkButton({
    required this.text,
    super.key,
    this.foregroundColor,
    this.selectionColor,
    this.padding,
    this.textStyle,
    this.onPressed,
    this.enabled,
    this.width,
    this.height,
    this.margin,
    this.tapDownColor,
    this.focusNode,
    this.onSecondaryPressed,
  });

  @override
  State<NomoLinkButton> createState() => _NomoLinkButtonState();
}

class _NomoLinkButtonState extends State<NomoLinkButton>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final AnimationController _controllerTapDown;
  late Animation<Color?> animation;
  late Animation<Color?> animationTapDown;
  bool isClicked = false;

  late NomoLinkButtonThemeData theme;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _controllerTapDown = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    super.initState();
  }

  void dispose() {
    _controller.dispose();
    _controllerTapDown.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    theme = getFromContext(context, widget);

    animation = ColorTween(
      begin: theme.foregroundColor,
      end: theme.selectionColor,
    ).animate(_controller);
    animationTapDown = ColorTween(
      begin: theme.selectionColor,
      end: theme.tapDownColor,
    ).animate(_controllerTapDown);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant NomoLinkButton oldWidget) {
    animation = ColorTween(
      begin: theme.foregroundColor,
      end: theme.selectionColor,
    ).animate(_controller);
    animationTapDown = ColorTween(
      begin: theme.selectionColor,
      end: theme.tapDownColor,
    ).animate(_controllerTapDown);
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([animation, animationTapDown]),
      builder: (context, child) {
        final colorValue = isClicked ? animationTapDown.value : animation.value;
        return NomoTextTheme(color: colorValue!, child: child!);
      },
      child: MouseRegion(
        onEnter: (event) => _controller.forward(),
        onExit: (event) => _controller.reverse(),
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: widget.onPressed,
          onTapDown: (event) {
            _controllerTapDown.forward();
            isClicked = true;
          },
          onTapUp: (event) {
            _controllerTapDown.reverse().whenComplete(() => isClicked = false);
          },
          child: Padding(
            padding: theme.padding,
            child: NomoText(
              widget.text,
              style: widget.textStyle,
              useInheritedTheme: true,
            ),
          ),
        ),
      ),
    );
  }
}
