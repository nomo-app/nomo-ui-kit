import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NomoForm extends InheritedWidget {
  final NomoFormValues values;
  final NomoFormValidator? validator;

  const NomoForm({
    required super.child,
    required this.values,
    this.validator,
    super.key,
  });

  static NomoForm? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NomoForm>();
  }

  @override
  bool updateShouldNotify(NomoForm oldWidget) {
    return false;
  }
}

typedef JSON = Map<String, dynamic>;

class NomoFormValues extends ChangeNotifier {
  final JSON value;
  final void Function(JSON value)? onChanged;

  final Map<String, ValueNotifier<dynamic>> _valueNotifiers = {};

  NomoFormValues({
    this.onChanged,
  }) : value = {};

  void updateField(String key, dynamic fieldValue) {
    value[key] = fieldValue;
    onChanged?.call(value);
    notifyListeners();
  }

  void setValueNotifierForField(
    String key,
    ValueNotifier<dynamic> valueNotifier,
  ) {
    _valueNotifiers[key] = valueNotifier;
  }

  void setValueForField(String key, dynamic fieldValue) {
    final valueNotifer = _valueNotifiers[key];
    if (valueNotifer == null) return;

    /// Always has listener if not disposed
    if (valueNotifer.hasListeners == false) return;
    valueNotifer.value = fieldValue;
  }
}

class NomoFormValidator extends ChangeNotifier {
  final Map<String, bool> values;

  NomoFormValidator() : values = {};

  void validate() {
    notifyListeners();
  }

  void addField(String key) {
    values.putIfAbsent(
      key,
      () => false,
    );
  }

  void validateField(String key, bool valid) {
    values[key] = valid;
  }

  bool get isValid =>
      !values.values.any((valid) => !valid) && values.isNotEmpty;
}
