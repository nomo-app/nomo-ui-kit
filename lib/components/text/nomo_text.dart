import 'package:flutter/widgets.dart';

class NomoText extends StatelessWidget {
  const NomoText(
    this.text, {
    super.key,
    this.style,
    this.textAlign,
    this.textDirection,
    this.color,
    this.fontWeight,
    this.overflow,
    this.maxLines,
    this.fitHeight,
    this.fontSizes,
    this.decreaseBy = 1,
    this.minFontSize = 6,
    this.opacity,
    this.translate = true,
    this.fontSize,
    this.fit = false,
    this.useInheritedTheme = false,
    this.textShortener,
  })  : assert(
          fontSizes == null || fontSizes.length > 0,
          'fontSizes must be a list of at least one value',
        ),
        assert(
          (fitHeight != null && fontSizes == null && maxLines == null) ||
              fitHeight == null,
          'Cant use FontSizes || maxLines with fitHeight',
        );
  final String text;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextDirection? textDirection;
  final TextOverflow? overflow;
  final Color? color;
  final FontWeight? fontWeight;
  final int? maxLines;
  final bool? fitHeight;
  final List<double>? fontSizes;
  final double decreaseBy;
  final double minFontSize;
  final double? opacity;
  final double? fontSize;
  final bool fit;
  final bool useInheritedTheme;
  final String Function(String text, int length)? textShortener;

  /// If true will look for the NomoTextTranslator InheritedWidget for translating the text
  final bool translate;

  @override
  Widget build(BuildContext context) {
    final translator = NomoTextTranslator.of(context);
    var effectiveText =
        translate && translator != null ? translator(text) : text;

    final textColor = useInheritedTheme
        ? color ?? NomoTextTheme.maybeOf(context)?.color ?? style?.color
        : color ?? style?.color ?? NomoTextTheme.maybeOf(context)?.color;

    var _style = (style ?? NomoDefaultTextStyle.of(context)).copyWith(
      color:
          opacity == null ? textColor : textColor?.withValues(alpha: opacity),
      fontWeight: fontWeight,
      fontSize: fontSize,
    );

    // if (!widget.fit) {
    return Text(
      effectiveText,
      style: _style,
      maxLines: maxLines,
      overflow: overflow,
      textAlign: textAlign,
      textDirection: textDirection,
    );
  }
}

(double, int) findStyleForFitHeight({
  required double maxWidth,
  required double maxHeight,
  required String text,
  required TextStyle style,
}) {
  var lineHeight = maxHeight;
  var style0 = style.copyWith(fontSize: maxHeight);

  final textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: style0,
    ),
    textDirection: TextDirection.ltr,
  )..layout(maxWidth: maxWidth);

  var lines = textPainter.computeLineMetrics();
  var totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);

  const decrement = -0.5;

  while (totalHeight > maxHeight) {
    lineHeight += decrement;
    style0 = style0.copyWith(fontSize: lineHeight);
    textPainter
      ..text = TextSpan(
        text: text,
        style: style0,
      )
      ..layout(maxWidth: maxWidth);
    lines = textPainter.computeLineMetrics();
    totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);
  }

  return (style0.fontSize!, lines.length);
}

Size calculateTextSize({
  required String text,
  required TextStyle? style,
  required BuildContext context,
  double textScaleFactor = 1.0,
}) {
  final defaultTextStyle = DefaultTextStyle.of(context);
  style = defaultTextStyle.style.merge(style);

  final textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: style,
    ),
    textDirection: TextDirection.ltr,
  )..layout();

  return textPainter.size;
}

class NomoDefaultTextStyle extends InheritedWidget {
  final TextStyle style;

  const NomoDefaultTextStyle({
    required this.style,
    required super.child,
    super.key,
  });

  static TextStyle of(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoDefaultTextStyle>();
    assert(result != null, 'No NomoDefaultTextStyle found in context');
    return result!.style;
  }

  static TextStyle? maybeOf(BuildContext context) {
    final result =
        context.dependOnInheritedWidgetOfExactType<NomoDefaultTextStyle>();
    return result?.style;
  }

  @override
  bool updateShouldNotify(NomoDefaultTextStyle oldWidget) {
    return true;
  }
}

class NomoTextTheme extends InheritedWidget {
  final Color color;

  const NomoTextTheme({
    required this.color,
    required super.child,
    super.key,
  });

  static NomoTextTheme? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<NomoTextTheme>();
  }

  @override
  bool updateShouldNotify(NomoTextTheme oldWidget) {
    return true;
  }
}

class NomoTextTranslator extends InheritedWidget {
  const NomoTextTranslator({
    required super.child,
    required this.translator,
    super.key,
  });

  final String Function(String text) translator;

  static String Function(String text)? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<NomoTextTranslator>()
        ?.translator;
  }

  @override
  bool updateShouldNotify(NomoTextTranslator oldWidget) {
    return false;
  }
}
