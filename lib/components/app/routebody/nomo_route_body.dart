import 'package:flutter/material.dart';
import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_route_body.theme_data.g.dart';

///
/// A scrollable body for a route.
///
/// Either a [child] or a [builder] must be provided.
///
/// @param child The child widget to display in the body.
///
/// @param builder A builder function that returns a widget to display in the body. Provides the current route info.
///
/// @param scrollController A scroll controller to use for the body.
///
@NomoComponentThemeData('routeBodyTheme')
class NomoRouteBody extends StatelessWidget {
  final Widget Function(BuildContext context, NomoPage<dynamic> info)? builder;
  final Widget? child;
  final ScrollController? scrollController;

  @NomoSizingField(EdgeInsets.all(8))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(8.0)
  final double? scrollBarThickness;

  @NomoSizingField(Radius.circular(4))
  final Radius? scrollBarRadius;

  final bool scrollable;

  const NomoRouteBody({
    this.child,
    super.key,
    this.scrollController,
    this.padding,
    this.scrollBarThickness,
    this.scrollBarRadius,
    this.scrollable = true,
    this.builder,
  }) : assert(
          child != null || builder != null,
          'Either child or builder must be provided',
        );

  @override
  Widget build(BuildContext context) {
    final routeInfo = RouteInfoProvider.of(context).route;
    final controller = scrollController ?? ScrollController();
    final theme = getFromContext(context, this);
    final _child = child ?? builder!(context, routeInfo);
    if (!scrollable) {
      return Padding(
        padding: theme.padding,
        child: _child,
      );
    }
    return Scrollbar(
      controller: controller,
      thickness: theme.scrollBarThickness,
      radius: theme.scrollBarRadius,
      child: SingleChildScrollView(
        controller: controller,
        padding: theme.padding,
        child: _child,
      ),
    );
  }
}
