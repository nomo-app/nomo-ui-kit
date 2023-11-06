import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_scaffold.g.dart';

@NomoComponentThemeData('scaffoldTheme')
class NomoScaffold extends StatelessWidget {
  final Widget child;
  final PreferredSizeWidget? appBar;
  final Widget? nestedAppBar;
  final Widget? bottomBar;
  final Widget? sider;
  final Widget? bottomSheet;

  @NomoSizingField(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoSizingField(false)
  final bool? showBottomBar;

  @NomoSizingField(true)
  final bool? showSider;

  const NomoScaffold({
    super.key,
    required this.child,
    this.appBar,
    this.bottomBar,
    this.sider,
    this.bottomSheet,
    this.padding,
    this.backgroundColor,
    this.showBottomBar,
    this.showSider,
    this.nestedAppBar,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);

    final body = SafeArea(
      child: Row(
        children: [
          if (sider != null && theme.showSider) sider!,
          Expanded(
            child: Column(
              children: [
                if (nestedAppBar != null) nestedAppBar!,
                Expanded(
                  child: Padding(
                    padding: theme.padding,
                    child: child,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final bottomBar = theme.showBottomBar ? this.bottomBar : null;

    return Scaffold(
      body: body,
      appBar: appBar,
      bottomNavigationBar: bottomBar,
      bottomSheet: bottomSheet,
      backgroundColor: theme.backgroundColor,
    );
  }
}
