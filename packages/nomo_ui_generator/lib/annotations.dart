class NomoComponentThemeData {
  final String themeName;

  const NomoComponentThemeData(this.themeName);
}

class NomoColorField<T> {
  final T value;

  const NomoColorField(this.value);
}

class NomoSizingField<T> {
  final T value;

  const NomoSizingField(this.value);
}

class NomoConstant<T extends Object> {
  final T value;

  const NomoConstant(this.value);
}

class NomoThemeUtils {
  final String coreType;

  const NomoThemeUtils(this.coreType);
}

class StaticFieldsList {
  const StaticFieldsList();
}
