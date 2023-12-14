import 'package:nomo_router/nomo_router.dart';
import 'package:nomo_ui_kit/entities/menu_item.dart';

extension MenuUtilList on Iterable<MenuRouteInfoMixin> {
  List<NomoMenuItem> get toMenuItems {
    return map((route) => route.toMenuItem).toList();
  }
}

extension MenuUtil on MenuRouteInfoMixin {
  NomoMenuItem get toMenuItem {
    if (icon != null) {
      return NomoMenuIconItem(
        title: title,
        icon: icon!,
        path: name,
      );
    }
    if (image != null) {
      return NomoMenuImageItem(
        title: title,
        image: image!,
        path: name,
      );
    }
    return NomoMenuTextItem(
      title: title,
      path: name,
    );
  }
}
