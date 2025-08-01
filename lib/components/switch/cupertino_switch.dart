// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Examples can assume:
// bool _giveVerse = false;
// bool _lights = false;
// void setState(VoidCallback fn) { }

/// @docImport 'package:flutter/material.dart';
///
library;

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

const List<BoxShadow> _kSwitchBoxShadows = <BoxShadow>[
  BoxShadow(color: Color(0x26000000), offset: Offset(0, 3), blurRadius: 8.0),
  BoxShadow(color: Color(0x0F000000), offset: Offset(0, 3), blurRadius: 1.0),
];

// Label sizes and padding taken from xcode inspector.
// See https://github.com/flutter/flutter/issues/4830#issuecomment-528495360.
const double _kOnLabelWidth = 1.0;
const double _kOnLabelHeight = 10.0;
const double _kOnLabelPaddingHorizontal = 11.0;
const double _kOffLabelWidth = 1.0;
const double _kOffLabelPaddingHorizontal = 12.0;
const double _kOffLabelRadius = 5.0;
const CupertinoDynamicColor _kOffLabelColor =
    CupertinoDynamicColor.withBrightnessAndContrast(
  debugLabel: 'offSwitchLabel',
  // Source: https://github.com/flutter/flutter/pull/39993#discussion_r321946033
  color: Color.fromARGB(255, 179, 179, 179),
  // Source: https://github.com/flutter/flutter/pull/39993#issuecomment-535196665
  darkColor: Color.fromARGB(255, 179, 179, 179),
  // Source: https://github.com/flutter/flutter/pull/127776#discussion_r1244208264
  highContrastColor: Color.fromARGB(255, 255, 255, 255),
  darkHighContrastColor: Color.fromARGB(255, 255, 255, 255),
);

/// An iOS-style switch.
///
/// Used to toggle the on/off state of a single setting.
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=24tg_N4sdMQ}
///
/// The switch itself does not maintain its toggle state. Instead, when the
/// toggle state of the switch changes, the widget calls the [onChanged]
/// callback. Most widgets that use a switch will listen for the [onChanged]
/// callback and rebuild the switch with a new [value] to update the visual
/// appearance of the switch.
///
/// {@tool dartpad}
/// This example shows a toggleable [CupertinoSwitch]. When the thumb slides to
/// the other side of the track, the switch is toggled between on/off.
///
/// ** See code in examples/api/lib/cupertino/switch/cupertino_switch.0.dart **
/// {@end-tool}
///
/// {@tool snippet}
///
/// This sample shows how to use a [CupertinoSwitch] in a [CupertinoListTile]. The
/// [MergeSemantics] is used to turn the entire [CupertinoListTile] into a single item
/// for accessibility tools.
///
/// ```dart
/// MergeSemantics(
///   child: CupertinoListTile(
///     title: const Text('Lights'),
///     trailing: CupertinoSwitch(
///       value: _lights,
///       onChanged: (bool value) { setState(() { _lights = value; }); },
///     ),
///     onTap: () { setState(() { _lights = !_lights; }); },
///   ),
/// )
/// ```
/// {@end-tool}
///
/// See also:
///
///  * [Switch], the Material Design equivalent.
///  * <https://developer.apple.com/design/human-interface-guidelines/toggles/>
class CupertinoSwitch extends StatefulWidget {
  /// Creates an iOS-style switch.
  ///
  /// The following arguments are required:
  ///
  /// * [value] determines whether this switch is on or off.
  /// * [onChanged] is called when the user toggles the switch on or off.
  ///
  /// The [dragStartBehavior] parameter defaults to [DragStartBehavior.start].
  const CupertinoSwitch({
    required this.value,
    required this.onChanged,
    required this.height,
    required this.width,
    required this.thumbSize,
    super.key,
    @Deprecated(
      'Use activeTrackColor instead. '
      'This feature was deprecated after v3.24.0-0.2.pre.',
    )
    Color? activeColor,
    @Deprecated(
      'Use inactiveTrackColor instead. '
      'This feature was deprecated after v3.24.0-0.2.pre.',
    )
    Color? trackColor,
    Color? activeTrackColor,
    Color? inactiveTrackColor,
    this.thumbColor,
    this.inactiveThumbColor,
    this.applyTheme,
    this.focusColor,
    this.onLabelColor,
    this.offLabelColor,
    this.activeThumbImage,
    this.onActiveThumbImageError,
    this.inactiveThumbImage,
    this.onInactiveThumbImageError,
    this.trackOutlineColor,
    this.trackOutlineWidth,
    this.thumbIcon,
    this.mouseCursor,
    this.focusNode,
    this.onFocusChange,
    this.autofocus = false,
    this.dragStartBehavior = DragStartBehavior.start,
  })  : assert(activeThumbImage != null || onActiveThumbImageError == null),
        assert(inactiveThumbImage != null || onInactiveThumbImageError == null),
        assert(activeTrackColor == null || activeColor == null),
        assert(inactiveTrackColor == null || trackColor == null),
        activeTrackColor = activeTrackColor ?? activeColor,
        inactiveTrackColor = inactiveTrackColor ?? trackColor;

  /// Whether this switch is on or off.
  final bool value;

  /// Called when the user toggles the switch on or off.
  ///
  /// The switch passes the new value to the callback but does not actually
  /// change state until the parent widget rebuilds the switch with the new
  /// value.
  ///
  /// If null, the switch will be displayed as disabled, which has a reduced opacity.
  ///
  /// The callback provided to [onChanged] should update the state of the parent
  /// [StatefulWidget] using the [State.setState] method, so that the parent
  /// gets rebuilt; for example:
  ///
  /// ```dart
  /// CupertinoSwitch(
  ///   value: _giveVerse,
  ///   onChanged: (bool newValue) {
  ///     setState(() {
  ///       _giveVerse = newValue;
  ///     });
  ///   },
  /// )
  /// ```
  final ValueChanged<bool>? onChanged;

  /// The color to use for the track when the switch is on.
  ///
  /// If null and [applyTheme] is false, defaults to [CupertinoColors.systemGreen]
  /// in accordance to native iOS behavior. Otherwise, defaults to
  /// [CupertinoThemeData.primaryColor].
  ///
  /// See also:
  ///
  ///  * [inactiveTrackColor], the color to use for the track when the switch is off.
  @Deprecated(
    'Use activeTrackColor instead. '
    'This feature was deprecated after v3.24.0-0.2.pre.',
  )
  Color? get activeColor => activeTrackColor;

  /// The color to use for the track when the switch is on.
  ///
  /// If null and [applyTheme] is false, defaults to [CupertinoColors.systemGreen]
  /// in accordance to native iOS behavior. Otherwise, defaults to
  /// [CupertinoThemeData.primaryColor].
  ///
  /// See also:
  ///
  ///  * [inactiveTrackColor], the color to use for the track when the switch is off.
  final Color? activeTrackColor;

  /// The color to use for the track when the switch is off.
  ///
  /// Defaults to [CupertinoColors.secondarySystemFill] when null.
  ///
  /// See also:
  ///
  ///  * [inactiveTrackColor], the color to use for the track when the switch is off.
  @Deprecated(
    'Use inactiveTrackColor instead. '
    'This feature was deprecated after v3.24.0-0.2.pre.',
  )
  Color? get trackColor => inactiveTrackColor;

  /// The color to use for the track when the switch is off.
  ///
  /// Defaults to [CupertinoColors.secondarySystemFill] when null.
  ///
  /// See also:
  ///
  ///  * [activeTrackColor], the color to use for the track when the switch is on.
  final Color? inactiveTrackColor;

  /// The color to use for the thumb when the switch is on.
  ///
  /// If this color is not opaque, it is blended against
  /// [CupertinoThemeData.scaffoldBackgroundColor], so as not to see through the
  /// thumb to the track underneath.
  ///
  /// Defaults to [CupertinoColors.white] when null.
  ///
  /// See also:
  ///
  ///  * [inactiveThumbColor], the color to use for the thumb when the switch is off.
  final Color? thumbColor;

  /// The color to use on the thumb when the switch is off.
  ///
  /// If this color is not opaque, it is blended against
  /// [CupertinoThemeData.scaffoldBackgroundColor], so as not to see through the
  /// thumb to the track underneath.
  ///
  /// If null, defaults to [thumbColor]. If that is also null,
  /// [CupertinoColors.white] is used.
  ///
  /// See also:
  ///
  ///  * [thumbColor], the color to use for the thumb when the switch is on.
  final Color? inactiveThumbColor;

  /// The color to use for the focus highlight for keyboard interactions.
  ///
  /// Defaults to [activeTrackColor] with an opacity of 0.80, a brightness of 0.69
  /// and a saturation of 0.835.
  final Color? focusColor;

  /// The color to use for the accessibility label when the switch is on.
  ///
  /// Defaults to [CupertinoColors.white] when null.
  final Color? onLabelColor;

  /// The color to use for the accessibility label when the switch is off.
  ///
  /// Defaults to [Color.fromARGB(255, 179, 179, 179)]
  /// (or [Color.fromARGB(255, 255, 255, 255)] in high contrast) when null.
  final Color? offLabelColor;

  /// {@macro flutter.material.switch.activeThumbImage}
  final ImageProvider? activeThumbImage;

  /// {@macro flutter.material.switch.onActiveThumbImageError}
  final ImageErrorListener? onActiveThumbImageError;

  /// {@macro flutter.material.switch.inactiveThumbImage}
  final ImageProvider? inactiveThumbImage;

  /// {@macro flutter.material.switch.onInactiveThumbImageError}
  final ImageErrorListener? onInactiveThumbImageError;

  /// The outline color of this [CupertinoSwitch]'s track.
  ///
  /// Resolved in the following states:
  ///  * [WidgetState.selected].
  ///  * [WidgetState.hovered].
  ///  * [WidgetState.focused].
  ///  * [WidgetState.disabled].
  ///
  /// {@tool snippet}
  /// This example resolves the [trackOutlineColor] based on the current
  /// [WidgetState] of the [CupertinoSwitch], providing a different [Color] when it is
  /// [WidgetState.disabled].
  ///
  /// ```dart
  /// CupertinoSwitch(
  ///   value: true,
  ///   onChanged: (bool value) { },
  ///   trackOutlineColor: WidgetStateProperty.resolveWith<Color?>((Set<WidgetState> states) {
  ///     if (states.contains(WidgetState.disabled)) {
  ///       return CupertinoColors.activeOrange.withOpacity(.48);
  ///     }
  ///     return null; // Use the default color.
  ///   }),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// The [CupertinoSwitch] track has no outline by default.
  final WidgetStateProperty<Color?>? trackOutlineColor;

  /// The outline width of this [CupertinoSwitch]'s track.
  ///
  /// Resolved in the following states:
  ///  * [WidgetState.selected].
  ///  * [WidgetState.hovered].
  ///  * [WidgetState.focused].
  ///  * [WidgetState.disabled].
  ///
  /// {@tool snippet}
  /// This example resolves the [trackOutlineWidth] based on the current
  /// [WidgetState] of the [CupertinoSwitch], providing a different outline width when it is
  /// [WidgetState.disabled].
  ///
  /// ```dart
  /// CupertinoSwitch(
  ///   value: true,
  ///   onChanged: (bool value) { },
  ///   trackOutlineWidth: WidgetStateProperty.resolveWith<double?>((Set<WidgetState> states) {
  ///     if (states.contains(WidgetState.disabled)) {
  ///       return 5.0;
  ///     }
  ///     return null; // Use the default width.
  ///   }),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// Since a [CupertinoSwitch] has no track outline by default, this parameter
  /// is set only if [trackOutlineColor] is provided.
  ///
  /// Defaults to 2.0 if a [trackOutlineColor] is provided.
  final WidgetStateProperty<double?>? trackOutlineWidth;

  /// The icon to use on the thumb of this switch.
  ///
  /// Resolved in the following states:
  ///  * [WidgetState.selected].
  ///  * [WidgetState.hovered].
  ///  * [WidgetState.focused].
  ///  * [WidgetState.disabled].
  ///
  /// {@tool snippet}
  /// This example resolves the [thumbIcon] based on the current
  /// [WidgetState] of the [CupertinoSwitch], providing a different [Icon] when it is
  /// [WidgetState.disabled].
  ///
  /// ```dart
  /// CupertinoSwitch(
  ///   value: true,
  ///   onChanged: (bool value) { },
  ///   thumbIcon: WidgetStateProperty.resolveWith<Icon?>((Set<WidgetState> states) {
  ///     if (states.contains(WidgetState.disabled)) {
  ///       return const Icon(Icons.close);
  ///     }
  ///     return null; // All other states will use the default thumbIcon.
  ///   }),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// If null, then the [CupertinoSwitch] does not have any icons on the thumb.
  final WidgetStateProperty<Icon?>? thumbIcon;

  /// The cursor for a mouse pointer when it enters or is hovering over the
  /// widget.
  ///
  /// Resolved in the following states:
  ///  * [WidgetState.selected].
  ///  * [WidgetState.hovered].
  ///  * [WidgetState.focused].
  ///  * [WidgetState.disabled].
  ///
  /// {@tool snippet}
  /// This example resolves the [mouseCursor] based on the current
  /// [WidgetState] of the [CupertinoSwitch], providing a different [mouseCursor] when it is
  /// [WidgetState.disabled].
  ///
  /// ```dart
  /// CupertinoSwitch(
  ///   value: true,
  ///   onChanged: (bool value) { },
  ///   mouseCursor: WidgetStateProperty.resolveWith<MouseCursor>((Set<WidgetState> states) {
  ///     if (states.contains(WidgetState.disabled)) {
  ///       return SystemMouseCursors.click;
  ///     }
  ///     return SystemMouseCursors.basic; // All other states will use the default mouseCursor.
  ///   }),
  /// )
  /// ```
  /// {@end-tool}
  ///
  /// If null, then [MouseCursor.defer] is used when the switch is disabled.
  /// When the switch is enabled, [SystemMouseCursors.click] is used on Web, and
  /// [MouseCursor.defer] is used on other platforms.
  ///
  /// See also:
  ///
  ///  * [WidgetStateMouseCursor], a [MouseCursor] that implements
  ///    `WidgetStateProperty` which is used in APIs that need to accept
  ///    either a [MouseCursor] or a [WidgetStateProperty].
  final WidgetStateProperty<MouseCursor>? mouseCursor;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// Handler called when the focus changes.
  ///
  /// Called with true if this widget's node gains focus, and false if it loses
  /// focus.
  final ValueChanged<bool>? onFocusChange;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@template flutter.cupertino.CupertinoSwitch.applyTheme}
  /// Whether to apply the ambient [CupertinoThemeData].
  ///
  /// If true, the track uses [CupertinoThemeData.primaryColor] for the track
  /// when the switch is on.
  ///
  /// Defaults to [CupertinoThemeData.applyThemeToAll].
  /// {@endtemplate}
  final bool? applyTheme;

  /// {@template flutter.cupertino.CupertinoSwitch.dragStartBehavior}
  /// Determines the way that drag start behavior is handled.
  ///
  /// If set to [DragStartBehavior.start], the drag behavior used to move the
  /// switch from on to off will begin at the position where the drag gesture won
  /// the arena. If set to [DragStartBehavior.down] it will begin at the position
  /// where a down event was first detected.
  ///
  /// In general, setting this to [DragStartBehavior.start] will make drag
  /// animation smoother and setting it to [DragStartBehavior.down] will make
  /// drag behavior feel slightly more reactive.
  ///
  /// By default, the drag start behavior is [DragStartBehavior.start].
  ///
  /// See also:
  ///
  ///  * [DragGestureRecognizer.dragStartBehavior], which gives an example for
  ///    the different behaviors.
  ///
  /// {@endtemplate}
  final DragStartBehavior dragStartBehavior;

  final double width;
  final double height;
  final double thumbSize;

  @override
  State<CupertinoSwitch> createState() => _CupertinoSwitchState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      FlagProperty(
        'value',
        value: value,
        ifTrue: 'on',
        ifFalse: 'off',
        showName: true,
      ),
    );
    properties.add(
      ObjectFlagProperty<ValueChanged<bool>>(
        'onChanged',
        onChanged,
        ifNull: 'disabled',
      ),
    );
  }
}

class _CupertinoSwitchState extends State<CupertinoSwitch>
    with TickerProviderStateMixin, ToggleableStateMixin {
  final _SwitchPainter _painter = _SwitchPainter();

  @override
  void initState() {
    super.initState();
    positionController.duration = const Duration(milliseconds: 200);
    reactionController.duration = const Duration(milliseconds: 300);
  }

  @override
  void didUpdateWidget(CupertinoSwitch oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      position
        ..curve = Curves.ease
        ..reverseCurve = Curves.ease.flipped;
      animateToValue();
    }
  }

  @override
  void dispose() {
    _painter.dispose();
    super.dispose();
  }

  @override
  ValueChanged<bool?>? get onChanged =>
      widget.onChanged != null ? _handleChanged : null;

  @override
  bool get tristate => false;

  @override
  bool? get value => widget.value;

  WidgetStateProperty<Color?> get _widgetThumbColor {
    return WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return widget.thumbColor;
      }
      return widget.inactiveThumbColor;
    });
  }

  WidgetStateProperty<Color?> get _widgetTrackColor {
    return WidgetStateProperty.resolveWith((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return widget.activeTrackColor;
      }
      return widget.inactiveTrackColor;
    });
  }

  WidgetStateProperty<MouseCursor> get _defaultMouseCursor =>
      WidgetStateProperty.resolveWith((Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return MouseCursor.defer;
        }
        return kIsWeb ? SystemMouseCursors.click : MouseCursor.defer;
      });

  Color? _resolveTrackColor(Color? trackColor, Set<WidgetState> states) {
    if (trackColor is WidgetStateColor) {
      return WidgetStateProperty.resolveAs<Color?>(trackColor, states);
    }
    return trackColor;
  }

  Color? _resolveThumbColor(Color? thumbColor, Set<WidgetState> states) {
    if (thumbColor is WidgetStateColor) {
      return WidgetStateProperty.resolveAs<Color?>(thumbColor, states);
    }
    return thumbColor;
  }

  void _handleDragStart(DragStartDetails details) {
    if (isInteractive) {
      reactionController.forward();
      _emitVibration();
    }
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    if (isInteractive) {
      position
        ..curve = Curves.linear
        ..reverseCurve = Curves.linear;
      final delta = details.primaryDelta! / 42;
      positionController.value += switch (Directionality.of(context)) {
        TextDirection.rtl => -delta,
        TextDirection.ltr => delta,
      };
    }
  }

  bool _needsPositionAnimation = false;

  void _handleDragEnd(DragEndDetails details) {
    if (position.value >= 0.5 != widget.value) {
      widget.onChanged?.call(!widget.value);
      // Wait to finish the animation until widget.value has changed to
      // !widget.value as part of the widget.onChanged call above.
      setState(() {
        _needsPositionAnimation = true;
      });
    } else {
      animateToValue();
    }
    reactionController.reverse();
  }

  void _handleChanged(bool? value) {
    assert(value != null);
    assert(widget.onChanged != null);
    widget.onChanged?.call(value!);
    _emitVibration();
  }

  void _emitVibration() {
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        HapticFeedback.lightImpact();
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.macOS:
      case TargetPlatform.windows:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_needsPositionAnimation) {
      _needsPositionAnimation = false;
      animateToValue();
    }

    final theme = CupertinoTheme.of(context);

    final activeColor = CupertinoDynamicColor.resolve(
      widget.activeTrackColor ??
          ((widget.applyTheme ?? theme.applyThemeToAll)
              ? theme.primaryColor
              : null) ??
          CupertinoColors.systemGreen,
      context,
    );

    final onOffLabelColors = MediaQuery.onOffSwitchLabelsOf(context)
        ? (
            CupertinoDynamicColor.resolve(
              widget.onLabelColor ?? CupertinoColors.white,
              context,
            ),
            CupertinoDynamicColor.resolve(
              widget.offLabelColor ?? _kOffLabelColor,
              context,
            ),
          )
        : null;

    // Colors need to be resolved in selected and non selected states separately
    // so that they can be lerped between.
    final activeStates = states..add(WidgetState.selected);
    final inactiveStates = states..remove(WidgetState.selected);

    final effectiveActiveThumbColor =
        _resolveThumbColor(widget.thumbColor, activeStates) ??
            _widgetThumbColor.resolve(activeStates) ??
            CupertinoColors.white;

    final effectiveInactiveThumbColor =
        _resolveThumbColor(widget.inactiveThumbColor, inactiveStates) ??
            _widgetThumbColor.resolve(inactiveStates) ??
            effectiveActiveThumbColor;

    final effectiveActiveTrackColor =
        _widgetTrackColor.resolve(activeStates) ?? activeColor;

    final effectiveActiveTrackOutlineColor =
        widget.trackOutlineColor?.resolve(activeStates);

    final effectiveActiveTrackOutlineWidth = widget.trackOutlineWidth?.resolve(
      activeStates,
    );

    final effectiveInactiveTrackColor =
        _resolveTrackColor(widget.inactiveTrackColor, inactiveStates) ??
            CupertinoDynamicColor.resolve(
              CupertinoColors.secondarySystemFill,
              context,
            );

    final effectiveInactiveTrackOutlineColor =
        widget.trackOutlineColor?.resolve(
      inactiveStates,
    );

    final effectiveInactiveTrackOutlineWidth =
        widget.trackOutlineWidth?.resolve(
      inactiveStates,
    );

    final effectiveActiveIcon = widget.thumbIcon?.resolve(activeStates);

    final effectiveInactiveIcon = widget.thumbIcon?.resolve(inactiveStates);

    final effectiveActiveIconColor =
        effectiveActiveIcon?.color ?? CupertinoColors.black;

    final effectiveInactiveIconColor =
        effectiveInactiveIcon?.color ?? CupertinoColors.black;

    final activePressedStates = activeStates..add(WidgetState.pressed);
    final effectiveActivePressedThumbColor =
        _resolveThumbColor(widget.thumbColor, activePressedStates) ??
            _widgetThumbColor.resolve(activePressedStates) ??
            CupertinoColors.white;

    final inactivePressedStates = inactiveStates..add(WidgetState.pressed);
    final effectiveInactivePressedThumbColor =
        _resolveThumbColor(widget.thumbColor, inactivePressedStates) ??
            _widgetThumbColor.resolve(inactivePressedStates) ??
            CupertinoColors.white;

    final effectiveMouseCursor = widget.mouseCursor ?? _defaultMouseCursor;

    return Semantics(
      toggled: widget.value,
      child: GestureDetector(
        excludeFromSemantics: true,
        onHorizontalDragStart: _handleDragStart,
        onHorizontalDragUpdate: _handleDragUpdate,
        onHorizontalDragEnd: _handleDragEnd,
        dragStartBehavior: widget.dragStartBehavior,
        child: Opacity(
          opacity: onChanged == null ? 42 : 1,
          child: buildToggleable(
            mouseCursor: effectiveMouseCursor,
            focusNode: widget.focusNode,
            onFocusChange: widget.onFocusChange,
            autofocus: widget.autofocus,
            size: Size(widget.width, widget.height),
            painter: _painter
              ..thumbSize = widget.thumbSize
              ..position = position
              ..reaction = reaction
              ..reactionFocusFade = reactionFocusFade
              ..reactionHoverFade = reactionHoverFade
              ..focusColor = CupertinoDynamicColor.resolve(
                widget.focusColor ??
                    HSLColor.fromColor(
                      activeColor.withOpacity(kCupertinoFocusColorOpacity),
                    )
                        .withLightness(kCupertinoFocusColorBrightness)
                        .withSaturation(kCupertinoFocusColorSaturation)
                        .toColor(),
                context,
              )
              ..downPosition = downPosition
              ..isFocused = states.contains(WidgetState.focused)
              ..isHovered = states.contains(WidgetState.hovered)
              ..activeColor = effectiveActiveThumbColor
              ..inactiveColor = effectiveInactiveThumbColor
              ..activePressedColor = effectiveActivePressedThumbColor
              ..onOffLabelColors = onOffLabelColors
              ..inactivePressedColor = effectiveInactivePressedThumbColor
              ..activeThumbImage = widget.activeThumbImage
              ..onActiveThumbImageError = widget.onActiveThumbImageError
              ..inactiveThumbImage = widget.inactiveThumbImage
              ..onInactiveThumbImageError = widget.onInactiveThumbImageError
              ..activeTrackColor = effectiveActiveTrackColor
              ..activeTrackOutlineColor = effectiveActiveTrackOutlineColor
              ..activeTrackOutlineWidth = effectiveActiveTrackOutlineWidth
              ..inactiveTrackColor = effectiveInactiveTrackColor
              ..inactiveTrackOutlineColor = effectiveInactiveTrackOutlineColor
              ..inactiveTrackOutlineWidth = effectiveInactiveTrackOutlineWidth
              ..configuration = createLocalImageConfiguration(context)
              ..isInteractive = isInteractive
              ..trackInnerLength = widget.width
              ..textDirection = Directionality.of(context)
              ..activeIconColor = effectiveActiveIconColor
              ..inactiveIconColor = effectiveInactiveIconColor
              ..activeIcon = effectiveActiveIcon
              ..inactiveIcon = effectiveInactiveIcon
              ..iconTheme = IconTheme.of(context)
              ..surfaceColor = theme.scaffoldBackgroundColor
              ..positionController = positionController,
          ),
        ),
      ),
    );
  }
}

class _SwitchPainter extends ToggleablePainter {
  AnimationController get positionController => _positionController!;
  AnimationController? _positionController;
  set positionController(AnimationController? value) {
    assert(value != null);
    if (value == _positionController) {
      return;
    }
    _positionController = value;
    _colorAnimation?.dispose();
    _colorAnimation = CurvedAnimation(
      parent: positionController,
      curve: Curves.easeOut,
      reverseCurve: Curves.easeIn,
    );
    notifyListeners();
  }

  double get thumbSize => _thumbSize;
  double _thumbSize = 24.0;

  set thumbSize(double thumbSize) {
    _thumbSize = thumbSize;
    notifyListeners();
  }

  CurvedAnimation? _colorAnimation;

  Icon? get activeIcon => _activeIcon;
  Icon? _activeIcon;
  set activeIcon(Icon? value) {
    if (value == _activeIcon) {
      return;
    }
    _activeIcon = value;
    notifyListeners();
  }

  Icon? get inactiveIcon => _inactiveIcon;
  Icon? _inactiveIcon;
  set inactiveIcon(Icon? value) {
    if (value == _inactiveIcon) {
      return;
    }
    _inactiveIcon = value;
    notifyListeners();
  }

  IconThemeData? get iconTheme => _iconTheme;
  IconThemeData? _iconTheme;
  set iconTheme(IconThemeData? value) {
    if (value == _iconTheme) {
      return;
    }
    _iconTheme = value;
    notifyListeners();
  }

  Color get activeIconColor => _activeIconColor!;
  Color? _activeIconColor;
  set activeIconColor(Color value) {
    if (value == _activeIconColor) {
      return;
    }
    _activeIconColor = value;
    notifyListeners();
  }

  Color get inactiveIconColor => _inactiveIconColor!;
  Color? _inactiveIconColor;
  set inactiveIconColor(Color value) {
    if (value == _inactiveIconColor) {
      return;
    }
    _inactiveIconColor = value;
    notifyListeners();
  }

  Color get activePressedColor => _activePressedColor!;
  Color? _activePressedColor;
  set activePressedColor(Color? value) {
    assert(value != null);
    if (value == _activePressedColor) {
      return;
    }
    _activePressedColor = value;
    notifyListeners();
  }

  Color get inactivePressedColor => _inactivePressedColor!;
  Color? _inactivePressedColor;
  set inactivePressedColor(Color? value) {
    assert(value != null);
    if (value == _inactivePressedColor) {
      return;
    }
    _inactivePressedColor = value;
    notifyListeners();
  }

  ImageProvider? get activeThumbImage => _activeThumbImage;
  ImageProvider? _activeThumbImage;
  set activeThumbImage(ImageProvider? value) {
    if (value == _activeThumbImage) {
      return;
    }
    _activeThumbImage = value;
    notifyListeners();
  }

  ImageErrorListener? get onActiveThumbImageError => _onActiveThumbImageError;
  ImageErrorListener? _onActiveThumbImageError;
  set onActiveThumbImageError(ImageErrorListener? value) {
    if (value == _onActiveThumbImageError) {
      return;
    }
    _onActiveThumbImageError = value;
    notifyListeners();
  }

  ImageProvider? get inactiveThumbImage => _inactiveThumbImage;
  ImageProvider? _inactiveThumbImage;
  set inactiveThumbImage(ImageProvider? value) {
    if (value == _inactiveThumbImage) {
      return;
    }
    _inactiveThumbImage = value;
    notifyListeners();
  }

  ImageErrorListener? get onInactiveThumbImageError =>
      _onInactiveThumbImageError;
  ImageErrorListener? _onInactiveThumbImageError;
  set onInactiveThumbImageError(ImageErrorListener? value) {
    if (value == _onInactiveThumbImageError) {
      return;
    }
    _onInactiveThumbImageError = value;
    notifyListeners();
  }

  Color get activeTrackColor => _activeTrackColor!;
  Color? _activeTrackColor;
  set activeTrackColor(Color value) {
    if (value == _activeTrackColor) {
      return;
    }
    _activeTrackColor = value;
    notifyListeners();
  }

  Color? get activeTrackOutlineColor => _activeTrackOutlineColor;
  Color? _activeTrackOutlineColor;
  set activeTrackOutlineColor(Color? value) {
    if (value == _activeTrackOutlineColor) {
      return;
    }
    _activeTrackOutlineColor = value;
    notifyListeners();
  }

  Color? get inactiveTrackOutlineColor => _inactiveTrackOutlineColor;
  Color? _inactiveTrackOutlineColor;
  set inactiveTrackOutlineColor(Color? value) {
    if (value == _inactiveTrackOutlineColor) {
      return;
    }
    _inactiveTrackOutlineColor = value;
    notifyListeners();
  }

  double? get activeTrackOutlineWidth => _activeTrackOutlineWidth;
  double? _activeTrackOutlineWidth;
  set activeTrackOutlineWidth(double? value) {
    if (value == _activeTrackOutlineWidth) {
      return;
    }
    _activeTrackOutlineWidth = value;
    notifyListeners();
  }

  double? get inactiveTrackOutlineWidth => _inactiveTrackOutlineWidth;
  double? _inactiveTrackOutlineWidth;
  set inactiveTrackOutlineWidth(double? value) {
    if (value == _inactiveTrackOutlineWidth) {
      return;
    }
    _inactiveTrackOutlineWidth = value;
    notifyListeners();
  }

  Color get inactiveTrackColor => _inactiveTrackColor!;
  Color? _inactiveTrackColor;
  set inactiveTrackColor(Color value) {
    if (value == _inactiveTrackColor) {
      return;
    }
    _inactiveTrackColor = value;
    notifyListeners();
  }

  ImageConfiguration get configuration => _configuration!;
  ImageConfiguration? _configuration;
  set configuration(ImageConfiguration value) {
    if (value == _configuration) {
      return;
    }
    _configuration = value;
    notifyListeners();
  }

  TextDirection get textDirection => _textDirection!;
  TextDirection? _textDirection;
  set textDirection(TextDirection value) {
    if (_textDirection == value) {
      return;
    }
    _textDirection = value;
    notifyListeners();
  }

  Color get surfaceColor => _surfaceColor!;
  Color? _surfaceColor;
  set surfaceColor(Color value) {
    if (value == _surfaceColor) {
      return;
    }
    _surfaceColor = value;
    notifyListeners();
  }

  bool get isInteractive => _isInteractive!;
  bool? _isInteractive;
  set isInteractive(bool value) {
    if (value == _isInteractive) {
      return;
    }
    _isInteractive = value;
    notifyListeners();
  }

  double get trackInnerLength => _trackInnerLength!;
  double? _trackInnerLength;
  set trackInnerLength(double value) {
    if (value == _trackInnerLength) {
      return;
    }
    _trackInnerLength = value;
    notifyListeners();
  }

  (Color onLabelColor, Color offLabelColor)? get onOffLabelColors =>
      _onOffLabelColors;
  (Color onLabelColor, Color offLabelColor)? _onOffLabelColors;
  set onOffLabelColors((Color onLabelColor, Color offLabelColor)? value) {
    if (value == _onOffLabelColors) {
      return;
    }
    _onOffLabelColors = value;
    notifyListeners();
  }

  final TextPainter _textPainter = TextPainter();
  Color? _cachedThumbColor;
  ImageProvider? _cachedThumbImage;
  ImageErrorListener? _cachedThumbErrorListener;
  BoxPainter? _cachedThumbPainter;

  ShapeDecoration _createDefaultThumbDecoration(
    Color color,
    ImageProvider? image,
    ImageErrorListener? errorListener,
  ) {
    return ShapeDecoration(
      color: color,
      image: image == null
          ? null
          : DecorationImage(image: image, onError: errorListener),
      shape: const StadiumBorder(),
    );
  }

  bool _isPainting = false;

  void _handleDecorationChanged() {
    // If the image decoration is available synchronously, we'll get called here
    // during paint. There's no reason to mark ourselves as needing paint if we
    // are already in the middle of painting. (In fact, doing so would trigger
    // an assert).
    if (!_isPainting) {
      notifyListeners();
    }
  }

  bool _stopPressAnimation = false;
  late double? _pressedThumbExtension;

  @override
  void paint(Canvas canvas, Size size) {
    final currentValue = position.value;

    final visualPosition = switch (textDirection) {
      TextDirection.rtl => 1.0 - currentValue,
      TextDirection.ltr => currentValue,
    };
    if (reaction.status == AnimationStatus.reverse && !_stopPressAnimation) {
      _stopPressAnimation = true;
    } else {
      _stopPressAnimation = false;
    }

    _pressedThumbExtension = reaction.value * 7;
    final _thumbSize = Size(thumbSize + _pressedThumbExtension!, thumbSize);

    final colorValue = _colorAnimation!.value;
    final trackColor =
        Color.lerp(inactiveTrackColor, activeTrackColor, position.value)!;
    final trackOutlineColor =
        inactiveTrackOutlineColor == null || activeTrackOutlineColor == null
            ? null
            : Color.lerp(
                inactiveTrackOutlineColor,
                activeTrackOutlineColor,
                colorValue,
              );
    final trackOutlineWidth = lerpDouble(
      inactiveTrackOutlineWidth,
      activeTrackOutlineWidth,
      colorValue,
    );

    final Color lerpedThumbColor;
    if (!reaction.isDismissed) {
      lerpedThumbColor =
          Color.lerp(inactivePressedColor, activePressedColor, colorValue)!;
    } else if (positionController.status == AnimationStatus.forward) {
      lerpedThumbColor =
          Color.lerp(inactivePressedColor, activeColor, colorValue)!;
    } else if (positionController.status == AnimationStatus.reverse) {
      lerpedThumbColor =
          Color.lerp(inactiveColor, activePressedColor, colorValue)!;
    } else {
      lerpedThumbColor = Color.lerp(inactiveColor, activeColor, colorValue)!;
    }

    // Blend the thumb color against a `surfaceColor` background in case the
    // thumbColor is not opaque. This way we do not see through the thumb to the
    // track underneath.
    final thumbColor = Color.alphaBlend(lerpedThumbColor, surfaceColor);

    final thumbIcon = currentValue < 0.5 ? inactiveIcon : activeIcon;

    final thumbImage =
        currentValue < 0.5 ? inactiveThumbImage : activeThumbImage;

    final thumbErrorListener = currentValue < 0.5
        ? onInactiveThumbImageError
        : onActiveThumbImageError;

    final paint = Paint()..color = trackColor;

    final thumbPaintOffset = _computeThumbPaintOffset(
      _thumbSize,
      visualPosition,
      size,
    );

    final trackRect = Rect.fromLTWH(
      0,
      0,
      size.width,
      size.height,
    );

    _paintTrackWith(
      canvas,
      paint,
      Offset.zero,
      trackOutlineColor,
      trackOutlineWidth,
      trackRect,
    );

    final currentReactionValue = reaction.value;
    if (_onOffLabelColors != null) {
      final (Color onLabelColor, Color offLabelColor) = onOffLabelColors!;

      final leftLabelOpacity = visualPosition * (1.0 - currentReactionValue);
      final rightLabelOpacity =
          (1.0 - visualPosition) * (1.0 - currentReactionValue);
      final (double onLabelOpacity, double offLabelOpacity) =
          switch (textDirection) {
        TextDirection.ltr => (leftLabelOpacity, rightLabelOpacity),
        TextDirection.rtl => (rightLabelOpacity, leftLabelOpacity),
      };

      final (Offset onLabelOffset, Offset offLabelOffset) =
          switch (textDirection) {
        TextDirection.ltr => (
            trackRect.centerLeft.translate(_kOnLabelPaddingHorizontal, 0),
            trackRect.centerRight.translate(-_kOffLabelPaddingHorizontal, 0),
          ),
        TextDirection.rtl => (
            trackRect.centerRight.translate(-_kOnLabelPaddingHorizontal, 0),
            trackRect.centerLeft.translate(_kOffLabelPaddingHorizontal, 0),
          ),
      };

      // Draws '|' label.
      final onLabelRect = Rect.fromCenter(
        center: onLabelOffset,
        width: _kOnLabelWidth,
        height: _kOnLabelHeight,
      );
      final onLabelPaint = Paint()
        ..color = onLabelColor.withOpacity(onLabelOpacity)
        ..style = PaintingStyle.fill;
      canvas.drawRect(onLabelRect, onLabelPaint);

      // Draws 'O' label.
      final offLabelPaint = Paint()
        ..color = offLabelColor.withOpacity(offLabelOpacity)
        ..style = PaintingStyle.stroke
        ..strokeWidth = _kOffLabelWidth;
      canvas.drawCircle(offLabelOffset, _kOffLabelRadius, offLabelPaint);
    }
    _paintThumbWith(
      thumbPaintOffset,
      canvas,
      colorValue,
      thumbColor,
      thumbImage,
      thumbErrorListener,
      thumbIcon,
      _thumbSize,
    );
  }

  /// Computes canvas offset for thumb's upper left corner as if it were a
  /// square.
  Offset _computeThumbPaintOffset(
    Size thumbSize,
    double visualPosition,
    Size canvasSize,
  ) {
    final horizontalProgress = visualPosition *
        (canvasSize.width -
            thumbSize.width -
            (canvasSize.height - thumbSize.height));
    final thumbHorizontalOffset =
        (canvasSize.height - thumbSize.height) / 2 + horizontalProgress;
    final thumbVerticalOffset = (canvasSize.height - thumbSize.height) / 2;
    return Offset(thumbHorizontalOffset, thumbVerticalOffset);
  }

  void _paintTrackWith(
    Canvas canvas,
    Paint paint,
    Offset trackPaintOffset,
    Color? trackOutlineColor,
    double? trackOutlineWidth,
    Rect trackRect,
  ) {
    final trackRRect =
        RRect.fromRectAndRadius(trackRect, const Radius.circular(24));

    canvas.drawRRect(trackRRect, paint);

    // Paint the track outline.
    if (trackOutlineColor != null) {
      final outlineTrackRect = Rect.fromLTWH(
        trackPaintOffset.dx + 1,
        trackPaintOffset.dy + 1,
        96,
        96,
      );
      final outlineTrackRRect = RRect.fromRectAndRadius(
        outlineTrackRect,
        const Radius.circular(24),
      );

      final outlinePaint = Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = trackOutlineWidth ?? 2.0
        ..color = trackOutlineColor;

      canvas.drawRRect(outlineTrackRRect, outlinePaint);
    }

    if (isFocused) {
      final focusedOutline = trackRRect.inflate(1.75);
      final focusedPaint = Paint()
        ..style = PaintingStyle.stroke
        ..color = focusColor
        ..strokeWidth = 3.5;
      canvas.drawRRect(focusedOutline, focusedPaint);
    }
    canvas.clipRRect(trackRRect);
  }

  void _paintThumbWith(
    Offset thumbPaintOffset,
    Canvas canvas,
    double currentValue,
    Color thumbColor,
    ImageProvider? thumbImage,
    ImageErrorListener? thumbErrorListener,
    Icon? thumbIcon,
    Size thumbSize,
  ) {
    try {
      _isPainting = true;
      if (_cachedThumbPainter == null ||
          thumbColor != _cachedThumbColor ||
          thumbImage != _cachedThumbImage ||
          thumbErrorListener != _cachedThumbErrorListener) {
        _cachedThumbColor = thumbColor;
        _cachedThumbImage = thumbImage;
        _cachedThumbErrorListener = thumbErrorListener;
        _cachedThumbPainter?.dispose();
        _cachedThumbPainter = _createDefaultThumbDecoration(
          thumbColor,
          thumbImage,
          thumbErrorListener,
        ).createBoxPainter(_handleDecorationChanged);
      }
      final thumbPainter = _cachedThumbPainter!;

      _paintCupertinoThumbShadowAndBorder(canvas, thumbPaintOffset, thumbSize);

      thumbPainter.paint(
        canvas,
        thumbPaintOffset,
        configuration.copyWith(size: thumbSize),
      );

      if (thumbIcon != null && thumbIcon.icon != null) {
        final iconColor =
            Color.lerp(inactiveIconColor, activeIconColor, currentValue)!;
        final iconSize = thumbIcon.size ?? 16.0;
        final iconData = thumbIcon.icon!;
        final iconWeight = thumbIcon.weight ?? iconTheme?.weight;
        final iconFill = thumbIcon.fill ?? iconTheme?.fill;
        final iconGrade = thumbIcon.grade ?? iconTheme?.grade;
        final iconOpticalSize = thumbIcon.opticalSize ?? iconTheme?.opticalSize;
        final iconShadows = thumbIcon.shadows ?? iconTheme?.shadows;

        final textSpan = TextSpan(
          text: String.fromCharCode(iconData.codePoint),
          style: TextStyle(
            fontVariations: <FontVariation>[
              if (iconFill != null) FontVariation('FILL', iconFill),
              if (iconWeight != null) FontVariation('wght', iconWeight),
              if (iconGrade != null) FontVariation('GRAD', iconGrade),
              if (iconOpticalSize != null)
                FontVariation('opsz', iconOpticalSize),
            ],
            color: iconColor,
            fontSize: iconSize,
            inherit: false,
            fontFamily: iconData.fontFamily,
            package: iconData.fontPackage,
            shadows: iconShadows,
          ),
        );
        _textPainter
          ..textDirection = textDirection
          ..text = textSpan;
        _textPainter.layout();
        final additionalHorizontalOffset = (thumbSize.width - iconSize) / 2;
        final additionalVerticalOffset = (thumbSize.height - iconSize) / 2;
        final offset = thumbPaintOffset +
            Offset(additionalHorizontalOffset, additionalVerticalOffset);

        _textPainter.paint(canvas, offset);
      }
    } finally {
      _isPainting = false;
    }
  }

  void _paintCupertinoThumbShadowAndBorder(
    Canvas canvas,
    Offset thumbPaintOffset,
    Size thumbSize,
  ) {
    final thumbBounds = RRect.fromLTRBR(
      thumbPaintOffset.dx,
      thumbPaintOffset.dy,
      thumbPaintOffset.dx + thumbSize.width,
      thumbPaintOffset.dy + thumbSize.height,
      Radius.circular(thumbSize.height / 2.0),
    );
    for (final shadow in _kSwitchBoxShadows) {
      canvas.drawRRect(thumbBounds.shift(shadow.offset), shadow.toPaint());
    }
    canvas.drawRRect(
      thumbBounds.inflate(0.5),
      Paint()..color = const Color(0x0A000000),
    );
  }

  @override
  void dispose() {
    _textPainter.dispose();
    _cachedThumbPainter?.dispose();
    _cachedThumbPainter = null;
    _cachedThumbColor = null;
    _cachedThumbImage = null;
    _cachedThumbErrorListener = null;
    _colorAnimation?.dispose();
    super.dispose();
  }
}
