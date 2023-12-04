import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_scaffold.theme_data.g.dart';

@NomoComponentThemeData('scaffoldTheme')
class NomoScaffold extends StatefulWidget {
  const NomoScaffold({
    required this.child,
    super.key,
    this.appBar,
    this.bottomBar,
    this.sider,
    this.bottomSheet,
    this.padding,
    this.backgroundColor,
    this.showBottomBar,
    this.showSider,
    this.drawer,
    this.nestedAppBar,
    this.endDrawer,
  });
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? nestedAppBar;
  final Widget? bottomBar;
  final Widget? sider;
  final Widget? bottomSheet;
  final Widget? drawer;
  final Widget? endDrawer;

  @NomoSizingField(EdgeInsets.zero)
  final EdgeInsetsGeometry? padding;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoSizingField(false)
  final bool? showBottomBar;

  @NomoSizingField(true)
  final bool? showSider;

  static ScaffoldState of(BuildContext context) {
    final result = context.findAncestorStateOfType<_NomoScaffoldState>()!.scaffoldKey.currentState!;

    return result;
  }

  static ScaffoldState? maybeOf(BuildContext context) {
    final result = context.findAncestorStateOfType<_NomoScaffoldState>()?.scaffoldKey.currentState;

    return result;
  }

  @override
  State<NomoScaffold> createState() => _NomoScaffoldState();
}

class _NomoScaffoldState extends State<NomoScaffold> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, widget);

    final body = Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (widget.sider != null && theme.showSider) widget.sider!,
        Expanded(
          child: Column(
            children: [
              if (widget.nestedAppBar != null) widget.nestedAppBar!,
              Expanded(
                child: Padding(
                  padding: theme.padding,
                  child: widget.child,
                ),
              ),
            ],
          ),
        ),
      ],
    );

    final bottomBar = theme.showBottomBar ? widget.bottomBar : null;

    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        body: body,
        appBar: widget.appBar,
        bottomNavigationBar: bottomBar,
        bottomSheet: widget.bottomSheet,
        backgroundColor: theme.backgroundColor,
        drawer: widget.drawer,
        endDrawer: widget.endDrawer,
      ),
    );
  }
}
