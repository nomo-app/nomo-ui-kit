import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

@visibleForTesting
const notificationShowingDuration = Duration(milliseconds: 350);

@visibleForTesting
const notificationHorizontalAnimationDuration = Duration(milliseconds: 350);

/// A widget for display foreground notification.
///
/// It is mainly intended to wrap whole your app Widgets.
/// e.g. Just wrapping [MaterialApp].
///
/// {@tool snippet}
/// Usage example:
///
/// ```dart
/// return InAppNotification(
///   child: MaterialApp(
///     title: 'In-App Notification Demo',
///     home: const HomePage(),
///   ),
/// );
/// ```
/// {@end-tool}
class InAppNotification extends StatelessWidget {
  /// Creates an in-app notification system.
  const InAppNotification({
    required this.child,
    super.key,
  });

  final Widget child;

  /// Shows specified Widget as notification.
  ///
  /// [child] is required, this will be displayed as notification body.
  /// [context] is required, this is used to get internally used notification controller class which is subclass of `InheritedWidget`.
  ///
  /// Showing and hiding notifications is managed by animation,
  /// and the process is as follows.
  ///
  /// 1. Execute this method, start animation via call state's `show` method
  ///    internally.
  /// 2. Then the notification appear, it will stay at specified [duration].
  /// 3. After the [duration] has elapsed,
  ///    play the animation in reverse and dispose the notification.
  ///
  /// This method will awaits an animation that showing the notification.
  static FutureOr<void> show({
    required Widget child,
    required BuildContext context,
    double? top,
    double? left,
    double? right,
    VoidCallback? onTap,
    Duration duration = const Duration(seconds: 10),
    Curve curve = Curves.easeOutCubic,
    Curve dismissCurve = Curves.easeOutCubic,
    bool useRootNavigator = false,
    bool center = false,
    // ignore: strict_raw_type
    @visibleForTesting FutureOr Function()? notificationCreatedCallback,
  }) async {
    final controller = _NotificationController.of(context);

    assert(controller != null, 'Not found InAppNotification controller.');

    await controller!.create(
      child: child,
      context: context,
      onTap: onTap,
      top: top ?? 0.0,
      left: left,
      right: right,
      useRootNavigator: useRootNavigator,
      center: center,
    );
    if (kDebugMode) {
      await notificationCreatedCallback?.call();
    }
    await controller.show(
      duration: duration,
      curve: curve,
      dismissCurve: dismissCurve,
      top: top ?? 0.0,
    );
  }

  /// Hides a shown notification.
  ///
  /// [context] is required, this is used to get internally used notification controller class which is subclass of `InheritedWidget`.
  ///
  /// This method will awaits an animation that showing the notification.
  static FutureOr<void> dismiss({required BuildContext context}) async {
    final controller = _NotificationController.of(context);

    if (controller == null) return;

    await controller.dismissProgramatically();
  }

  @override
  Widget build(BuildContext context) {
    return _VsyncProvider(child: child);
  }
}

class _NotificationController extends InheritedWidget {
  const _NotificationController({
    required super.child,
    required this.state,
  });

  final _NotificationState state;

  static _NotificationController? of(BuildContext context) => context
      .getElementForInheritedWidgetOfExactType<_NotificationController>()!
      .widget as _NotificationController;

  @override
  bool updateShouldNotify(covariant _NotificationController oldWidget) => false;

  Future<void> create({
    required Widget child,
    required BuildContext context,
    required double top,
    required bool useRootNavigator,
    bool? center,
    double? left,
    double? right,
    VoidCallback? onTap,
  }) async {
    final nav = Navigator.of(context, rootNavigator: useRootNavigator);

    await dismiss(shouldAnimation: !state.showController.isDismissed);

    state.verticalAnimationController.dragDistance = 0.0;
    state.horizontalAnimationController.dragDistance = 0.0;
    state
      ..onTap = onTap
      ..overlay = OverlayEntry(
        builder: (context) {
          state.screenSize = MediaQuery.of(context).size;
          state.horizontalAnimationController.screenWidth =
              state.screenSize.width;

          final _bottom =
              state.screenSize.height - state.currentVerticalPosition - top;

          var _left = switch (right) {
            final double right => state.screenSize.width -
                right -
                state.notificationSize.width -
                state.currentHorizontalPosition,
            _ => state.currentHorizontalPosition + (left ?? 0.0),
          };

          if (center ?? false) {
            _left = state.currentHorizontalPosition +
                state.screenSize.width / 2 -
                state.notificationSize.width / 2;
          }

          return Positioned(
            bottom: _bottom,
            left: _left,
            child: SizeListenableContainer(
              onSizeChanged: (size) {
                if (state.notificationSizeCompleter.isCompleted) return;
                final topPadding = MediaQuery.of(context).viewPadding.top;
                state.notificationSizeCompleter
                    .complete(size + Offset(0, topPadding));
              },
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _onTapNotification,
                onTapDown: (_) => _onTapDown(),
                onVerticalDragUpdate: (details) =>
                    _onVerticalDragUpdate(details, top),
                onVerticalDragEnd: _onVerticalDragEnd,
                onHorizontalDragUpdate: (details) =>
                    _onHorizontalDragUpdate(details, right != null),
                onHorizontalDragEnd: _onHorizontalDragEnd,
                child: Material(color: Colors.transparent, child: child),
              ),
            ),
          );
        },
      );

    nav.overlay?.insert(state.overlay!);
  }

  Future<void> show({
    required Duration duration,
    required Curve curve,
    required Curve dismissCurve,
    required double top,
  }) async {
    final size = await state.notificationSizeCompleter.future;
    final isSizeChanged = state.notificationSize != size;
    state.notificationSize = size;
    state.verticalAnimationController.notificationHeight =
        state.notificationSize.height + top;

    if (isSizeChanged) {
      state.showAnimation = Tween(
        begin: 0.0,
        end: state.notificationSize.height,
      ).animate(
        CurvedAnimation(
          parent: state.showController,
          curve: curve,
          reverseCurve: dismissCurve,
        ),
      );
    }

    await state.showController.forward(from: 0.0);

    if (duration.inMicroseconds == 0) return;
    state.timer = Timer(duration, dismiss);
  }

  Future<void> dismiss({bool shouldAnimation = true, double from = 1.0}) async {
    state.timer?.cancel();

    await state.showController.reverse(from: shouldAnimation ? from : 0.0);

    state.overlay?.remove();
    state
      ..overlay = null
      ..notificationSizeCompleter = Completer();
  }

  void _onTapNotification() {
    if (state.onTap == null) return;

    dismiss();
    state.onTap!();
  }

  void _onTapDown() {
    state.timer?.cancel();
  }

  void _onVerticalDragUpdate(DragUpdateDetails details, double top) {
    state.verticalAnimationController.dragDistance =
        (state.verticalAnimationController.dragDistance + details.delta.dy)
            .clamp(-state.notificationSize.height - top, 0.0);
    state.updateNotification();
  }

  Future<void> _onVerticalDragEnd(DragEndDetails details) async {
    final percentage =
        state.currentVerticalPosition.abs() / state.notificationSize.height;
    final velocity =
        details.velocity.pixelsPerSecond.dy * state.screenSize.height;
    if (velocity <= -1.0) {
      await state.verticalAnimationController
          .dismiss(currentPosition: state.currentVerticalPosition);
      await dismiss(shouldAnimation: false);
      return;
    }

    if (percentage >= 0.5) {
      if (state.verticalAnimationController.dragDistance == 0.0) return;
      await state.verticalAnimationController.stay();
    } else {
      await state.verticalAnimationController
          .dismiss(currentPosition: state.currentVerticalPosition);
      await dismiss(shouldAnimation: false);
    }
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details, bool inverse) {
    state.horizontalAnimationController.dragDistance +=
        inverse ? -details.delta.dx : details.delta.dx;
    state.updateNotification();
  }

  Future<void> _onHorizontalDragEnd(DragEndDetails details) async {
    final velocity =
        details.velocity.pixelsPerSecond.dx / state.screenSize.width;
    final position = state.horizontalAnimationController.dragDistance /
        (state.screenSize.width);

    if (velocity.abs() >= 1.0 || position.abs() >= 0.2) {
      await state.horizontalAnimationController.dismiss();
      await dismiss(shouldAnimation: false);
    } else {
      await state.horizontalAnimationController.stay();
    }
  }

  Future<void> dismissProgramatically() async {
    await dismiss(
      shouldAnimation: !state.showController.isDismissed,
      from: state.showController.value,
    );
  }
}

class _NotificationState {
  VoidCallback? onTap;
  Timer? timer;

  OverlayEntry? overlay;
  Animation<double>? showAnimation;

  double get currentVerticalPosition =>
      (showAnimation?.value ?? 0.0) +
      (_verticalAnimation?.value ?? 0.0) +
      verticalAnimationController.dragDistance;
  double get currentHorizontalPosition =>
      (_horizontalAnimation?.value ?? 0.0) +
      horizontalAnimationController.dragDistance;

  final AnimationController showController;
  final VerticalInteractAnimationController verticalAnimationController;
  final HorizontalInteractAnimationController horizontalAnimationController;

  Animation<double>? get _verticalAnimation =>
      verticalAnimationController.currentAnimation;
  Animation<double>? get _horizontalAnimation =>
      horizontalAnimationController.currentAnimation;

  Size notificationSize = Size.zero;
  Completer<Size> notificationSizeCompleter = Completer();
  Size screenSize = Size.zero;

  _NotificationState({
    required this.showController,
    required this.verticalAnimationController,
    required this.horizontalAnimationController,
  }) {
    showController.addListener(updateNotification);
    verticalAnimationController.addListener(updateNotification);
    horizontalAnimationController.addListener(updateNotification);
  }

  void updateNotification() {
    overlay?.markNeedsBuild();
  }
}

///
/// Size Listenable Container
///

T? _ambiguate<T>(T? value) => value;

typedef SizeChangedCallback = void Function(Size size);

class SizeListenableContainer extends SingleChildRenderObjectWidget {
  const SizeListenableContainer({
    required Widget super.child,
    required this.onSizeChanged,
    super.key,
  });

  final SizeChangedCallback onSizeChanged;

  @override
  SizeListenableRenderObject createRenderObject(BuildContext context) {
    return SizeListenableRenderObject(onSizeChanged: onSizeChanged);
  }
}

class SizeListenableRenderObject extends RenderProxyBox {
  SizeListenableRenderObject({
    required this.onSizeChanged,
    RenderBox? child,
  }) : super(child);

  final SizeChangedCallback onSizeChanged;

  Size? _oldSize;

  @override
  void performLayout() {
    super.performLayout();

    if (size != _oldSize) {
      _oldSize = size;
      _callback(size);
    }
  }

  void _callback(Size size) {
    _ambiguate(SchedulerBinding.instance)!.addPostFrameCallback((_) {
      onSizeChanged(size);
    });
  }
}

///
/// Vsync Provider
///

class _VsyncProvider extends StatefulWidget {
  const _VsyncProvider({
    required this.child,
  });

  final Widget child;

  @override
  State<_VsyncProvider> createState() => __VsyncProviderState();
}

class __VsyncProviderState extends State<_VsyncProvider>
    with TickerProviderStateMixin {
  late final _showController = AnimationController(
    vsync: this,
    duration: notificationShowingDuration,
  );

  late final _verticalAnimationController = VerticalInteractAnimationController(
    vsync: this,
    duration: notificationShowingDuration,
  );

  late final _horizontalAnimationController =
      HorizontalInteractAnimationController(
    vsync: this,
    duration: notificationHorizontalAnimationDuration,
  );

  @override
  Widget build(BuildContext context) {
    return _NotificationController(
      state: _NotificationState(
        showController: _showController,
        verticalAnimationController: _verticalAnimationController,
        horizontalAnimationController: _horizontalAnimationController,
      ),
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _showController.dispose();
    _verticalAnimationController.dispose();
    _horizontalAnimationController.dispose();
    super.dispose();
  }
}

///
/// Controller
///

final _defaultCurve = CurveTween(curve: Curves.easeOutCubic);

abstract class InteractnimationController {
  Animation<double>? currentAnimation;
  late double dragDistance;

  /// Animate to make the notification stay in screen.
  Future<void> stay();

  /// Animate to dismiss the notification.
  Future<void> dismiss();
}

class VerticalInteractAnimationController extends AnimationController
    implements InteractnimationController {
  @override
  Animation<double>? currentAnimation;

  @override
  double dragDistance = 0.0;

  double _notificationHeight = 0.0;

  // ignore: avoid_setters_without_getters
  set notificationHeight(double value) => _notificationHeight = value;

  VerticalInteractAnimationController({
    required super.vsync,
    required Duration super.duration,
  });

  @override
  Future<void> dismiss({double currentPosition = 0.0}) async {
    currentAnimation = Tween(
      begin: currentPosition - _notificationHeight,
      end: -_notificationHeight,
    ).chain(_defaultCurve).animate(this);
    dragDistance = 0.0;

    await forward(from: 0.0);
    currentAnimation = null;
  }

  @override
  Future<void> stay() async {
    currentAnimation =
        Tween(begin: dragDistance, end: 0.0).chain(_defaultCurve).animate(this);

    dragDistance = 0.0;
    await forward(from: 0.0);
    currentAnimation = null;
  }
}

class HorizontalInteractAnimationController extends AnimationController
    implements InteractnimationController {
  @override
  Animation<double>? currentAnimation;

  @override
  double dragDistance = 0.0;

  double _screenWidth = 0.0;

  // ignore: avoid_setters_without_getters
  set screenWidth(double value) => _screenWidth = value;

  HorizontalInteractAnimationController({
    required super.vsync,
    required Duration super.duration,
  });

  @override
  Future<void> dismiss() async {
    final endValue = dragDistance.sign * _screenWidth;
    currentAnimation = Tween(begin: dragDistance, end: endValue)
        .chain(_defaultCurve)
        .animate(this);
    dragDistance = 0.0;

    await forward(from: 0.0);
    currentAnimation = null;
  }

  @override
  Future<void> stay() async {
    currentAnimation =
        Tween(begin: dragDistance, end: 0.0).chain(_defaultCurve).animate(this);
    dragDistance = 0.0;

    await forward(from: 0.0);
    currentAnimation = null;
  }
}
