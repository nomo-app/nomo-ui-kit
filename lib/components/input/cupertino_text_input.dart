// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: prefer_asserts_with_message, cascade_invocations, comment_references

import 'dart:ui' as ui show BoxHeightStyle, BoxWidthStyle;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/input/textInput/text_layout.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

export 'package:flutter/services.dart'
    show
        SmartDashesType,
        SmartQuotesType,
        TextCapitalization,
        TextInputAction,
        TextInputType;

const Color _kDisabledBackground = CupertinoDynamicColor.withBrightness(
  color: Color(0xFFFAFAFA),
  darkColor: Color(0xFF050505),
);

// An eyeballed value that moves the cursor slightly left of where it is
// rendered for text on Android so it's positioning more accurately matches the
// native iOS text cursor positioning.
//
// This value is in device pixels, not logical pixels as is typically used
// throughout the codebase.
const int _iOSHorizontalCursorOffsetPixels = -2;

class _CupertinoTextFieldSelectionGestureDetectorBuilder
    extends TextSelectionGestureDetectorBuilder {
  _CupertinoTextFieldSelectionGestureDetectorBuilder({
    required _CupertinoInputState state,
  })  : _state = state,
        super(delegate: state);

  final _CupertinoInputState _state;

  @override
  void onSingleTapUp(TapDragUpDetails details) {
    // Because TextSelectionGestureDetector listens to taps that happen on
    // widgets in front of it, tapping the clear button will also trigger
    // this handler. If the clear button widget recognizes the up event,
    // then do not handle it.
    if (_state._clearGlobalKey.currentContext != null) {
      final renderBox = _state._clearGlobalKey.currentContext!
          .findRenderObject()! as RenderBox;
      final localOffset = renderBox.globalToLocal(details.globalPosition);
      if (renderBox.hitTest(BoxHitTestResult(), position: localOffset)) {
        return;
      }
    }
    super.onSingleTapUp(details);
    _state._requestKeyboard();
    _state.widget.onTap?.call();
  }

  @override
  void onDragSelectionEnd(TapDragEndDetails details) {
    _state._requestKeyboard();
    super.onDragSelectionEnd(details);
  }
}

/// An iOS-style text field.
///
/// A text field lets the user enter text, either with a hardware keyboard or with
/// an onscreen keyboard.
///
/// This widget corresponds to both a `UITextField` and an editable `UITextView`
/// on iOS.
///
/// The text field calls the [onChanged] callback whenever the user changes the
/// text in the field. If the user indicates that they are done typing in the
/// field (e.g., by pressing a button on the soft keyboard), the text field
/// calls the [onSubmitted] callback.
///
/// {@macro flutter.widgets.EditableText.onChanged}
///
/// {@tool dartpad}
/// This example shows how to set the initial value of the [CupertinoInput] using
/// a [controller] that already contains some text.
///
/// ** See code in examples/api/lib/cupertino/text_field/cupertino_text_field.0.dart **
/// {@end-tool}
///
/// The [controller] can also control the selection and composing region (and to
/// observe changes to the text, selection, and composing region).
///
/// The text field has an overridable [decoration] that, by default, draws a
/// rounded rectangle border around the text field. If you set the [decoration]
/// property to null, the decoration will be removed entirely.
///
/// {@macro flutter.material.textfield.wantKeepAlive}
///
/// Remember to call [TextEditingController.dispose] when it is no longer
/// needed. This will ensure we discard any resources used by the object.
///
/// {@macro flutter.widgets.editableText.showCaretOnScreen}
///
/// See also:
///
///  * <https://developer.apple.com/documentation/uikit/uitextfield>
///  * [TextField], an alternative text field widget that follows the Material
///    Design UI conventions.
///  * [EditableText], which is the raw text editing control at the heart of a
///    [TextField].
///  * Learn how to use a [TextEditingController] in one of our [cookbook recipes](https://flutter.dev/docs/cookbook/forms/text-field-changes#2-use-a-texteditingcontroller).
///  * <https://developer.apple.com/design/human-interface-guidelines/ios/controls/text-fields/>
class CupertinoInput extends StatefulWidget {
  /// Creates an iOS-style text field.
  ///
  /// To provide a prefilled text entry, pass in a [TextEditingController] with
  /// an initial value to the [controller] parameter.
  ///
  /// To provide a hint placeholder text that appears when the text entry is
  /// empty, pass a [String] to the [placeholder] parameter.
  ///
  /// The [maxLines] property can be set to null to remove the restriction on
  /// the number of lines. In this mode, the intrinsic height of the widget will
  /// grow as the number of lines of text grows. By default, it is `1`, meaning
  /// this is a single-line text field and will scroll horizontally when
  /// it overflows. [maxLines] must not be zero.
  ///
  /// The text cursor is not shown if [showCursor] is false or if [showCursor]
  /// is null (the default) and [readOnly] is true.
  ///
  /// If specified, the [maxLength] property must be greater than zero.
  ///
  /// The [selectionHeightStyle] and [selectionWidthStyle] properties allow
  /// changing the shape of the selection highlighting. These properties default
  /// to [ui.BoxHeightStyle.tight] and [ui.BoxWidthStyle.tight] respectively and
  /// must not be null.
  ///
  /// The [autocorrect], [autofocus], [clearButtonMode], [dragStartBehavior],
  /// [expands], [obscureText], [prefixMode], [readOnly], [scrollPadding],
  /// [suffixMode], [textAlign], [selectionHeightStyle], [selectionWidthStyle],
  /// [enableSuggestions], and [enableIMEPersonalizedLearning] properties must
  /// not be null.
  ///
  /// {@macro flutter.widgets.editableText.accessibility}
  ///
  /// See also:
  ///
  ///  * [minLines], which is the minimum number of lines to occupy when the
  ///    content spans fewer lines.
  ///  * [expands], to allow the widget to size itself to its parent's height.
  ///  * [maxLength], which discusses the precise meaning of "number of
  ///    characters" and how it may differ from the intuitive meaning.
  const CupertinoInput({
    required this.decorationTween,
    required this.placeholderStyle,
    required this.titleStyle,
    required this.usePlaceholderAsTitle,
    required this.duration,
    required this.curve,
    super.key,
    this.controller,
    this.focusNode,
    this.undoController,
    this.padding = const EdgeInsets.all(7.0),
    this.placeholder,
    this.prefix,
    this.prefixMode = OverlayVisibilityMode.always,
    this.suffix,
    this.suffixMode = OverlayVisibilityMode.always,
    this.clearButtonMode = OverlayVisibilityMode.never,
    TextInputType? keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.strutStyle,
    this.textAlign = TextAlign.start,
    this.textAlignVertical,
    this.textDirection,
    this.readOnly = false,
    this.showCursor,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.obscureText = false,
    this.autocorrect = true,
    SmartDashesType? smartDashesType,
    SmartQuotesType? smartQuotesType,
    this.enableSuggestions = true,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.maxLengthEnforcement,
    this.onChanged,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTapOutside,
    this.inputFormatters,
    this.enabled,
    this.cursorWidth = 2.0,
    this.cursorHeight,
    this.cursorRadius = const Radius.circular(2.0),
    this.cursorOpacityAnimates = true,
    this.cursorColor,
    this.selectionHeightStyle = ui.BoxHeightStyle.tight,
    this.selectionWidthStyle = ui.BoxWidthStyle.tight,
    this.keyboardAppearance,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.dragStartBehavior = DragStartBehavior.start,
    bool? enableInteractiveSelection,
    this.selectionControls,
    this.onTap,
    this.scrollController,
    this.scrollPhysics,
    this.autofillHints = const <String>[],
    this.contentInsertionConfiguration,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.scribbleEnabled = true,
    this.enableIMEPersonalizedLearning = true,
    this.contextMenuBuilder = _defaultContextMenuBuilder,
    this.spellCheckConfiguration,
    this.magnifierConfiguration,
  })  : assert(obscuringCharacter.length == 1),
        smartDashesType = smartDashesType ??
            (obscureText ? SmartDashesType.disabled : SmartDashesType.enabled),
        smartQuotesType = smartQuotesType ??
            (obscureText ? SmartQuotesType.disabled : SmartQuotesType.enabled),
        assert(maxLines == null || maxLines > 0),
        assert(minLines == null || minLines > 0),
        assert(
          (maxLines == null) || (minLines == null) || (maxLines >= minLines),
          "minLines can't be greater than maxLines",
        ),
        assert(
          !expands || (maxLines == null && minLines == null),
          'minLines and maxLines must be null when expands is true.',
        ),
        assert(!obscureText || maxLines == 1,
            'Obscured fields cannot be multiline.'),
        assert(maxLength == null || maxLength > 0),
        // Assert the following instead of setting it directly to avoid surprising the user by silently changing the value they set.
        assert(
          !identical(textInputAction, TextInputAction.newline) ||
              maxLines == 1 ||
              !identical(keyboardType, TextInputType.text),
          'Use keyboardType TextInputType.multiline when using TextInputAction.newline on a multiline TextField.',
        ),
        keyboardType = keyboardType ??
            (maxLines == 1 ? TextInputType.text : TextInputType.multiline),
        enableInteractiveSelection =
            enableInteractiveSelection ?? (!readOnly || !obscureText);

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController].
  final TextEditingController? controller;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// Controls the [BoxDecoration] of the box behind the text input.
  ///
  /// Defaults to having a rounded rectangle grey border and can be null to have
  /// no box decoration.
  final ValueNotifier<BoxDecorationTweenInfo?> decorationTween;

  /// Padding around the text entry area between the [prefix] and [suffix]
  /// or the clear button when [clearButtonMode] is not never.
  ///
  /// Defaults to a padding of 6 pixels on all sides and can be null.
  final EdgeInsetsGeometry padding;

  /// A lighter colored placeholder hint that appears on the first line of the
  /// text field when the text entry is empty.
  ///
  /// Defaults to having no placeholder text.
  ///
  /// The text style of the placeholder text matches that of the text field's
  /// main text entry except a lighter font weight and a grey font color.
  final String? placeholder;

  /// The style to use for the placeholder text.
  ///
  /// The [placeholderStyle] is merged with the [style] [TextStyle] when applied
  /// to the [placeholder] text. To avoid merging with [style], specify
  /// [TextStyle.inherit] as false.
  ///
  /// Defaults to the [style] property with w300 font weight and grey color.
  ///
  /// If specifically set to null, placeholder's style will be the same as [style].
  final TextStyle placeholderStyle;

  final TextStyle titleStyle;

  final Duration duration;

  final Curve curve;

  /// An optional [Widget] to display before the text.
  final Widget? prefix;

  /// Controls the visibility of the [prefix] widget based on the state of
  /// text entry when the [prefix] argument is not null.
  ///
  /// Defaults to [OverlayVisibilityMode.always] and cannot be null.
  ///
  /// Has no effect when [prefix] is null.
  final OverlayVisibilityMode prefixMode;

  /// An optional [Widget] to display after the text.
  final Widget? suffix;

  /// Controls the visibility of the [suffix] widget based on the state of
  /// text entry when the [suffix] argument is not null.
  ///
  /// Defaults to [OverlayVisibilityMode.always] and cannot be null.
  ///
  /// Has no effect when [suffix] is null.
  final OverlayVisibilityMode suffixMode;

  /// Show an iOS-style clear button to clear the current text entry.
  ///
  /// Can be made to appear depending on various text states of the
  /// [TextEditingController].
  ///
  /// Will only appear if no [suffix] widget is appearing.
  ///
  /// Defaults to never appearing and cannot be null.
  final OverlayVisibilityMode clearButtonMode;

  /// {@macro flutter.widgets.editableText.keyboardType}
  final TextInputType keyboardType;

  /// The type of action button to use for the keyboard.
  ///
  /// Defaults to [TextInputAction.newline] if [keyboardType] is
  /// [TextInputType.multiline] and [TextInputAction.done] otherwise.
  final TextInputAction? textInputAction;

  /// {@macro flutter.widgets.editableText.textCapitalization}
  final TextCapitalization textCapitalization;

  /// The style to use for the text being edited.
  ///
  /// Also serves as a base for the [placeholder] text's style.
  ///
  /// Defaults to the standard iOS font style from [CupertinoTheme] if null.
  final TextStyle? style;

  /// {@macro flutter.widgets.editableText.strutStyle}
  final StrutStyle? strutStyle;

  /// {@macro flutter.widgets.editableText.textAlign}
  final TextAlign textAlign;

  /// {@macro flutter.material.InputDecorator.textAlignVertical}
  final TextAlignVertical? textAlignVertical;

  /// {@macro flutter.widgets.editableText.textDirection}
  final TextDirection? textDirection;

  /// {@macro flutter.widgets.editableText.readOnly}
  final bool readOnly;

  /// {@macro flutter.widgets.editableText.showCursor}
  final bool? showCursor;

  /// {@macro flutter.widgets.editableText.autofocus}
  final bool autofocus;

  /// {@macro flutter.widgets.editableText.obscuringCharacter}
  final String obscuringCharacter;

  /// {@macro flutter.widgets.editableText.obscureText}
  final bool obscureText;

  /// {@macro flutter.widgets.editableText.autocorrect}
  final bool autocorrect;

  /// {@macro flutter.services.TextInputConfiguration.smartDashesType}
  final SmartDashesType smartDashesType;

  /// {@macro flutter.services.TextInputConfiguration.smartQuotesType}
  final SmartQuotesType smartQuotesType;

  /// {@macro flutter.services.TextInputConfiguration.enableSuggestions}
  final bool enableSuggestions;

  /// {@macro flutter.widgets.editableText.maxLines}
  ///  * [expands], which determines whether the field should fill the height of
  ///    its parent.
  final int? maxLines;

  /// {@macro flutter.widgets.editableText.minLines}
  ///  * [expands], which determines whether the field should fill the height of
  ///    its parent.
  final int? minLines;

  /// {@macro flutter.widgets.editableText.expands}
  final bool expands;

  /// The maximum number of characters (Unicode grapheme clusters) to allow in
  /// the text field.
  ///
  /// After [maxLength] characters have been input, additional input
  /// is ignored, unless [maxLengthEnforcement] is set to
  /// [MaxLengthEnforcement.none].
  ///
  /// The TextField enforces the length with a
  /// [LengthLimitingTextInputFormatter], which is evaluated after the supplied
  /// [inputFormatters], if any.
  ///
  /// This value must be either null or greater than zero. If set to null
  /// (the default), there is no limit to the number of characters allowed.
  ///
  /// Whitespace characters (e.g. newline, space, tab) are included in the
  /// character count.
  ///
  /// {@macro flutter.services.lengthLimitingTextInputFormatter.maxLength}
  final int? maxLength;

  /// Determines how the [maxLength] limit should be enforced.
  ///
  /// If [MaxLengthEnforcement.none] is set, additional input beyond [maxLength]
  /// will not be enforced by the limit.
  ///
  /// {@macro flutter.services.textFormatter.effectiveMaxLengthEnforcement}
  ///
  /// {@macro flutter.services.textFormatter.maxLengthEnforcement}
  final MaxLengthEnforcement? maxLengthEnforcement;

  /// {@macro flutter.widgets.editableText.onChanged}
  final ValueChanged<String>? onChanged;

  /// {@macro flutter.widgets.editableText.onEditingComplete}
  final VoidCallback? onEditingComplete;

  /// {@macro flutter.widgets.editableText.onSubmitted}
  ///
  /// See also:
  ///
  ///  * [TextInputAction.next] and [TextInputAction.previous], which
  ///    automatically shift the focus to the next/previous focusable item when
  ///    the user is done editing.
  final ValueChanged<String>? onSubmitted;

  /// {@macro flutter.widgets.editableText.onTapOutside}
  final TapRegionCallback? onTapOutside;

  /// {@macro flutter.widgets.editableText.inputFormatters}
  final List<TextInputFormatter>? inputFormatters;

  /// Disables the text field when false.
  ///
  /// Text fields in disabled states have a light grey background and don't
  /// respond to touch events including the [prefix], [suffix] and the clear
  /// button.
  final bool? enabled;

  /// {@macro flutter.widgets.editableText.cursorWidth}
  final double cursorWidth;

  /// {@macro flutter.widgets.editableText.cursorHeight}
  final double? cursorHeight;

  /// {@macro flutter.widgets.editableText.cursorRadius}
  final Radius cursorRadius;

  /// {@macro flutter.widgets.editableText.cursorOpacityAnimates}
  final bool cursorOpacityAnimates;

  /// The color to use when painting the cursor.
  ///
  /// Defaults to the [DefaultSelectionStyle.cursorColor]. If that color is
  /// null, it uses the [CupertinoThemeData.primaryColor] of the ambient theme,
  /// which itself defaults to [CupertinoColors.activeBlue] in the light theme
  /// and [CupertinoColors.activeOrange] in the dark theme.
  final Color? cursorColor;

  /// Controls how tall the selection highlight boxes are computed to be.
  ///
  /// See [ui.BoxHeightStyle] for details on available styles.
  final ui.BoxHeightStyle selectionHeightStyle;

  /// Controls how wide the selection highlight boxes are computed to be.
  ///
  /// See [ui.BoxWidthStyle] for details on available styles.
  final ui.BoxWidthStyle selectionWidthStyle;

  /// The appearance of the keyboard.
  ///
  /// This setting is only honored on iOS devices.
  ///
  /// If null, defaults to [Brightness.light].
  final Brightness? keyboardAppearance;

  /// {@macro flutter.widgets.editableText.scrollPadding}
  final EdgeInsets scrollPadding;

  /// {@macro flutter.widgets.editableText.enableInteractiveSelection}
  final bool enableInteractiveSelection;

  /// {@macro flutter.widgets.editableText.selectionControls}
  final TextSelectionControls? selectionControls;

  /// {@macro flutter.widgets.scrollable.dragStartBehavior}
  final DragStartBehavior dragStartBehavior;

  /// {@macro flutter.widgets.editableText.scrollController}
  final ScrollController? scrollController;

  /// {@macro flutter.widgets.editableText.scrollPhysics}
  final ScrollPhysics? scrollPhysics;

  /// {@macro flutter.widgets.editableText.selectionEnabled}
  bool get selectionEnabled => enableInteractiveSelection;

  /// {@macro flutter.material.textfield.onTap}
  final GestureTapCallback? onTap;

  /// {@macro flutter.widgets.editableText.autofillHints}
  /// {@macro flutter.services.AutofillConfiguration.autofillHints}
  final Iterable<String>? autofillHints;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.hardEdge].
  final Clip clipBehavior;

  /// {@macro flutter.material.textfield.restorationId}
  final String? restorationId;

  /// {@macro flutter.widgets.editableText.scribbleEnabled}
  final bool scribbleEnabled;

  /// {@macro flutter.services.TextInputConfiguration.enableIMEPersonalizedLearning}
  final bool enableIMEPersonalizedLearning;

  /// {@macro flutter.widgets.editableText.contentInsertionConfiguration}
  final ContentInsertionConfiguration? contentInsertionConfiguration;

  /// {@macro flutter.widgets.EditableText.contextMenuBuilder}
  ///
  /// If not provided, will build a default menu based on the platform.
  ///
  /// See also:
  ///
  ///  * [CupertinoAdaptiveTextSelectionToolbar], which is built by default.
  final EditableTextContextMenuBuilder? contextMenuBuilder;

  static Widget _defaultContextMenuBuilder(
      BuildContext context, EditableTextState editableTextState) {
    return CupertinoAdaptiveTextSelectionToolbar.editableText(
      editableTextState: editableTextState,
    );
  }

  /// {@macro flutter.widgets.magnifier.TextMagnifierConfiguration.intro}
  ///
  /// {@macro flutter.widgets.magnifier.intro}
  ///
  /// {@macro flutter.widgets.magnifier.TextMagnifierConfiguration.details}
  ///
  /// By default, builds a [CupertinoTextMagnifier] on iOS and Android nothing on all other
  /// platforms. If it is desired to suppress the magnifier, consider passing
  /// [TextMagnifierConfiguration.disabled].
  ///
  /// {@tool dartpad}
  /// This sample demonstrates how to customize the magnifier that this text field uses.
  ///
  /// ** See code in examples/api/lib/widgets/text_magnifier/text_magnifier.0.dart **
  /// {@end-tool}
  final TextMagnifierConfiguration? magnifierConfiguration;

  /// {@macro flutter.widgets.EditableText.spellCheckConfiguration}
  ///
  /// If [SpellCheckConfiguration.misspelledTextStyle] is not specified in this
  /// configuration, then [cupertinoMisspelledTextStyle] is used by default.
  final SpellCheckConfiguration? spellCheckConfiguration;

  final bool usePlaceholderAsTitle;

  /// The [TextStyle] used to indicate misspelled words in the Cupertino style.
  ///
  /// See also:
  ///  * [SpellCheckConfiguration.misspelledTextStyle], the style configured to
  ///    mark misspelled words with.
  ///  * [TextField.materialMisspelledTextStyle], the style configured
  ///    to mark misspelled words with in the Material style.
  static const TextStyle cupertinoMisspelledTextStyle = TextStyle(
    decoration: TextDecoration.underline,
    decorationColor: CupertinoColors.systemRed,
    decorationStyle: TextDecorationStyle.dotted,
  );

  /// The color of the selection highlight when the spell check menu is visible.
  ///
  /// Eyeballed from a screenshot taken on an iPhone 11 running iOS 16.2.
  @visibleForTesting
  static const Color kMisspelledSelectionColor = Color(0x62ff9699);

  /// Default builder for the spell check suggestions toolbar in the Cupertino
  /// style.
  ///
  /// See also:
  ///  * [spellCheckConfiguration], where this is typically specified for
  ///    [CupertinoInput].
  ///  * [SpellCheckConfiguration.spellCheckSuggestionsToolbarBuilder], the
  ///    parameter for which this is the default value for [CupertinoInput].
  ///  * [TextField.defaultSpellCheckSuggestionsToolbarBuilder], which is like
  ///    this but specifies the default for [CupertinoInput].
  @visibleForTesting
  static Widget defaultSpellCheckSuggestionsToolbarBuilder(
    BuildContext context,
    EditableTextState editableTextState,
  ) {
    return CupertinoSpellCheckSuggestionsToolbar.editableText(
      editableTextState: editableTextState,
    );
  }

  /// {@macro flutter.widgets.undoHistory.controller}
  final UndoHistoryController? undoController;

  @override
  State<CupertinoInput> createState() => _CupertinoInputState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<TextEditingController>(
        'controller', controller,
        defaultValue: null));
    properties.add(DiagnosticsProperty<FocusNode>('focusNode', focusNode,
        defaultValue: null));
    properties.add(DiagnosticsProperty<UndoHistoryController>(
        'undoController', undoController,
        defaultValue: null));
    properties.add(DiagnosticsProperty<ValueNotifier<BoxDecorationTweenInfo?>>(
        'decorationTween', decorationTween));
    properties.add(DiagnosticsProperty<EdgeInsetsGeometry>('padding', padding));
    properties.add(StringProperty('placeholder', placeholder));
    properties.add(
        DiagnosticsProperty<TextStyle>('placeholderStyle', placeholderStyle));
    properties.add(DiagnosticsProperty<OverlayVisibilityMode>(
        'prefix', prefix == null ? null : prefixMode));
    properties.add(DiagnosticsProperty<OverlayVisibilityMode>(
        'suffix', suffix == null ? null : suffixMode));
    properties.add(DiagnosticsProperty<OverlayVisibilityMode>(
        'clearButtonMode', clearButtonMode));
    properties.add(DiagnosticsProperty<TextInputType>(
        'keyboardType', keyboardType,
        defaultValue: TextInputType.text));
    properties.add(
        DiagnosticsProperty<TextStyle>('style', style, defaultValue: null));
    properties.add(
        DiagnosticsProperty<bool>('autofocus', autofocus, defaultValue: false));
    properties.add(DiagnosticsProperty<String>(
        'obscuringCharacter', obscuringCharacter,
        defaultValue: '•'));
    properties.add(DiagnosticsProperty<bool>('obscureText', obscureText,
        defaultValue: false));
    properties.add(DiagnosticsProperty<bool>('autocorrect', autocorrect,
        defaultValue: true));
    properties.add(
      EnumProperty<SmartDashesType>(
        'smartDashesType',
        smartDashesType,
        defaultValue:
            obscureText ? SmartDashesType.disabled : SmartDashesType.enabled,
      ),
    );
    properties.add(
      EnumProperty<SmartQuotesType>(
        'smartQuotesType',
        smartQuotesType,
        defaultValue:
            obscureText ? SmartQuotesType.disabled : SmartQuotesType.enabled,
      ),
    );
    properties.add(DiagnosticsProperty<bool>(
        'enableSuggestions', enableSuggestions,
        defaultValue: true));
    properties.add(IntProperty('maxLines', maxLines, defaultValue: 1));
    properties.add(IntProperty('minLines', minLines, defaultValue: null));
    properties.add(
        DiagnosticsProperty<bool>('expands', expands, defaultValue: false));
    properties.add(IntProperty('maxLength', maxLength, defaultValue: null));
    properties.add(EnumProperty<MaxLengthEnforcement>(
        'maxLengthEnforcement', maxLengthEnforcement,
        defaultValue: null));
    properties
        .add(DoubleProperty('cursorWidth', cursorWidth, defaultValue: 2.0));
    properties
        .add(DoubleProperty('cursorHeight', cursorHeight, defaultValue: null));
    properties.add(DiagnosticsProperty<Radius>('cursorRadius', cursorRadius,
        defaultValue: null));
    properties.add(DiagnosticsProperty<bool>(
        'cursorOpacityAnimates', cursorOpacityAnimates,
        defaultValue: true));
    properties.add(createCupertinoColorProperty('cursorColor', cursorColor,
        defaultValue: null));
    properties.add(
      FlagProperty('selectionEnabled',
          value: selectionEnabled,
          defaultValue: true,
          ifFalse: 'selection disabled'),
    );
    properties.add(DiagnosticsProperty<TextSelectionControls>(
        'selectionControls', selectionControls,
        defaultValue: null));
    properties.add(DiagnosticsProperty<ScrollController>(
        'scrollController', scrollController,
        defaultValue: null));
    properties.add(DiagnosticsProperty<ScrollPhysics>(
        'scrollPhysics', scrollPhysics,
        defaultValue: null));
    properties.add(EnumProperty<TextAlign>('textAlign', textAlign,
        defaultValue: TextAlign.start));
    properties.add(DiagnosticsProperty<TextAlignVertical>(
        'textAlignVertical', textAlignVertical,
        defaultValue: null));
    properties.add(EnumProperty<TextDirection>('textDirection', textDirection,
        defaultValue: null));
    properties.add(DiagnosticsProperty<Clip>('clipBehavior', clipBehavior,
        defaultValue: Clip.hardEdge));
    properties.add(DiagnosticsProperty<bool>('scribbleEnabled', scribbleEnabled,
        defaultValue: true));
    properties.add(
      DiagnosticsProperty<bool>(
          'enableIMEPersonalizedLearning', enableIMEPersonalizedLearning,
          defaultValue: true),
    );
    properties.add(
      DiagnosticsProperty<SpellCheckConfiguration>(
        'spellCheckConfiguration',
        spellCheckConfiguration,
        defaultValue: null,
      ),
    );
    properties.add(
      DiagnosticsProperty<List<String>>(
        'contentCommitMimeTypes',
        contentInsertionConfiguration?.allowedMimeTypes ?? const <String>[],
        defaultValue: contentInsertionConfiguration == null
            ? const <String>[]
            : kDefaultContentInsertionMimeTypes,
      ),
    );
  }

  static final TextMagnifierConfiguration _iosMagnifierConfiguration =
      TextMagnifierConfiguration(
    magnifierBuilder: (BuildContext context, MagnifierController controller,
        ValueNotifier<MagnifierInfo> magnifierInfo) {
      switch (defaultTargetPlatform) {
        case TargetPlatform.android:
        case TargetPlatform.iOS:
          return CupertinoTextMagnifier(
            controller: controller,
            magnifierInfo: magnifierInfo,
          );
        case TargetPlatform.fuchsia:
        case TargetPlatform.linux:
        case TargetPlatform.macOS:
        case TargetPlatform.windows:
          return null;
      }
    },
  );

  /// Returns a new [SpellCheckConfiguration] where the given configuration has
  /// had any missing values replaced with their defaults for the iOS platform.
  static SpellCheckConfiguration inferIOSSpellCheckConfiguration(
    SpellCheckConfiguration? configuration,
  ) {
    if (configuration == null ||
        configuration == const SpellCheckConfiguration.disabled()) {
      return const SpellCheckConfiguration.disabled();
    }

    return configuration.copyWith(
      misspelledTextStyle: configuration.misspelledTextStyle ??
          CupertinoInput.cupertinoMisspelledTextStyle,
      misspelledSelectionColor: configuration.misspelledSelectionColor ??
          CupertinoInput.kMisspelledSelectionColor,
      spellCheckSuggestionsToolbarBuilder:
          configuration.spellCheckSuggestionsToolbarBuilder ??
              CupertinoInput.defaultSpellCheckSuggestionsToolbarBuilder,
    );
  }
}

class _CupertinoInputState extends State<CupertinoInput>
    with RestorationMixin, AutomaticKeepAliveClientMixin<CupertinoInput>
    implements TextSelectionGestureDetectorBuilderDelegate, AutofillClient {
  final GlobalKey _clearGlobalKey = GlobalKey();

  RestorableTextEditingController? _controller;
  TextEditingController get _effectiveController =>
      widget.controller ?? _controller!.value;

  FocusNode? _focusNode;
  FocusNode get _effectiveFocusNode =>
      widget.focusNode ?? (_focusNode ??= FocusNode());

  MaxLengthEnforcement get _effectiveMaxLengthEnforcement =>
      widget.maxLengthEnforcement ??
      LengthLimitingTextInputFormatter.getDefaultMaxLengthEnforcement();

  bool _showSelectionHandles = false;

  late _CupertinoTextFieldSelectionGestureDetectorBuilder
      _selectionGestureDetectorBuilder;

  // API for TextSelectionGestureDetectorBuilderDelegate.
  @override
  bool get forcePressEnabled => true;

  @override
  final GlobalKey<EditableTextState> editableTextKey =
      GlobalKey<EditableTextState>();

  @override
  bool get selectionEnabled => widget.selectionEnabled;
  // End of API for TextSelectionGestureDetectorBuilderDelegate.

  @override
  void initState() {
    super.initState();
    _selectionGestureDetectorBuilder =
        _CupertinoTextFieldSelectionGestureDetectorBuilder(
      state: this,
    );
    if (widget.controller == null) {
      _createLocalController();
    }
    _effectiveFocusNode.canRequestFocus = widget.enabled ?? true;
    _effectiveFocusNode.addListener(_handleFocusChanged);
  }

  @override
  void didUpdateWidget(CupertinoInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller == null && oldWidget.controller != null) {
      _createLocalController(oldWidget.controller!.value);
    } else if (widget.controller != null && oldWidget.controller == null) {
      unregisterFromRestoration(_controller!);
      _controller!.dispose();
      _controller = null;
    }

    if (widget.focusNode != oldWidget.focusNode) {
      (oldWidget.focusNode ?? _focusNode)?.removeListener(_handleFocusChanged);
      (widget.focusNode ?? _focusNode)?.addListener(_handleFocusChanged);
    }
    _effectiveFocusNode.canRequestFocus = widget.enabled ?? true;
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    if (_controller != null) {
      _registerController();
    }
  }

  void _registerController() {
    assert(_controller != null);
    registerForRestoration(_controller!, 'controller');
    _controller!.value.addListener(updateKeepAlive);
  }

  void _createLocalController([TextEditingValue? value]) {
    assert(_controller == null);
    _controller = value == null
        ? RestorableTextEditingController()
        : RestorableTextEditingController.fromValue(value);
    if (!restorePending) {
      _registerController();
    }
  }

  @override
  String? get restorationId => widget.restorationId;

  @override
  void dispose() {
    _effectiveFocusNode.removeListener(_handleFocusChanged);
    _focusNode?.dispose();
    _controller?.dispose();
    super.dispose();
  }

  EditableTextState get _editableText => editableTextKey.currentState!;

  void _requestKeyboard() {
    _editableText.requestKeyboard();
  }

  void _handleFocusChanged() {
    setState(() {
      // Rebuild the widget on focus change to show/hide the text selection
      // highlight.
    });
  }

  bool _shouldShowSelectionHandles(SelectionChangedCause? cause) {
    // When the text field is activated by something that doesn't trigger the
    // selection overlay, we shouldn't show the handles either.
    if (!_selectionGestureDetectorBuilder.shouldShowSelectionToolbar) {
      return false;
    }

    // On iOS, we don't show handles when the selection is collapsed.
    if (_effectiveController.selection.isCollapsed) {
      return false;
    }

    if (cause == SelectionChangedCause.keyboard) {
      return false;
    }

    if (cause == SelectionChangedCause.scribble) {
      return true;
    }

    if (_effectiveController.text.isNotEmpty) {
      return true;
    }

    return false;
  }

  void _handleSelectionChanged(
      TextSelection selection, SelectionChangedCause? cause) {
    final willShowSelectionHandles = _shouldShowSelectionHandles(cause);
    if (willShowSelectionHandles != _showSelectionHandles) {
      setState(() {
        _showSelectionHandles = willShowSelectionHandles;
      });
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
      case TargetPlatform.fuchsia:
      case TargetPlatform.android:
        if (cause == SelectionChangedCause.longPress) {
          _editableText.bringIntoView(selection.extent);
        }
    }

    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.fuchsia:
      case TargetPlatform.android:
        break;
      case TargetPlatform.macOS:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        if (cause == SelectionChangedCause.drag) {
          _editableText.hideToolbar();
        }
    }
  }

  @override
  bool get wantKeepAlive => _controller?.value.text.isNotEmpty ?? false;

  // AutofillClient implementation start.
  @override
  String get autofillId => _editableText.autofillId;

  @override
  void autofill(TextEditingValue newEditingValue) =>
      _editableText.autofill(newEditingValue);

  @override
  TextInputConfiguration get textInputConfiguration {
    final autofillHints = widget.autofillHints?.toList(growable: false);
    final autofillConfiguration = autofillHints != null
        ? AutofillConfiguration(
            uniqueIdentifier: autofillId,
            autofillHints: autofillHints,
            currentEditingValue: _effectiveController.value,
            hintText: widget.placeholder,
          )
        : AutofillConfiguration.disabled;

    return _editableText.textInputConfiguration
        .copyWith(autofillConfiguration: autofillConfiguration);
  }
  // AutofillClient implementation end.

  @override
  Widget build(BuildContext context) {
    super.build(context); // See AutomaticKeepAliveClientMixin.
    assert(debugCheckHasDirectionality(context));
    final controller = _effectiveController;

    var textSelectionControls = widget.selectionControls;
    VoidCallback? handleDidGainAccessibilityFocus;
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
        textSelectionControls ??= cupertinoTextSelectionHandleControls;

      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        textSelectionControls ??= cupertinoDesktopTextSelectionHandleControls;
        handleDidGainAccessibilityFocus = () {
          // Automatically activate the TextField when it receives accessibility focus.
          if (!_effectiveFocusNode.hasFocus &&
              _effectiveFocusNode.canRequestFocus) {
            _effectiveFocusNode.requestFocus();
          }
        };
    }

    final enabled = widget.enabled ?? true;
    final cursorOffset = Offset(
        _iOSHorizontalCursorOffsetPixels /
            MediaQuery.devicePixelRatioOf(context),
        0);
    final formatters = <TextInputFormatter>[
      ...?widget.inputFormatters,
      if (widget.maxLength != null)
        LengthLimitingTextInputFormatter(
          widget.maxLength,
          maxLengthEnforcement: _effectiveMaxLengthEnforcement,
        ),
    ];
    final themeData = CupertinoTheme.of(context);

    final resolvedStyle = widget.style?.copyWith(
      color: CupertinoDynamicColor.maybeResolve(widget.style?.color, context),
      backgroundColor: CupertinoDynamicColor.maybeResolve(
          widget.style?.backgroundColor, context),
    );

    final textStyle = themeData.textTheme.textStyle.merge(resolvedStyle);

    final keyboardAppearance =
        widget.keyboardAppearance ?? CupertinoTheme.brightnessOf(context);
    final cursorColor = CupertinoDynamicColor.maybeResolve(
          widget.cursorColor ?? DefaultSelectionStyle.of(context).cursorColor,
          context,
        ) ??
        themeData.primaryColor;

    final disabled =
        CupertinoDynamicColor.resolve(_kDisabledBackground, context);

    final selectionColor = CupertinoDynamicColor.maybeResolve(
          DefaultSelectionStyle.of(context).selectionColor,
          context,
        ) ??
        CupertinoTheme.of(context).primaryColor.withOpacity(0.2);

    // Set configuration as disabled if not otherwise specified. If specified,
    // ensure that configuration uses Cupertino text style for misspelled words
    // unless a custom style is specified.
    final spellCheckConfiguration =
        CupertinoInput.inferIOSSpellCheckConfiguration(
      widget.spellCheckConfiguration,
    );

    final Widget paddedEditable = RepaintBoundary(
      child: UnmanagedRestorationScope(
        bucket: bucket,
        child: EditableText(
          key: editableTextKey,
          controller: controller,
          undoController: widget.undoController,
          readOnly: widget.readOnly || !enabled,

          showCursor: widget.showCursor,
          showSelectionHandles: _showSelectionHandles,
          focusNode: _effectiveFocusNode,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization: widget.textCapitalization,
          style: textStyle,
          strutStyle: widget.strutStyle,
          textAlign: widget.textAlign,
          textDirection: widget.textDirection,
          autofocus: widget.autofocus,
          obscuringCharacter: widget.obscuringCharacter,
          obscureText: widget.obscureText,
          autocorrect: widget.autocorrect,
          smartDashesType: widget.smartDashesType,
          smartQuotesType: widget.smartQuotesType,
          enableSuggestions: widget.enableSuggestions,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          expands: widget.expands,

          magnifierConfiguration: widget.magnifierConfiguration ??
              CupertinoInput._iosMagnifierConfiguration,
          // Only show the selection highlight when the text field is focused.
          selectionColor: _effectiveFocusNode.hasFocus ? selectionColor : null,
          selectionControls:
              widget.selectionEnabled ? textSelectionControls : null,
          onChanged: widget.onChanged,
          onSelectionChanged: _handleSelectionChanged,
          onEditingComplete: widget.onEditingComplete,
          onSubmitted: widget.onSubmitted,
          onTapOutside: widget.onTapOutside,
          inputFormatters: formatters,
          rendererIgnoresPointer: true,
          cursorWidth: widget.cursorWidth,
          cursorHeight: widget.cursorHeight,
          cursorRadius: widget.cursorRadius,
          cursorColor: cursorColor,
          cursorOpacityAnimates: widget.cursorOpacityAnimates,
          cursorOffset: cursorOffset,
          paintCursorAboveText: true,
          autocorrectionTextRectColor: selectionColor,
          backgroundCursorColor: CupertinoDynamicColor.resolve(
              CupertinoColors.inactiveGray, context),
          selectionHeightStyle: widget.selectionHeightStyle,
          selectionWidthStyle: widget.selectionWidthStyle,
          scrollPadding: widget.scrollPadding,
          keyboardAppearance: keyboardAppearance,
          dragStartBehavior: widget.dragStartBehavior,
          scrollController: widget.scrollController,
          scrollPhysics: widget.scrollPhysics,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          autofillClient: this,
          clipBehavior: widget.clipBehavior,
          restorationId: 'editable',
          scribbleEnabled: widget.scribbleEnabled,
          enableIMEPersonalizedLearning: widget.enableIMEPersonalizedLearning,
          contentInsertionConfiguration: widget.contentInsertionConfiguration,
          contextMenuBuilder: widget.contextMenuBuilder,
          spellCheckConfiguration: spellCheckConfiguration,
        ),
      ),
    );

    final placeHolder = NomoText(
      widget.placeholder ?? '',
      maxLines: widget.maxLines,
      overflow: widget.placeholderStyle.overflow ?? TextOverflow.ellipsis,
      textAlign: widget.textAlign,
    ).ifElseNull(widget.placeholder != null);

    return Semantics(
      enabled: enabled,
      onTap: !enabled || widget.readOnly
          ? null
          : () {
              if (!controller.selection.isValid) {
                controller.selection =
                    TextSelection.collapsed(offset: controller.text.length);
              }
              _requestKeyboard();
            },
      onDidGainAccessibilityFocus: handleDidGainAccessibilityFocus,
      child: TextFieldTapRegion(
        child: IgnorePointer(
          ignoring: !enabled,
          child: ValueListenableBuilder(
            valueListenable: widget.decorationTween,
            builder: (context, tween, child) {
              final decoration = tween?.decoration;
              if (tween == null || decoration == null) {
                return Container(
                  color: !enabled ? disabled : null,
                  child: child,
                );
              }
              final duration =
                  tween.shouldAnimate ? widget.duration : Duration.zero;
              return TweenAnimationBuilder(
                tween: decoration,
                duration: duration,
                curve: widget.curve,
                builder: (context, decoration, _) {
                  return DecoratedBox(
                    decoration: decoration.copyWith(
                      color: !enabled ? disabled : null,
                    ),
                    child: child,
                  );
                },
              );
            },
            child: _selectionGestureDetectorBuilder.buildGestureDetector(
              behavior: HitTestBehavior.translucent,
              child: Padding(
                padding: widget.padding,
                child: _TextInputDependetAttachment(
                  text: paddedEditable,
                  controller: controller,
                  focusNode: _effectiveFocusNode,
                  usePlaceHolderAsTitle: widget.usePlaceholderAsTitle,
                  leading: widget.prefix,
                  trailling: widget.suffix,
                  placeHolder: placeHolder,
                  titleStyle: widget.titleStyle,
                  placeHolderStyle: widget.placeholderStyle,
                  padding: widget.padding,
                  curve: widget.curve,
                  duration: widget.duration,
                  textAlign: widget.textAlign,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TextInputDependetAttachment extends StatefulWidget {
  final Widget text;
  final TextEditingController controller;
  final FocusNode focusNode;
  final Widget? leading;
  final Widget? trailling;
  final bool usePlaceHolderAsTitle;
  final Widget? placeHolder;
  final TextStyle placeHolderStyle;
  final TextStyle titleStyle;
  final EdgeInsetsGeometry padding;
  final Duration duration;
  final Curve curve;
  final TextAlign textAlign;

  const _TextInputDependetAttachment({
    required this.text,
    required this.controller,
    required this.focusNode,
    required this.usePlaceHolderAsTitle,
    required this.placeHolderStyle,
    required this.titleStyle,
    required this.padding,
    required this.duration,
    required this.curve,
    required this.textAlign,
    this.trailling,
    this.leading,
    this.placeHolder,
  });

  @override
  State<_TextInputDependetAttachment> createState() =>
      _TextInputDependetAttachmentState();
}

class _TextInputDependetAttachmentState
    extends State<_TextInputDependetAttachment>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;
  late final Animation<TextStyle> textStyleAnimation;

  late final titleHeight =
      calculateTextSize(text: '', style: widget.titleStyle);
  late final placHolderHeight =
      calculateTextSize(text: '', style: widget.placeHolderStyle);

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    textStyleAnimation =
        TextStyleTween(begin: widget.placeHolderStyle, end: widget.titleStyle)
            .animate(
      CurvedAnimation(
        parent: controller,
        curve: widget.curve,
      ),
    );

    widget.focusNode.addListener(focusChanged);
    widget.controller.addListener(focusChanged);
    super.initState();
  }

  void focusChanged() {
    final hasFocus = widget.focusNode.hasFocus;
    final text = widget.controller.text;

    if (hasFocus && text.isEmpty) {
      controller.forward();
    }

    if (!hasFocus && text.isNotEmpty) {
      controller.forward();
    }

    if (!hasFocus && text.isEmpty) {
      controller.reverse();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    widget.focusNode.removeListener(focusChanged);
    widget.controller.removeListener(focusChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final padding = widget.padding.resolve(Directionality.of(context));
    return ValueListenableBuilder(
      valueListenable: controller,
      builder: (context, val, child) {
        final inverted = 1 - val;

        return TextInputLayoutDelegate(
          children: {
            if (widget.leading != null)
              TextLayoutItem.leading: Padding(
                padding: EdgeInsets.only(right: padding.left),
                child: widget.leading,
              ),
            if (widget.trailling != null)
              TextLayoutItem.trailling: Padding(
                padding: EdgeInsets.only(left: padding.right),
                child: widget.trailling,
              ),
            TextLayoutItem.text: widget.text,
            if (widget.placeHolder != null && !widget.usePlaceHolderAsTitle)
              TextLayoutItem.placeHolder: Opacity(
                opacity: inverted,
                child: NomoDefaultTextStyle(
                  style: widget.placeHolderStyle,
                  child: widget.placeHolder!,
                ),
              )
            else if (widget.placeHolder != null)
              TextLayoutItem.placeHolder: NomoDefaultTextStyle(
                style: textStyleAnimation.value,
                child: widget.placeHolder!,
              ),
          },
          placeHolderTitleHeight:
              widget.usePlaceHolderAsTitle ? titleHeight : null,
          placeHolderHeight: placHolderHeight,
          animation: inverted,
          textAlign: widget.textAlign,
        );
      },
    );
  }
}
