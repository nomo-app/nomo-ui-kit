
class NomoDropdownItem<T> {

  const NomoDropdownItem({required this.displayText, this.value})
      : super();
  final T? value;
  final String displayText;
}
