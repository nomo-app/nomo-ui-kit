import 'package:flutter/widgets.dart';

sealed class NomoMenuItem {
  final String title;
  final String path;

  const NomoMenuItem({required this.title, required this.path});

  @override
  int get hashCode => title.hashCode ^ path.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NomoMenuItem &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          path == other.path;
}

final class NomoMenuTextItem extends NomoMenuItem {
  const NomoMenuTextItem({
    required super.title,
    required super.path,
  });
}

final class NomoMenuIconItem extends NomoMenuItem {
  final IconData icon;

  const NomoMenuIconItem({
    required super.title,
    required super.path,
    required this.icon,
  });
}

final class NomoMenuImageItem extends NomoMenuItem {
  final ImageProvider image;

  const NomoMenuImageItem({
    required super.title,
    required super.path,
    required this.image,
  });
}
