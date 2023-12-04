import 'package:flutter/widgets.dart';

@immutable
sealed class NomoMenuItem {
  const NomoMenuItem({required this.title, required this.path});
  final String title;
  final String path;

  @override
  int get hashCode => title.hashCode ^ path.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NomoMenuItem && runtimeType == other.runtimeType && title == other.title && path == other.path;
}

final class NomoMenuTextItem extends NomoMenuItem {
  const NomoMenuTextItem({
    required super.title,
    required super.path,
  });
}

final class NomoMenuIconItem extends NomoMenuItem {
  const NomoMenuIconItem({
    required super.title,
    required super.path,
    required this.icon,
  });
  final IconData icon;
}

final class NomoMenuImageItem extends NomoMenuItem {
  const NomoMenuImageItem({
    required super.title,
    required super.path,
    required this.image,
  });
  final ImageProvider image;
}
