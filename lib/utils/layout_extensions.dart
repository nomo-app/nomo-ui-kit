
import 'package:flutter/widgets.dart';

extension LayoutExtensionWidget on Widget {
  Widget wrapIf(bool condition, Widget Function(Widget) wrapper) {
    if (condition) {
      return wrapper(this);
    }

    return this;
  }
}

extension LayoutExtensionSizing on num {
  SizedBox get spacing => SizedBox(
        width: toDouble(),
        height: toDouble(),
      );

  SizedBox get vSpacing => SizedBox(
        height: toDouble(),
      );

  SizedBox get hSpacing => SizedBox(
        width: toDouble(),
      );
}

extension DynamicArgumentExtension<T> on T {
  T? when(bool condition) {
    if (condition) {
      return this;
    }
    return null;
  }

  T whenElse(bool condition, T elseValue) {
    if (condition) {
      return this;
    }
    return elseValue;
  }
}
