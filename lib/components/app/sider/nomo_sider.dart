import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_sider.theme_data.g.dart';

@NomoComponentThemeData('sider')
class NomoSider extends StatelessWidget {
  const NomoSider({
    required this.child,
    super.key,
    this.backgroundColor,
    this.border,
    this.padding,
    this.width,
    this.footer,
    this.scrollPadding,
    this.header,
  });
  final Widget child;
  final Widget? header;
  final Widget? footer;

  @NomoColorField(primaryColor)
  final Color? backgroundColor;

  @NomoSizingField<EdgeInsetsGeometry>(EdgeInsets.all(16))
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(4.0)
  final double? scrollPadding;

  @NomoSizingField<double>(80)
  final double? width;

  @NomoColorField(
    Border(
      right: BorderSide(color: Colors.black12),
    ),
  )
  final Border? border;

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    final scrollController = ScrollController();
    return AnimatedContainer(
      duration: const Duration(milliseconds: 140),
      curve: Curves.fastOutSlowIn,
      width: theme.width,
      height: context.height,
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        border: theme.border,
      ),
      padding: theme.padding,
      child: Column(
        children: [
          if (header != null) header!,
          Expanded(
            child: Scrollbar(
              controller: scrollController,
              thickness: 8,
              child: SingleChildScrollView(
                controller: scrollController,
                child: child,
              ),
            ),
          ),
          if (footer != null) footer!,
        ],
      ),
    );
  }
}
