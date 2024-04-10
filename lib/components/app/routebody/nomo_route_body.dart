import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_route_body.theme_data.g.dart';

@NomoComponentThemeData('routeBodyTheme')
class NomoRouteBody extends StatelessWidget {
  final Widget? child;
  final Widget Function(BuildContext context, NomoPage<dynamic> route)? builder;
  final List<Widget>? slivers;
  final List<Widget> Function(BuildContext context, NomoPage<dynamic> route)?
      sliverBuilder;
  final List<Widget>? children;
  final List<Widget> Function(BuildContext context, NomoPage<dynamic> route)?
      childrenBuilder;

  final ScrollController? scrollController;

  @NomoSizingField(EdgeInsets.all(8))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(8.0)
  final double? scrollBarThickness;

  @NomoSizingField(Radius.circular(4))
  final Radius? scrollBarRadius;

  final bool useScrollBar;

  final Widget? footer;

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
    this.scrollable = false,
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
    final route = RouteInfoProvider.of(context).route;
    final _scrollController = scrollController ?? ScrollController();

    return ColoredBox(
      color: context.colors.background1,
      child: DefaultScrollController(
        scrollController: _scrollController,
        child: switch (this) {
          _ when child != null => _ChildBody(
              theme: theme,
              scrollable: scrollable,
              footer: footer,
              child: child!,
            ),
          _ when builder != null => Builder(
              builder: (context) => _ChildBody(
                theme: theme,
                scrollable: scrollable,
                footer: footer,
                child: builder!(context, route),
              ),
            ),
          _ when slivers != null => _SliverBody(
              theme: theme,
              slivers: slivers!,
              footer: footer,
            ),
          _ when sliverBuilder != null => Builder(
              builder: (context) => _SliverBody(
                theme: theme,
                slivers: sliverBuilder!(context, route),
                footer: footer,
              ),
            ),
          _ when children != null => _ChildrenBody(
              theme: theme,
              footer: footer,
              children: children!,
            ),
          _ => Builder(
              builder: (context) => _ChildrenBody(
                theme: theme,
                footer: footer,
                children: childrenBuilder!(context, route),
              ),
            ),
        },
      ),
    ).wrapIf(
      useScrollBar,
      (child) => Scrollbar(
        controller: _scrollController,
        radius: theme.scrollBarRadius,
        thickness: theme.scrollBarThickness,
        child: child,
      ),
    );
  }
}

class _ChildrenBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final List<Widget> children;
  final Widget? footer;

  const _ChildrenBody({
    required this.theme,
    required this.children,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    final verticalPadding = theme.padding.vertical / 2;
    return CustomScrollView(
      controller: DefaultScrollController.of(context),
      slivers: [
        verticalPadding.vSpacing.toBox,
        SliverPadding(
          padding:
              EdgeInsets.symmetric(horizontal: theme.padding.horizontal / 2),
          sliver: SliverList.builder(
            itemBuilder: (context, index) => children[index],
            itemCount: children.length,
          ),
        ),
        if (footer != null)
          FillRemainingFooter(padding: verticalPadding, child: footer!)
        else
          verticalPadding.vSpacing.toBox,
      ],
    );
  }
}

class _SliverBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final List<Widget> slivers;
  final Widget? footer;

  const _SliverBody({
    required this.theme,
    required this.slivers,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    final verticalPadding = theme.padding.vertical / 2;
    return CustomScrollView(
      controller: DefaultScrollController.of(context),
      slivers: [
        verticalPadding.vSpacing.toBox,
        for (final sliver in slivers)
          SliverPadding(
            padding:
                EdgeInsets.symmetric(horizontal: theme.padding.horizontal / 2),
            sliver: sliver,
          ),
        if (footer != null)
          FillRemainingFooter(
            padding: verticalPadding,
            child: footer!,
          )
        else
          verticalPadding.vSpacing.toBox,
      ],
    );
  }
}

class _ChildBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final bool scrollable;
  final Widget? footer;
  final Widget child;

  const _ChildBody({
    required this.theme,
    required this.child,
    required this.scrollable,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    if (scrollable) {
      return Padding(
        padding: theme.padding,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                controller: DefaultScrollController.of(context),
                child: child,
              ),
            ),
            if (footer != null) footer!,
          ],
        ),
      );
    }

    return Padding(
      padding: theme.padding,
      child: Column(
        children: [
          Expanded(
            child: child,
          ),
          if (footer != null) footer!,
        ],
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
