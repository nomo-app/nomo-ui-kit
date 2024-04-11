import 'package:nomo_ui_kit/entities/menu_item.dart';

extension MenuUtilList on Iterable<MenuRouteInfoMixin> {
  List<NomoMenuItem<String>> get toMenuItems {
    return map((route) => route.toMenuItem).toList();
  }
}

extension MenuUtil on MenuRouteInfoMixin {
  NomoMenuItem<String> get toMenuItem {
    if (icon != null) {
      return NomoMenuIconItem(
        title: title,
        icon: icon!,
        key: path,
      );
    }
    if (imagePath != null) {
      return NomoMenuImageItem(
        title: title,
        imagePath: imagePath!,
        key: path,
      );
    }
    return NomoMenuTextItem(
      title: title,
      key: path,
    );
  }
}
