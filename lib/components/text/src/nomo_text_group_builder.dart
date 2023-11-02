part of nomo_text;

/// A Flutter widget that provides an [NomoTextGroup] to its builder function.
class NomoTextGroupBuilder extends StatefulWidget {
  final Widget Function(BuildContext context, NomoTextGroup autoSizeGroup)
      builder;

  /// Creates an [NomoTextGroupBuilder] widget.
  const NomoTextGroupBuilder({Key? key, required this.builder})
      : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _NomoTextGroupBuilderState createState() => _NomoTextGroupBuilderState();
}

class _NomoTextGroupBuilderState extends State<NomoTextGroupBuilder> {
  final _group = NomoTextGroup();

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, _group);
  }
}
