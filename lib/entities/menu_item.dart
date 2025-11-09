import 'package:flutter/widgets.dart';

@immutable
sealed class NomoMenuItem<T> {
  const NomoMenuItem({
    required this.title,
    required this.key,
    this.subtitle,
    this.trailling,
    this.leading,
    this.children,
  });
  final String title;
  final T key;
  final String? subtitle;
  final Widget? trailling;
  final Widget? leading;

  final List<NomoMenuItem<T>>? children;

  @override
  int get hashCode => title.hashCode ^ key.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NomoMenuItem &&
          runtimeType == other.runtimeType &&
          title == other.title &&
          key == other.key;
}

final class NomoMenuWidgetItem<T> extends NomoMenuItem<T> {
  const NomoMenuWidgetItem({
    required super.title,
    required super.key,
    required this.child,
    super.subtitle,
    super.trailling,
    super.leading,
    super.children,
  });

  final Widget child;
}

final class NomoMenuTextItem<T> extends NomoMenuItem<T> {
  const NomoMenuTextItem({
    required super.title,
    required super.key,
    super.subtitle,
    super.trailling,
    super.leading,
  });
}

final class NomoMenuIconItem<T> extends NomoMenuItem<T> {
  const NomoMenuIconItem({
    required super.title,
    required super.key,
    required this.icon,
    super.subtitle,
    super.trailling,
    super.leading,
    super.children,
  });
  final IconData icon;
}

final class NomoMenuImageItem<T> extends NomoMenuItem<T> {
  const NomoMenuImageItem({
    required super.title,
    required super.key,
    required this.imagePath,
    super.subtitle,
    super.trailling,
    super.leading,
    super.children,
    this.size,
  });
  final String imagePath;
  final double? size;
}
