import 'package:flutter/widgets.dart';

sealed class NomoMenuItem {
  final String title;

  const NomoMenuItem({required this.title});
}

final class NomoMenuIconItem extends NomoMenuItem {
  final IconData icon;

  const NomoMenuIconItem({
    required String title,
    required this.icon,
  }) : super(title: title);
}

final class NomoMenuImageItem extends NomoMenuItem {
  final ImageProvider image;

  const NomoMenuImageItem({
    required String title,
    required this.image,
  }) : super(title: title);
}
