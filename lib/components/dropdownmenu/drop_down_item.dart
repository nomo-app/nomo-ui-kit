import 'package:flutter/material.dart';

class NomoDropdownItem<T> {
  final T? value;
  final String displayText;

  const NomoDropdownItem({Key? key, this.value, required this.displayText})
      : super();
}
