import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/input/cupertino_text_input.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/platform_info.dart';
import 'package:nomo_ui_kit/utils/tweens.dart';

part 'nomo_input.theme_data.g.dart';

const _kDuration = Duration(milliseconds: 100);

enum InputState {
  nonError,
  selected,
  nonSelected,
  error,
  selectedWithError,
}

@NomoComponentThemeData('inputTheme')
class NomoInput extends StatefulWidget {
  final TextStyle? style;
  final Widget? leading;
  final Widget? trailling;
  final List<TextInputFormatter>? inputFormatters;
  final bool autoFocus;
  final TextInputType? keyboardType;
  final String? placeHolder;
  final TextStyle? placeHolderStyle;
  final TextStyle? titleStyle;
  final TextStyle? errorStyle;
  final bool usePlaceholderAsTitle;
  final int? minLines;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final ValueNotifier<String>? valueNotifier;
  final ValueNotifier<String?>? errorNotifier;
  final String? Function(String value)? validator;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField<Color>(Colors.redAccent)
  final Color? errorColor;

  @NomoSizingField(EdgeInsets.symmetric(horizontal: 16, vertical: 12))
  final EdgeInsets? padding;

  @NomoColorField<BorderRadiusGeometry>(BorderRadius.all(Radius.circular(8)))
  final BorderRadiusGeometry? borderRadius;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: Colors.transparent,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    ),
  )
  final Border? border;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: primaryColor,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    ),
  )
  final Border? selectedBorder;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: Colors.red,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    ),
  )
  final Border? errorBorder;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: Colors.redAccent,
        width: 2,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    ),
  )
  final Border? selectedErrorBorder;

  @NomoColorField(EdgeInsets.all(2))
  final EdgeInsets? margin;

  @NomoConstant(Duration(milliseconds: 200))
  final Duration? duration;

  @NomoConstant<Cubic>(Curves.easeInOut)
  final Cubic? curve;

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
    this.usePlaceholderAsTitle = true,
    this.maxLines,
    this.minLines,
    this.textInputAction,
    this.valueNotifier,
    this.validator,
    this.errorColor,
    this.errorStyle,
    this.errorNotifier,
    this.border,
    this.errorBorder,
    this.selectedBorder,
    this.selectedErrorBorder,
    this.margin,
    this.curve,
    this.duration,
  });

  @override
  State<NomoInput> createState() => _NomoInputState();
}

class _NomoInputState extends State<NomoInput> with TickerProviderStateMixin {
  late NomoInputThemeData theme;

  late final FocusNode focusNode;
  late final ValueNotifier<String> valueNotifier;
  late final ValueNotifier<String?> errorNotifer;
  late final ValueNotifier<BoxDecorationTween?> decorationNotifier;
  late final ValueNotifier<InputState> inputStateNotifier;
  late final TextEditingController textController;

  late final defaultDecoration = BoxDecoration(
    color: theme.background,
    borderRadius: theme.borderRadius,
    border: theme.border,
  );
  late final selectedDecoration = defaultDecoration.copyWith(border: theme.selectedBorder);
  late final errorDecoration = defaultDecoration.copyWith(border: theme.errorBorder);
  late final selectedErrorDecoration = defaultDecoration.copyWith(border: theme.selectedErrorBorder);

  @override
  void initState() {
    super.initState();

    decorationNotifier = ValueNotifier(null);
    valueNotifier = widget.valueNotifier ?? ValueNotifier('')
      ..addListener(notifierChanged);
    errorNotifer = widget.errorNotifier ?? ValueNotifier(null)
      ..addListener(errorChanged);
    inputStateNotifier = ValueNotifier(InputState.nonError);
    textController = TextEditingController(text: valueNotifier.value)..addListener(textControllerChanged);
    focusNode = FocusNode()..addListener(focusChanged);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = getFromContext(context, widget);

    decorationNotifier.value = BoxDecorationTween(
      begin: defaultDecoration,
      end: defaultDecoration,
    );

    if (widget.autoFocus && !focusNode.hasFocus) {
      focusNode.requestFocus();
    }

    if (errorNotifer.value != null) {
      changeToState(InputState.error);
    }
  }

  @override
  void dispose() {
    focusNode
      ..removeListener(focusChanged)
      ..dispose();
    textController
      ..removeListener(textControllerChanged)
      ..dispose();
    valueNotifier.removeListener(notifierChanged);
    if (widget.validator == null) {
      valueNotifier.dispose();
    }

    errorNotifer.removeListener(errorChanged);
    if (widget.errorNotifier == null) {
      errorNotifer.dispose();
    }

    super.dispose();
  }

  void focusChanged() {
    if (focusNode.hasFocus) {
      changeToState(InputState.selected);
    }
    if (!focusNode.hasFocus) {
      changeToState(InputState.nonSelected);
    }
  }

  void textControllerChanged() {
    if (valueNotifier.value == textController.text) return;
    valueNotifier.value = textController.text;

    textChanged();
  }

  void notifierChanged() {
    if (valueNotifier.value == textController.text) return;
    textController.text = valueNotifier.value;

    textChanged();
  }

  void textChanged() {
    if (widget.validator == null) return;
    final error = widget.validator!(textController.text);

    errorNotifer.value = error;
  }

  void errorChanged() {
    final hasError = errorNotifer.value != null;
    if (hasError) {
      changeToState(InputState.error);
      return;
    }
    changeToState(InputState.nonError);
  }

  void changeToState(InputState newState) {
    final oldState = inputStateNotifier.value;

    final state = switch ((oldState, newState)) {
      (InputState.selected, InputState.error) => InputState.selectedWithError,
      (InputState.selectedWithError, InputState.error) => InputState.selectedWithError,
      (InputState.error, InputState.selected) => InputState.selectedWithError,
      (InputState.selectedWithError, InputState.nonSelected) => InputState.error,
      (InputState.selectedWithError, InputState.nonError) => InputState.selected,
      (_, _) => newState,
    };

    final oldDecoration = decorationNotifier.value;

    final decoration = switch (state) {
      InputState.error => oldDecoration?.add(errorDecoration),
      InputState.selectedWithError => oldDecoration?.add(selectedErrorDecoration),
      InputState.nonError || InputState.nonSelected => oldDecoration?.add(defaultDecoration),
      InputState.selected => oldDecoration?.add(selectedDecoration),
    };

    decorationNotifier.value = decoration;
    inputStateNotifier.value = state;
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = NomoDefaultTextStyle.of(context);
    final titleStyle = widget.titleStyle ?? defaultTextStyle.copyWith(color: context.colors.onDisabled);
    final placeHolderStyle = widget.placeHolderStyle ?? defaultTextStyle.copyWith(color: context.colors.onDisabled);
    final errorStyle = widget.errorStyle ?? defaultTextStyle.copyWith(color: context.colors.error);

    return ValueListenableBuilder(
      valueListenable: errorNotifer,
      builder: (context, error, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedSize(
              duration: theme.duration,
              curve: theme.curve,
              alignment: Alignment.centerLeft,
              child: AnimatedOpacity(
                opacity: error == null ? 0 : 1,
                duration: theme.duration,
                curve: theme.curve,
                child: Offstage(
                  offstage: error == null,
                  child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 4),
                      child: NomoText(
                        error ?? '',
                        style: errorStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: theme.margin,
              child: CupertinoInput(
                usePlaceholderAsTitle: widget.usePlaceholderAsTitle,
                decorationTween: decorationNotifier,
                cursorColor: context.colors.primary,
                focusNode: focusNode,
                curve: theme.curve,
                duration: theme.duration,
                placeholder: widget.placeHolder,
                placeholderStyle: placeHolderStyle,
                titleStyle: titleStyle,
                minLines: widget.minLines,
                maxLines: widget.maxLines,
                textInputAction: widget.textInputAction,
                controller: textController,
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
            ),
          ],
        );
      },
    );
  }
}
