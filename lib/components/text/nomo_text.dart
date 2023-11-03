import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class NomoText extends StatelessWidget {
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
          "fontSizes must be a list of at least one value",
        ),
        assert(
          (fitHeight != null && fontSizes == null && maxLines == null) ||
              fitHeight == null,
          "Cant use FontSizes || maxLines with fitHeight",
        );

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
    TextStyle style = (this.style ?? context.typography.b1).copyWith(
      color: color,
      fontWeight: fontWeight,
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final maxWidth = constraints.maxWidth;
        final maxHeight = constraints.maxHeight;
        double fontSize = max(style.fontSize ?? 0, minFontSize);

        if (fitHeight != null) {
          if (constraints.maxHeight == double.infinity) {
            throw Exception("Cant use fitHeight with infinite height");
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
  var _style = style.copyWith(fontSize: maxHeight);

  final textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: _style,
    ),
    textDirection: TextDirection.ltr,
  )..layout(maxWidth: maxWidth);

  var lines = textPainter.computeLineMetrics();
  var totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);

  const decrement = -0.5;

  while (totalHeight > maxHeight) {
    lineHeight += decrement;
    _style = _style.copyWith(fontSize: lineHeight);
    textPainter.text = TextSpan(
      text: text,
      style: _style,
    );
    textPainter.layout(maxWidth: maxWidth);
    lines = textPainter.computeLineMetrics();
    totalHeight = lines.fold(0.0, (prev, line) => prev + line.height);
  }

  return (_style.fontSize!, lines.length);
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
