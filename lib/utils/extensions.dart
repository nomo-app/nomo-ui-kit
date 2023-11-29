import 'package:flutter/foundation.dart';

extension NotifierUtil<T> on ValueNotifier<T> {
  void update(T Function(T val) updater) {
    value = updater(value);
  }
}
