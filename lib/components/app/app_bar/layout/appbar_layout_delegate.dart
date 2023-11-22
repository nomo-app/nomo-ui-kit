import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app/app_bar/layout/appbar_layout_renderbox.dart';

enum AppBarItem {
  title,
  actions,
  backButton,
}

class AppBarLayoutDelegate
    extends SlottedMultiChildRenderObjectWidget<AppBarItem, RenderBox> {
  AppBarLayoutDelegate({
    required this.children,
  }) : super(key: ValueKey(children.hashCode));
  final Map<AppBarItem, Widget> children;

  @override
  Iterable<AppBarItem> get slots => children.keys;

  @override
  Widget? childForSlot(AppBarItem slot) {
    return children[slot];
  }

  @override
  SlottedContainerRenderObjectMixin<AppBarItem, RenderBox> createRenderObject(
    BuildContext context,
  ) {
    return AppBarLayoutRenderBox(
      items: children.keys.toList(),
    );
  }

  @override
  void updateRenderObject(
    BuildContext context,
    SlottedContainerRenderObjectMixin<AppBarItem, RenderBox> renderObject,
  ) {
    renderObject as AppBarLayoutRenderBox;
  }
}
