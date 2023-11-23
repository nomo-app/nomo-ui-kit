import 'dart:math';

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

  double decreaseFontSize(double fontSize) {
    if (fontSizes != null) {
      return fontSizes!.firstWhere(
        (size) => size < fontSize,
        orElse: () => fontSize - decreaseBy,
      );
    }

    return fontSize - decreaseBy;
  }

  @override
  Widget build(BuildContext context) {
    var style = (this.style ?? NomoDefaultTextStyle.of(context)).copyWith(
      color: color ?? NomoTextTheme.maybeOf(context)?.color,
      fontWeight: fontWeight,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final maxHeight = constraints.maxHeight;
        double fontSize = max(style.fontSize ?? 0, minFontSize);

        if (fitHeight != null) {
          if (constraints.maxHeight == double.infinity) {
            throw Exception('Cant use fitHeight with infinite height');
          }
          final (size, lines) = findStyleForFitHeight(
            maxWidth: maxWidth,
            maxHeight: maxHeight,
            text: text,
            style: style,
          );
          style = style.copyWith(fontSize: size);
          return Text(
            text,
            style: style,
            maxLines: lines,
            overflow: overflow,
            textAlign: textAlign,
            textDirection: textDirection,
          );
        }

        style = style.copyWith(fontSize: fontSize);

        final textPainter = TextPainter(
          text: TextSpan(
            text: text,
            style: style,
          ),
          textDirection: textDirection ?? TextDirection.ltr,
          maxLines: maxLines,
        )..layout(maxWidth: maxWidth);

        var lines = textPainter.computeLineMetrics();
        var totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);

        while ((totalHeight > maxHeight || textPainter.didExceedMaxLines) &&
            fontSize > minFontSize) {
          fontSize = decreaseFontSize(fontSize);

          style = style.copyWith(fontSize: fontSize);
          textPainter.text = TextSpan(
            text: text,
            style: style,
          );
          textPainter.layout(maxWidth: maxWidth);
          lines = textPainter.computeLineMetrics();
          totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);
        }

        return Text(
          text,
          style: style,
          maxLines: maxLines,
          overflow: overflow,
          textAlign: textAlign,
          textDirection: textDirection,
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
    textPainter.text = TextSpan(
      text: text,
      style: style0,
    );
    textPainter.layout(maxWidth: maxWidth);
    lines = textPainter.computeLineMetrics();
    totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);
  }

  return (style0.fontSize!, lines.length);
}

Size calculateTextSize({required String text, required TextStyle? style}) {
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
