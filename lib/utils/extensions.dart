import 'dart:ui';

import 'package:flutter/foundation.dart';

extension NotifierUtil<T> on ValueNotifier<T> {
  void update(T Function(T val) updater) {
    value = updater(value);
  }
}

extension ColorExtension on Color {
  String toHexColor() {
    return '0x${value.toRadixString(16).padLeft(8, '0')}';
  }
}