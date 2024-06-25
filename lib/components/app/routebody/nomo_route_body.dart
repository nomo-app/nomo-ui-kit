import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_route_body.theme_data.g.dart';

@NomoComponentThemeData('routeBody')
class NomoRouteBody extends StatelessWidget {
  final Widget? child;
  final Widget Function(BuildContext context)? builder;
  final List<Widget>? slivers;
  final List<Widget> Function(BuildContext context)? sliverBuilder;
  final List<Widget>? children;
  final List<Widget> Function(BuildContext context)? childrenBuilder;

  final ScrollController? scrollController;

  @NomoSizingField(EdgeInsets.all(8))
  final EdgeInsetsGeometry? padding;

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

  /// Only used when [child] or [builder] is provided
  /// If true, the child will be wrapped in a SingleChildScrollView
  final bool scrollable;

  const NomoRouteBody({
    this.child,
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
    this.floatingFooter,
  }) : assert(
          child != null ||
              slivers != null ||
              children != null ||
              builder != null ||
              sliverBuilder != null ||
              childrenBuilder != null,
          'Either child or builder must be provided',
        );

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    final _scrollController = scrollController ?? ScrollController();

    return DefaultScrollController(
      scrollController: _scrollController,
      child: switch (this) {
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
      },
    )
        .wrapIf(
          useScrollBar,
          (child) => Scrollbar(
            controller: _scrollController,
            radius: theme.scrollBarRadius,
            thickness: theme.scrollBarThickness,
            child: child,
          ),
        )
        .wrapIf(
          theme.backgroundColor != null,
          (child) => ColoredBox(color: theme.backgroundColor!, child: child),
        )
        .wrapIf(
          theme.background != null,
          (child) => Stack(
            children: [
              theme.background!,
              child,
            ],
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
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: theme.maxContentWidth ?? double.infinity,
        ),
        child: Stack(
          children: [
            CustomScrollView(
              controller: DefaultScrollController.of(context),
              slivers: [
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
                if (parent.footer != null)
                  FillRemainingFooter(
                    padding: verticalPadding,
                    child: parent.footer!,
                  )
                else
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
    return CustomScrollView(
      controller: DefaultScrollController.of(context),
      slivers: slivers,
    );

    final verticalPadding = theme.padding.vertical / 2;
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
                verticalPadding.vSpacing.toBox,
                for (final sliver in slivers)
                  SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal: theme.padding.horizontal / 2,
                    ),
                    sliver: sliver,
                  ),
                if (parent.footer != null)
                  FillRemainingFooter(
                    padding: verticalPadding,
                    child: parent.footer!,
                  )
                else
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
    if (parent.scrollable) {
      return Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: theme.maxContentWidth ?? double.infinity,
          ),
          padding: theme.padding,
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      controller: DefaultScrollController.of(context),
                      child: child,
                    ),
                  ),
                  if (parent.footer != null) parent.footer!,
                ],
              ),
              if (parent.floatingFooter != null) parent.floatingFooter!,
            ],
          ),
        ),
      );
    }

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: theme.maxContentWidth ?? double.infinity,
        ),
        child: Stack(
          children: [
            Padding(
              padding: theme.padding,
              child: Column(
                children: [
                  Expanded(
                    child: child,
                  ),
                  if (parent.footer != null) parent.footer!,
                ],
              ),
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
