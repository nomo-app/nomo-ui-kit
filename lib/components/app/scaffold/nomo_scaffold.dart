import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/app/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

part 'nomo_scaffold.theme_data.g.dart';

@NomoComponentThemeData('scaffold')
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
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.backgroundImage,
    this.borderRadius,
  });
  final Widget child;
  final NomoAppBar? appBar;
  final Widget? nestedAppBar;
  final Widget? bottomBar;
  final Widget? sider;
  final Widget? bottomSheet;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final DecorationImage? backgroundImage;
  final BorderRadiusGeometry? borderRadius;

  @NomoSizingField<EdgeInsetsGeometry>(EdgeInsets.zero)
  final EdgeInsetsGeometry? padding;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoSizingField(false)
  final bool? showBottomBar;

  @NomoSizingField(true)
  final bool? showSider;

  NomoScaffold copyWith({
    NomoAppBar? appBar,
    BorderRadiusGeometry? borderRadius,
  }) {
    return NomoScaffold(
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      bottomBar: bottomBar,
      bottomSheet: bottomSheet,
      drawer: drawer,
      endDrawer: endDrawer,
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      nestedAppBar: nestedAppBar,
      padding: padding,
      showBottomBar: showBottomBar,
      showSider: showSider,
      sider: sider,
      appBar: appBar ?? this.appBar,
      key: key,
      borderRadius: borderRadius ?? this.borderRadius,
      child: child,
    );
  }

  static ScaffoldState of(BuildContext context) {
    final result = context
        .findAncestorStateOfType<_NomoScaffoldState>()!
        .scaffoldKey
        .currentState!;

    return result;
  }

  static ScaffoldState? maybeOf(BuildContext context) {
    final result = context
        .findAncestorStateOfType<_NomoScaffoldState>()
        ?.scaffoldKey
        .currentState;

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
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      return MediaQuery(
                        data: MediaQuery.of(context).copyWith(
                          size: constraints.biggest,
                        ),
                        child: widget.child,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );

    final bottomBar = theme.showBottomBar ? widget.bottomBar : null;

    return Scaffold(
      floatingActionButtonLocation: widget.floatingActionButtonLocation,
      key: scaffoldKey,
      body: ColoredBox(
        color: context.colors.surface,
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: widget.backgroundImage,
              color: theme.backgroundColor,
            ),
            child: body,
          ),
        ),
      ),
      appBar: widget.appBar?.asPreferedSizeWidget(context),
      bottomNavigationBar: bottomBar,
      bottomSheet: widget.bottomSheet,
      backgroundColor: theme.backgroundColor,
      drawer: widget.drawer,
      endDrawer: widget.endDrawer,
      floatingActionButton: widget.floatingActionButton,
    ).wrapIf(
      widget.borderRadius != null,
      (p0) {
        return ClipRRect(
          borderRadius: widget.borderRadius!,
          child: p0,
        );
      },
    );
  }
}
