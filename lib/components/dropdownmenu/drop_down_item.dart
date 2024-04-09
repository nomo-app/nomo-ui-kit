class NomoDropdownItem<T> {
  const NomoDropdownItem({required this.displayText, required this.value})
      : super();
  final T value;
  final String displayText;
}
