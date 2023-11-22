// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/widgets.dart';

extension LayoutExtensionWidget on Widget {
  Widget wrapIf(bool condition, Widget Function(Widget) wrapper) {
    if (condition) {
      return wrapper(this);
    }

    return this;
  }

  Widget wrapIfElse(
    bool condition,
    Widget Function(Widget) wrapper, {
    required Widget Function(Widget) elseWrapper,
  }) {
    if (condition) {
      return wrapper(this);
    }

    return elseWrapper(this);
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

extension RowToColumn on Row {
  Flex toColumn(BuildContext context) {
    if (MediaQuery.of(context).size.width > 1200) {
      return Row(
        children: children,
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      );
    }
  }
}
