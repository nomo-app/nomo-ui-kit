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
  final List<Widget> Function(BuildContext context, NomoPage<dynamic> route)? sliverBuilder;
  final List<Widget>? children;
  final List<Widget> Function(BuildContext context, NomoPage<dynamic> route)? childrenBuilder;

  final ScrollController? scrollController;

  @NomoSizingField(EdgeInsets.all(8))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(8.0)
  final double? scrollBarThickness;

  @NomoSizingField(Radius.circular(4))
  final Radius? scrollBarRadius;

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

    return Scrollbar(
      controller: _scrollController,
      radius: theme.scrollBarRadius,
      thickness: theme.scrollBarThickness,
      child: ColoredBox(
        color: context.colors.background,
        child: DefaultScrollController(
          scrollController: _scrollController,
          child: switch (this) {
            _ when child != null => _ChildBody(
                theme: theme,
                child: child!,
              ),
            _ when builder != null => Builder(
                builder: (context) => _ChildBody(
                  theme: theme,
                  child: builder!(context, route),
                ),
              ),
            _ when slivers != null => _SliverBody(
                theme: theme,
                slivers: slivers!,
              ),
            _ when sliverBuilder != null => Builder(
                builder: (context) => _SliverBody(
                  theme: theme,
                  slivers: sliverBuilder!(context, route),
                ),
              ),
            _ when children != null => _ChildrenBody(
                theme: theme,
                children: children!,
              ),
            _ => Builder(
                builder: (context) => _ChildrenBody(
                  theme: theme,
                  children: childrenBuilder!(context, route),
                ),
              ),
          },
        ),
      ),
    );
  }
}

class _ChildrenBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final List<Widget> children;

  const _ChildrenBody({
    required this.theme,
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: DefaultScrollController.of(context),
      slivers: [
        SliverPadding(
          padding: theme.padding,
          sliver: SliverList.builder(
            itemBuilder: (context, index) => children[index],
            itemCount: children.length,
          ),
        ),
      ],
    );
  }
}

class _SliverBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final List<Widget> slivers;

  const _SliverBody({
    required this.theme,
    required this.slivers,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      controller: DefaultScrollController.of(context),
      slivers: [
        (theme.padding.vertical / 2).vSpacing.toBox,
        for (final sliver in slivers)
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: theme.padding.horizontal / 2),
            sliver: sliver,
          ),
        (theme.padding.vertical / 2).vSpacing.toBox,
      ],
    );
  }
}

class _ChildBody extends StatelessWidget {
  final NomoRouteBodyThemeData theme;
  final Widget child;

  const _ChildBody({
    required this.theme,
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: theme.padding,
      child: child,
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
    final result = context.dependOnInheritedWidgetOfExactType<DefaultScrollController>();
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
