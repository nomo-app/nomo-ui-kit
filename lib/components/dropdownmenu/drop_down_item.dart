import 'package:flutter/widgets.dart';

sealed class NomoDropdownItem<T> {
  const NomoDropdownItem({required this.value}) : super();
  final T value;
}

final class NomoDropDownItemString<T> extends NomoDropdownItem<T> {
  final String title;

  const NomoDropDownItemString({
    required super.value,
    required this.title,
  });
}

final class NomoDropdownItemWidget<T> extends NomoDropdownItem<T> {
  final Widget widget;

  const NomoDropdownItemWidget({
    required super.value,
    required this.widget,
  });
}
