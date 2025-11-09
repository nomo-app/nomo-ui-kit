import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/animations/implicit/animated_nomo_default_textstyle.dart';
import 'package:nomo_ui_kit/components/elevatedBox/elevated_box.dart';
import 'package:nomo_ui_kit/components/input/cupertino_text_input.dart';
import 'package:nomo_ui_kit/components/input/form/nomo_form.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/tweens.dart';

part 'nomo_input.theme_data.g.dart';

enum InputState {
  nonError,
  selected,
  nonSelected,
  error,
  selectedWithError,
}

typedef BoxDecorationTweenInfo = ({
  BoxDecorationTween? decoration,
  bool shouldAnimate
});

@NomoComponentThemeData('input')
class NomoInput extends StatefulWidget {
  final Widget? leading;
  final Widget? trailling;
  final List<TextInputFormatter>? inputFormatters;
  final bool autoFocus;
  final bool enabled;
  final bool scrollable;
  final TextInputType? keyboardType;
  final String? placeHolder;
  final String? title;
  final TextStyle? style;
  final TextStyle? placeHolderStyle;
  final TextStyle? titleStyle;
  final TextStyle? errorStyle;
  final bool usePlaceholderAsTitle;
  final int? minLines;
  final int? maxLines;
  final TextInputAction? textInputAction;
  final ValueNotifier<String>? valueNotifier;
  final TextEditingController? textEditingController;
  final ValueNotifier<String?>? errorNotifier;
  final String? Function(String value)? validator;
  final String? formKey;
  final bool autoValidate;
  final double? height;
  final TextAlign textAlign;
  final void Function(String value)? onChanged;
  final void Function(bool hasFocus)? onFocusChanged;
  final String? initialText;
  final bool? obscureText;
  final FocusNode? focusNode;
  final int? maxLength;
  final int? maxParagraphs;
  final bool autoCorrect;
  final void Function()? onFieldSubmitted;

  final void Function()? onTap;
  final void Function(PointerDownEvent)? onTapOutside;

  final Widget? bottom;
  final Widget? top;

  final HitTestBehavior hitTestBehavior;

  @NomoColorField<double?>(null)
  final double? elevation;

  @NomoColorField(Colors.white)
  final Color? background;

  @NomoColorField<Color>(Colors.redAccent)
  final Color? errorColor;

  @NomoSizingField(EdgeInsets.symmetric(horizontal: 16, vertical: 12))
  final EdgeInsets? padding;

  @NomoSizingField(8.0)
  final double? textSpacing;

  @NomoColorField<BorderRadiusGeometry>(BorderRadius.all(Radius.circular(8)))
  final BorderRadiusGeometry? borderRadius;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: Colors.transparent,
        width: 2,
      ),
    ),
  )
  final Border? border;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: primaryColor,
        width: 2,
      ),
    ),
  )
  final Border? selectedBorder;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: Colors.red,
        width: 2,
      ),
    ),
  )
  final Border? errorBorder;

  @NomoColorField(
    Border.fromBorderSide(
      BorderSide(
        color: Colors.redAccent,
        width: 2,
      ),
    ),
  )
  final Border? selectedErrorBorder;

  @NomoColorField(EdgeInsets.zero)
  final EdgeInsets? margin;

  @NomoConstant(Duration(milliseconds: 200))
  final Duration? duration;

  @NomoConstant<Cubic>(Curves.easeInOut)
  final Cubic? curve;

  @NomoConstant(2.0)
  final double? titleSpacing;

  const NomoInput({
    super.key,
    this.background,
    this.focusNode,
    this.padding,
    this.style,
    this.leading,
    this.trailling,
    this.autoFocus = false,
    this.title,
    this.keyboardType,
    this.inputFormatters,
    this.borderRadius,
    this.placeHolder,
    this.titleStyle,
    this.placeHolderStyle,
    this.usePlaceholderAsTitle = false,
    this.maxLines,
    this.minLines,
    this.textInputAction,
    this.valueNotifier,
    this.elevation,
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
    this.formKey,
    this.autoValidate = false,
    this.titleSpacing,
    this.height,
    this.onChanged,
    this.textAlign = TextAlign.start,
    this.onFocusChanged,
    this.enabled = true,
    this.scrollable = false,
    this.initialText,
    this.obscureText,
    this.top,
    this.bottom,
    this.maxLength,
    this.maxParagraphs,
    this.onTap,
    this.onTapOutside,
    this.hitTestBehavior = HitTestBehavior.translucent,
    this.textEditingController,
    this.autoCorrect = false,
    this.onFieldSubmitted,
    this.textSpacing,
  })  : assert(
          height == null || usePlaceholderAsTitle == false,
          'Not supported please ask Thomas to implement',
        ),
        assert(
          textEditingController == null || valueNotifier == null,
          'Please provide either a textEditingController or a valueNotifier',
        );

  @override
  State<NomoInput> createState() => _NomoInputState();
}

class _NomoInputState extends State<NomoInput> with TickerProviderStateMixin {
  late NomoInputThemeData theme;

  late final FocusNode focusNode;
  late final ValueNotifier<String> valueNotifier;
  late final ValueNotifier<String?> errorNotifer;
  late final ValueNotifier<BoxDecorationTweenInfo?> decorationNotifier;
  late final ValueNotifier<InputState> inputStateNotifier;
  late final TextEditingController textController;
  late final ScrollController? scrollController;
  late BoxDecoration defaultDecoration = BoxDecoration(
    color: theme.background,
    borderRadius: theme.borderRadius,
    border: theme.border,
  );
  late BoxDecoration selectedDecoration =
      defaultDecoration.copyWith(border: theme.selectedBorder);
  late BoxDecoration errorDecoration =
      defaultDecoration.copyWith(border: theme.errorBorder);
  late BoxDecoration selectedErrorDecoration =
      defaultDecoration.copyWith(border: theme.selectedErrorBorder);

  ///
  /// Form Logic
  ///
  bool get isInForm => widget.formKey != null;
  late NomoFormValidator? formValidator;
  late NomoFormValues? formValues;

  TextEditingController? _internalTextEditingController;

  @override
  void initState() {
    super.initState();

    decorationNotifier = ValueNotifier(null);
    valueNotifier =
        widget.valueNotifier ?? ValueNotifier(widget.initialText ?? '')
          ..addListener(notifierChanged);
    errorNotifer = widget.errorNotifier ?? ValueNotifier(null)
      ..addListener(errorChanged);
    inputStateNotifier = ValueNotifier(InputState.nonError);
    textController = widget.textEditingController ??
        (_internalTextEditingController =
            TextEditingController(text: valueNotifier.value))
      ..addListener(textControllerChanged);
    focusNode = widget.focusNode ?? FocusNode()
      ..addListener(focusChanged);

    scrollController = widget.scrollable ? ScrollController() : null;
  }

  @override
  void didUpdateWidget(covariant NomoInput oldWidget) {
    Future.microtask(
      () {
        if (widget.initialText != null &&
            widget.initialText != oldWidget.initialText) {
          valueNotifier.value = widget.initialText!;
        }
      },
    );

    theme = getFromContext(context, widget);

    defaultDecoration = BoxDecoration(
      color: theme.background,
      borderRadius: theme.borderRadius,
      border: theme.border,
      boxShadow: getElevationShadow(
        elevation: widget.elevation ?? 0,
        shadowColor: Colors.black12,
        offset: Offset.zero,
      ),
    );

    selectedDecoration =
        defaultDecoration.copyWith(border: theme.selectedBorder);
    errorDecoration = defaultDecoration.copyWith(border: theme.errorBorder);
    selectedErrorDecoration =
        defaultDecoration.copyWith(border: theme.selectedErrorBorder);

    changeToState(inputStateNotifier.value);

    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    theme = getFromContext(context, widget);

    decorationNotifier.value = (
      decoration: BoxDecorationTween(
        begin: defaultDecoration,
        end: defaultDecoration,
      ),
      shouldAnimate: false,
    );

    if (widget.autoFocus && !focusNode.hasFocus) {
      focusNode.requestFocus();
    }

    if (errorNotifer.value != null) {
      changeToState(InputState.error, shouldAnimate: false);
    }

    ///
    /// Form
    ///
    formValidator = isInForm ? NomoForm.of(context)?.validator : null
      ?..addListener(formValidate)
      ..addField(widget.formKey!);
    formValues = isInForm ? NomoForm.of(context)?.values : null
      ?..setValueNotifierForField(widget.formKey!, valueNotifier);
  }

  @override
  void dispose() {
    if (widget.focusNode == null) {
      focusNode.dispose();
    }
    focusNode.removeListener(focusChanged);

    textController.removeListener(textControllerChanged);
    _internalTextEditingController?.dispose();

    valueNotifier.removeListener(notifierChanged);

    if (widget.valueNotifier == null) {
      valueNotifier.dispose();
    }

    errorNotifer.removeListener(errorChanged);
    if (widget.errorNotifier == null) {
      errorNotifer.dispose();
    }

    formValidator?.removeListener(formValidate);

    scrollController?.dispose();

    super.dispose();
  }

  void focusChanged() {
    if (focusNode.hasFocus) {
      changeToState(InputState.selected);
    }
    if (!focusNode.hasFocus) {
      changeToState(InputState.nonSelected);
    }

    widget.onFocusChanged?.call(focusNode.hasFocus);
  }

  void textControllerChanged() {
    if (valueNotifier.value == textController.text) return;
    valueNotifier.value = textController.text;

    validate(false);
    formValues?.updateField(widget.formKey!, textController.text);

    widget.onChanged?.call(textController.text);
  }

  void notifierChanged() {
    if (valueNotifier.value == textController.text) return;
    textController.text = valueNotifier.value;

    validate(false);
    formValues?.updateField(widget.formKey!, valueNotifier.value);

    widget.onChanged?.call(valueNotifier.value);
  }

  bool validate(bool fromForm) {
    if (widget.validator == null) return true;
    if (!fromForm && !widget.autoValidate) return true;
    final error = widget.validator!(textController.text);

    errorNotifer.value = error;
    formValidator?.validateField(widget.formKey!, error == null);

    return error == null;
  }

  void formValidate() {
    final valid = validate(true);
    formValidator!.validateField(widget.formKey!, valid);
  }

  void errorChanged() {
    final hasError = errorNotifer.value != null;
    if (hasError) {
      changeToState(InputState.error);
      return;
    }
    changeToState(InputState.nonError);
  }

  void changeToState(InputState newState, {bool shouldAnimate = true}) {
    final oldState = inputStateNotifier.value;

    final state = switch ((oldState, newState)) {
      (InputState.selected, InputState.error) => InputState.selectedWithError,
      (InputState.selectedWithError, InputState.error) =>
        InputState.selectedWithError,
      (InputState.error, InputState.selected) => InputState.selectedWithError,
      (InputState.selectedWithError, InputState.nonSelected) =>
        InputState.error,
      (InputState.selectedWithError, InputState.nonError) =>
        InputState.selected,
      (_, _) => newState,
    };

    final oldDecoration = decorationNotifier.value?.decoration;

    final decoration = switch (state) {
      InputState.error => oldDecoration?.add(errorDecoration),
      InputState.selectedWithError =>
        oldDecoration?.add(selectedErrorDecoration),
      InputState.nonError ||
      InputState.nonSelected =>
        oldDecoration?.add(defaultDecoration),
      InputState.selected => oldDecoration?.add(selectedDecoration),
    };

    decorationNotifier.value =
        (decoration: decoration, shouldAnimate: shouldAnimate);
    inputStateNotifier.value = state;
  }

  @override
  Widget build(BuildContext context) {
    final defaultTextStyle = NomoDefaultTextStyle.of(context);
    final titleStyle = widget.titleStyle ??
        defaultTextStyle.copyWith(color: context.colors.onDisabled);
    final placeHolderStyle = widget.placeHolderStyle ??
        defaultTextStyle.copyWith(color: context.colors.onDisabled);
    final errorStyle = widget.errorStyle ??
        defaultTextStyle.copyWith(color: context.colors.error);

    final edgeInsets = theme.padding.resolve(Directionality.of(context));

    var style = widget.style ?? defaultTextStyle;

    if (widget.enabled == false) {
      style = style.copyWith(color: context.colors.onDisabled);
    }

    return ValueListenableBuilder(
      valueListenable: errorNotifer,
      builder: (context, error, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.title != null)
              Padding(
                padding: EdgeInsets.only(bottom: theme.titleSpacing),
                child: NomoText(
                  widget.title!,
                  style: titleStyle,
                ),
              ),
            Container(
              height: widget.height,
              margin: theme.margin,
              child: AnimatedNomoDefaultTextStyle(
                style: style,
                duration: theme.duration,
                curve: theme.curve,
                child: CupertinoInput(
                  bottom: widget.bottom,
                  top: widget.top,
                  textSpacing: theme.textSpacing,
                  obscureText: widget.obscureText ?? false,
                  usePlaceholderAsTitle: widget.usePlaceholderAsTitle,
                  decorationTween: decorationNotifier,
                  cursorColor: context.colors.primary,
                  focusNode: focusNode,
                  curve: theme.curve,
                  scrollController: scrollController,
                  scrollPhysics: widget.scrollable
                      ? null
                      : const NeverScrollableScrollPhysics(),
                  onSubmitted: (_) => widget.onFieldSubmitted?.call(),
                  hitTestBehavior: widget.hitTestBehavior,
                  onTap: widget.onTap,
                  onTapOutside: widget.onTapOutside,
                  maxLength: widget.maxLength,
                  duration: theme.duration,
                  placeholder: widget.placeHolder,
                  autocorrect: widget.autoCorrect,
                  placeholderStyle: placeHolderStyle,
                  titleStyle: titleStyle,
                  minLines: widget.minLines,
                  maxLines: widget.maxLines,
                  textInputAction: widget.textInputAction,
                  controller: textController,
                  enabled: widget.enabled,
                  textAlign: widget.textAlign,
                  prefix: widget.leading.ifElseNull(widget.leading != null),
                  suffix: widget.trailling.ifElseNull(widget.trailling != null),
                  padding: theme.padding,
                  inputFormatters: [
                    if (widget.maxParagraphs != null)
                      ParagraphLimitingTextInputFormatter(
                        maxParagraphs: widget.maxParagraphs!,
                      ),
                    ...?widget.inputFormatters,
                  ],
                  keyboardAppearance: context.colors.brightness,
                  keyboardType: widget.keyboardType,
                  enableInteractiveSelection: true,
                  magnifierConfiguration: TextMagnifierConfiguration.disabled,
                  contextMenuBuilder: (context, editableTextState) {
                    return AdaptiveTextSelectionToolbar.editableText(
                      editableTextState: editableTextState,
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: edgeInsets.left),
              child: AnimatedSize(
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
                      child: NomoText(
                        error ?? '',
                        style: errorStyle,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class ParagraphLimitingTextInputFormatter extends TextInputFormatter {
  final int maxParagraphs;

  ParagraphLimitingTextInputFormatter({this.maxParagraphs = 2});

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final paragraphCount = newValue.text.split('\n').length;
    if (paragraphCount <= maxParagraphs) {
      return newValue;
    } else {
      // Limit the input to the maximum number of paragraphs
      final lastParagraphIndex = newValue.text.lastIndexOf('\n');
      final truncatedText = newValue.text.substring(0, lastParagraphIndex);
      return newValue.copyWith(
        text: truncatedText,
        selection: TextSelection.collapsed(offset: truncatedText.length),
      );
    }
  }
}
