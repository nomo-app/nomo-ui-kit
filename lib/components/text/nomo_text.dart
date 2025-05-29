import 'package:flutter/widgets.dart';

class NomoText extends StatefulWidget {
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
  State<NomoText> createState() => _NomoTextState();
}

class _NomoTextState extends State<NomoText> {
  double? _initialFontSize;

  @override
  void initState() {
    super.initState();
    _initialFontSize = widget.fontSize ?? widget.style?.fontSize;
  }

  double decreaseFontSize(double fontSize) {
    if (widget.fontSizes != null) {
      return widget.fontSizes!.firstWhere(
        (size) => size < fontSize,
        orElse: () => fontSize - widget.decreaseBy,
      );
    }

    return fontSize - widget.decreaseBy;
  }

  double increaseFontSize(double fontSize) {
    if (widget.fontSizes != null) {
      return widget.fontSizes!.firstWhere(
        (size) => size > fontSize,
        orElse: () => fontSize + widget.decreaseBy,
      );
    }

    return fontSize + widget.decreaseBy;
  }

  @override
  Widget build(BuildContext context) {
    final translator = NomoTextTranslator.of(context);
    var effectiveText = widget.translate && translator != null
        ? translator(widget.text)
        : widget.text;

    final textColor = widget.useInheritedTheme
        ? widget.color ??
            NomoTextTheme.maybeOf(context)?.color ??
            widget.style?.color
        : widget.color ??
            widget.style?.color ??
            NomoTextTheme.maybeOf(context)?.color;

    var style = (widget.style ?? NomoDefaultTextStyle.of(context)).copyWith(
      color: widget.opacity == null
          ? textColor
          : textColor?.withValues(alpha: widget.opacity!),
      fontWeight: widget.fontWeight,
      fontSize: widget.fontSize ?? _initialFontSize,
    );

    if (!widget.fit) {
      return Text(
        effectiveText,
        style: style,
        maxLines: widget.maxLines,
        overflow: widget.overflow,
        textAlign: widget.textAlign,
        textDirection: widget.textDirection,
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final maxHeight = constraints.maxHeight;
        var fontSize = _initialFontSize ?? widget.minFontSize;
        final defaultTextStyle = DefaultTextStyle.of(context);
        style = defaultTextStyle.style.merge(style);

        if (widget.fitHeight != null) {
          if (constraints.maxHeight == double.infinity) {
            throw Exception('Cant use fitHeight with infinite height');
          }
          final (size, lines) = findStyleForFitHeight(
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            text: effectiveText,
            style: style,
          );
          style = style.copyWith(fontSize: size);
          return Text(
            effectiveText,
            style: style,
            maxLines: lines,
            overflow: widget.overflow,
            textAlign: widget.textAlign,
            textDirection: widget.textDirection,
          );
        }

        style = style.copyWith(fontSize: fontSize);

        final textPainter = TextPainter(
          text: TextSpan(
            text: effectiveText,
            style: style,
          ),
          textDirection: widget.textDirection ?? TextDirection.ltr,
          maxLines: widget.maxLines,
        )..layout(maxWidth: maxWidth);

        var lines = textPainter.computeLineMetrics();
        var totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);

        while ((totalHeight > maxHeight || textPainter.didExceedMaxLines) &&
            fontSize > widget.minFontSize) {
          fontSize = decreaseFontSize(fontSize);

          style = style.copyWith(fontSize: fontSize);

          textPainter
            ..text = TextSpan(
              text: effectiveText,
              style: style,
            )
            ..layout(maxWidth: maxWidth);
          lines = textPainter.computeLineMetrics();
          totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);
        }

        while (totalHeight <= maxHeight &&
            textPainter.didExceedMaxLines &&
            fontSize < (_initialFontSize ?? widget.minFontSize)) {
          fontSize = increaseFontSize(fontSize);

          style = style.copyWith(fontSize: fontSize);

          textPainter
            ..text = TextSpan(
              text: effectiveText,
              style: style,
            )
            ..layout(maxWidth: maxWidth);
          lines = textPainter.computeLineMetrics();
          totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);
          if (totalHeight > maxHeight || textPainter.didExceedMaxLines) {
            fontSize = decreaseFontSize(fontSize);
            break;
          }
        }

        final initalLength = effectiveText.length;
        if (widget.textShortener != null) {
          for (var i = 1;
              textPainter.didExceedMaxLines || totalHeight > maxHeight;
              i++) {
            effectiveText =
                widget.textShortener!(effectiveText, initalLength - i);
            textPainter
              ..text = TextSpan(
                text: effectiveText,
                style: style,
              )
              ..layout(maxWidth: maxWidth);
            lines = textPainter.computeLineMetrics();
            totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);
          }
        }

        return Text(
          effectiveText,
          style: style,
          maxLines: widget.maxLines,
          overflow: widget.overflow,
          textAlign: widget.textAlign,
          textDirection: widget.textDirection,
        );
      },
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
