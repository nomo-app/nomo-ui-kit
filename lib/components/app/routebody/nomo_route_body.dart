import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';
import 'package:nomo_ui_kit/utils/multi_wrapper.dart';

part 'nomo_route_body.theme_data.g.dart';

@NomoComponentThemeData('routeBody')
class NomoRouteBody extends StatelessWidget {
  final Widget? child;
  final Widget Function(BuildContext context)? builder;
  final List<Widget>? slivers;
  final List<Widget> Function(BuildContext context)? sliverBuilder;
  final List<Widget>? children;
  final List<Widget> Function(BuildContext context)? childrenBuilder;
  final NomoAppBar? appBar;

  final ScrollController? scrollController;

  @NomoSizingField<EdgeInsets>(EdgeInsets.all(8))
  final EdgeInsets? padding;

  @NomoSizingField(8.0)
  final double? scrollBarThickness;

  @NomoSizingField(Radius.circular(4))
  final Radius? scrollBarRadius;

  @NomoSizingField<double?>(null, lerp: false)
  final double? maxContentWidth;

  @NomoColorField<Color?>(null)
  final Color? backgroundColor;

  @NomoColorField<Widget?>(null)
  final Widget? background;

  final bool useScrollBar;

  final Widget? footer;

  final Widget? floatingFooter;

  final bool expands;

  final BorderRadiusGeometry? borderRadius;

  /// Only used when [child] or [builder] is provided
  /// If true, the child will be wrapped in a SingleChildScrollView
  final bool scrollable;

  const NomoRouteBody({
    this.child,
    this.appBar,
    super.key,
    this.scrollController,
    this.padding,
    this.scrollBarThickness,
    this.scrollBarRadius,
    this.children,
    this.slivers,
    this.builder,
    this.childrenBuilder,
    this.sliverBuilder,
    this.useScrollBar = false,
    this.footer,
    this.backgroundColor,
    this.scrollable = false,
    this.maxContentWidth,
    this.background,
    this.borderRadius,
    this.floatingFooter,
    this.expands = true,
  }) : assert(
          child != null ||
              slivers != null ||
              children != null ||
              builder != null ||
              sliverBuilder != null ||
              childrenBuilder != null,
          'Either child or builder must be provided',
        );

  NomoRouteBody copyWith(
    BuildContext context, {
    bool? expands,
    bool? scrollable,
    BorderRadius? borderRadius,
    bool? showAppBarBackButton,
    bool addTopInset = false,
    double? modalAppBarHeight,
    double? padding,
  }) {
    final theme = getFromContext(context, this);
    return NomoRouteBody(
      appBar: showAppBarBackButton != null
          ? appBar?.copyWith(
              leading: showAppBarBackButton ? null : const SizedBox.shrink(),
              trailling: const CloseButton(),
              borderRadius: BorderRadius.only(
                topLeft: borderRadius?.topLeft ?? Radius.zero,
                topRight: borderRadius?.topRight ?? Radius.zero,
              ),
              topInset: addTopInset ? theme.padding.top : 0,
              height: modalAppBarHeight,
            )
          : appBar?.copyWith(
              borderRadius: BorderRadius.only(
                topLeft: borderRadius?.topLeft ?? Radius.zero,
                topRight: borderRadius?.topRight ?? Radius.zero,
              ),
              topInset: addTopInset ? theme.padding.top : 0,
              height: modalAppBarHeight,
            ),
      background: background,
      backgroundColor: backgroundColor,
      builder: builder,
      child: child,
      children: children,
      childrenBuilder: childrenBuilder,
      expands: expands ?? this.expands,
      floatingFooter: floatingFooter,
      footer: footer,
      key: key,
      maxContentWidth: maxContentWidth,
      padding: padding != null ? EdgeInsets.all(padding) : this.padding,
      scrollBarRadius: scrollBarRadius,
      scrollBarThickness: scrollBarThickness,
      scrollController: scrollController,
      scrollable: scrollable ?? this.scrollable,
      sliverBuilder: sliverBuilder,
      slivers: slivers,
      useScrollBar: useScrollBar,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    final _scrollController = scrollController ?? ScrollController();

    final body = switch (this) {
      _ when child != null => _ChildBody(
          theme: theme,
          parent: this,
          child: child!,
        ),
      _ when builder != null => Builder(
          builder: (context) => _ChildBody(
            theme: theme,
            parent: this,
            child: builder!(context),
          ),
        ),
      _ when slivers != null => _SliverBody(
          theme: theme,
          slivers: slivers!,
          parent: this,
        ),
      _ when sliverBuilder != null => Builder(
          builder: (context) => _SliverBody(
            theme: theme,
            slivers: sliverBuilder!(context),
            parent: this,
          ),
        ),
      _ when children != null => _ChildrenBody(
          theme: theme,
          parent: this,
          children: children!,
        ),
      _ => Builder(
          builder: (context) => _ChildrenBody(
            theme: theme,
            parent: this,
            children: childrenBuilder!(context),
          ),
        ),
    };

    return MultiWrapper(
      wrappers: [
        if (useScrollBar)
          (child) {
            return Scrollbar(
              controller: _scrollController,
              radius: theme.scrollBarRadius,
              thickness: theme.scrollBarThickness,
              child: child,
            );
          },
        if (theme.background != null)
          (child) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: borderRadius,
              ),
              child: Stack(
                children: [
                  theme.background!,
                  child,
                ],
              ),
            );
          }
        else if (theme.backgroundColor != null)
          (child) {
            return Container(
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: borderRadius,
              ),
              child: child,
            );
          }
      ],
      child: DefaultScrollController(
        scrollController: _scrollController,
        child: body,
      ),
    );
  }
}

class _ChildrenBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final NomoRouteBody parent;
  final List<Widget> children;

  const _ChildrenBody({
    required this.theme,
    required this.children,
    required this.parent,
  });

  @override
  Widget build(BuildContext context) {
    final verticalPadding = theme.padding.vertical / 2;
    return Center(
      heightFactor: 1,
      widthFactor: 1,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: theme.maxContentWidth ?? double.infinity,
        ),
        child: Stack(
          children: [
            CustomScrollView(
              shrinkWrap: !parent.expands,
              controller: DefaultScrollController.of(context),
              slivers: [
                if (parent.appBar != null)
                  parent.appBar!.toSliverBar(context)
                else
                  verticalPadding.vSpacing.toBox,
                SliverPadding(
                  padding: EdgeInsets.symmetric(
                    horizontal: theme.padding.horizontal / 2,
                  ),
                  sliver: SliverList.builder(
                    itemBuilder: (context, index) => children[index],
                    itemCount: children.length,
                  ),
                ),
                if (parent.footer != null && parent.expands)
                  FillRemainingFooter(
                    padding: verticalPadding,
                    child: parent.footer!,
                  )
                else if (parent.footer != null) ...[
                  verticalPadding.vSpacing.toBox,
                  SliverPadding(
                    sliver: parent.footer!.toBox,
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: theme.padding.horizontal / 2,
                    ),
                  ),
                  verticalPadding.vSpacing.toBox,
                ] else
                  verticalPadding.vSpacing.toBox,
              ],
            ),
            if (parent.floatingFooter != null) parent.floatingFooter!,
          ],
        ),
      ),
    );
  }
}

class _SliverBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final List<Widget> slivers;
  final NomoRouteBody parent;

  const _SliverBody({
    required this.theme,
    required this.slivers,
    required this.parent,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: theme.maxContentWidth ?? double.infinity,
        ),
        child: Stack(
          children: [
            CustomScrollView(
              controller: DefaultScrollController.of(context),
              slivers: [
                ...slivers,
                if (parent.footer != null)
                  FillRemainingFooter(
                    padding: 0.0,
                    child: parent.footer!,
                  ),
              ],
            ),
            if (parent.floatingFooter != null) parent.floatingFooter!,
          ],
        ),
      ),
    );
  }
}

class _ChildBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final NomoRouteBody parent;
  final Widget child;

  const _ChildBody({
    required this.theme,
    required this.child,
    required this.parent,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      widthFactor: 1,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: theme.maxContentWidth ?? double.infinity,
        ),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (parent.appBar != null) parent.appBar!,
                MultiWrapper(
                  wrappers: [
                    if (parent.scrollable)
                      (c) {
                        return Expanded(
                          child: SingleChildScrollView(
                            controller: DefaultScrollController.of(context),
                            child: c,
                          ),
                        );
                      }
                    else if (parent.expands)
                      (c) {
                        return Expanded(
                          child: c,
                        );
                      },
                  ],
                  child: Padding(padding: theme.padding, child: child),
                ),
                if (parent.footer != null)
                  Padding(
                    padding: EdgeInsetsGeometry.only(
                      left: theme.padding.left,
                      right: theme.padding.right,
                      bottom: theme.padding.bottom,
                    ),
                    child: parent.footer,
                  ),
              ],
            ),
            if (parent.floatingFooter != null) parent.floatingFooter!,
          ],
        ),
      ),
    );
  }
}

class DefaultScrollController extends InheritedWidget {
  const DefaultScrollController({
    required super.child,
    required this.scrollController,
    super.key,
  });

  final ScrollController scrollController;

  static ScrollController of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<DefaultScrollController>();
    assert(
      result != null,
      'No DefaultScrollController found in context. Make Sure there is NomoRouteBody above this widget in the tree',
    );
    return result!.scrollController;
  }

  @override
  bool updateShouldNotify(DefaultScrollController oldWidget) {
    return oldWidget.scrollController != scrollController;
  }
}

extension SliverUtil on Widget {
  Widget get toBox => SliverToBoxAdapter(
        child: this,
      );
}

class FillRemainingFooter extends StatelessWidget {
  final Widget child;
  final double padding;

  const FillRemainingFooter({
    required this.child,
    required this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Expanded(
            child: SizedBox.shrink(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: child,
          ),
          SizedBox(height: padding),
        ],
      ),
    );
  }
}

class DisableImplicitScrolling extends ScrollPhysics {
  const DisableImplicitScrolling({super.parent});

  @override
  bool get allowImplicitScrolling => false;
}

extension BorderRadiusToEdgeInsets on BorderRadius {
  /// Converts the BorderRadius to EdgeInsets by using the x value of each corner.
  EdgeInsets toEdgeInsets() {
    return EdgeInsets.only(
      top: this.topLeft.x,
      right: this.topRight.x,
      bottom: this.bottomRight.x,
      left: this.bottomLeft.x,
    );
  }
}
