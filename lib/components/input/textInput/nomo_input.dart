import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/input/cupertino_text_input.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_input.theme_data.g.dart';

const _kDuration = Duration(milliseconds: 100);

@NomoComponentThemeData('inputTheme')
class NomoInput extends StatefulWidget {
  final TextStyle? style;
  final Widget? leading;
  final Widget? trailling;
  final List<TextInputFormatter>? inputFormatters;
  final bool autoFocus;
  final TextInputType? keyboardType;
  final BorderRadiusGeometry? borderRadius;
  final String? placeHolder;
  final TextStyle? placeHolderStyle;
  final TextStyle? titleStyle;
  final bool usePlaceholderAsTitle;
  final int? minLines;
  final int? maxLines;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField(primaryColor)
  final Color? selectionColor;

  @NomoSizingField(EdgeInsets.symmetric(horizontal: 16, vertical: 12))
  final EdgeInsets? padding;

  const NomoInput({
    super.key,
    this.background,
    this.padding,
    this.style,
    this.leading,
    this.trailling,
    this.autoFocus = false,
    this.keyboardType,
    this.inputFormatters,
    this.borderRadius,
    this.placeHolder,
    this.titleStyle,
    this.placeHolderStyle,
    this.selectionColor,
    this.usePlaceholderAsTitle = true,
    this.maxLines,
    this.minLines,
  });

  @override
  State<NomoInput> createState() => _NomoInputState();
}

class _NomoInputState extends State<NomoInput> with SingleTickerProviderStateMixin {
  late Animation<BoxDecoration> animation;
  late NomoInputThemeData theme;
  late final AnimationController controller;
  late final FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode()..addListener(focusChanged);
    controller = AnimationController(
      vsync: this,
      duration: _kDuration,
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = getFromContext(context, widget);

    final beginDecoration = BoxDecoration(
      color: theme.background,
      borderRadius: widget.borderRadius,
      border: Border.all(
        color: Colors.transparent,
        width: 0,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );
    final endDecoration = beginDecoration.copyWith(
      border: Border.all(
        color: theme.selectionColor,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );

    animation = BoxDecorationTween(
      begin: beginDecoration,
      end: endDecoration,
    ).animate(controller);

    if (widget.autoFocus && !focusNode.hasFocus) {
      focusNode.requestFocus();
    }
  }

  @override
  void dispose() {
    focusNode
      ..removeListener(focusChanged)
      ..dispose();
    controller.dispose();
    super.dispose();
  }

  void focusChanged() {
    if (focusNode.hasFocus && controller.isDismissed) {
      controller.forward();
    }
    if (!focusNode.hasFocus && controller.isCompleted) {
      controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = NomoDefaultTextStyle.of(context);
    final titleStyle = widget.titleStyle ?? defaultTextStyle.copyWith(color: context.colors.onDisabled);
    final placeHolderStyle = widget.placeHolderStyle ?? defaultTextStyle.copyWith(color: context.colors.onDisabled);

    return Padding(
      padding: const EdgeInsets.all(2),
      child: CupertinoInput(
        usePlaceholderAsTitle: widget.usePlaceholderAsTitle,
        decorationAnimation: animation,
        cursorColor: context.colors.primary,
        focusNode: focusNode,
        placeholder: widget.placeHolder,
        placeholderStyle: placeHolderStyle,
        titleStyle: titleStyle,
        minLines: widget.minLines,
        maxLines: widget.maxLines,
        prefix: Padding(
          padding: EdgeInsets.only(left: theme.padding.horizontal / 2),
          child: widget.leading,
        ).ifElseNull(widget.leading != null),
        suffix: Padding(
          padding: EdgeInsets.only(right: theme.padding.horizontal / 2),
          child: widget.trailling,
        ).ifElseNull(widget.trailling != null),
        padding: theme.padding,
        inputFormatters: widget.inputFormatters,
        keyboardAppearance: context.colors.brightness,
        keyboardType: widget.keyboardType,
        style: widget.style ?? defaultTextStyle,
        selectionControls: switch (PlatformInfo.isCupertino) {
          true when PlatformInfo.isDesktop => CupertinoDesktopTextSelectionControls(),
          true => CupertinoTextSelectionControls(),
          false when PlatformInfo.isDesktop => DesktopTextSelectionControls(),
          false => MaterialTextSelectionControls(),
        },
        contextMenuBuilder: (context, editableTextState) {
          return switch (PlatformInfo.isCupertino) {
            true => CupertinoAdaptiveTextSelectionToolbar.editableText(
                editableTextState: editableTextState,
              ),
            false => AdaptiveTextSelectionToolbar.editableText(
                editableTextState: editableTextState,
              )
          };
        },
      ),
    );
  }
}

class PlatformInfo {
  static bool get isCupertino => Platform.isIOS || Platform.isMacOS;

  static bool get isMaterial => !isCupertino;

  static bool get isDesktop => Platform.isLinux || Platform.isMacOS || Platform.isMacOS;
}

class BoxDecorationTween extends Tween<BoxDecoration> {
  BoxDecorationTween({super.begin, super.end});

  @override
  BoxDecoration lerp(double t) {
    return BoxDecoration.lerp(begin, end, t)!;
  }
}
