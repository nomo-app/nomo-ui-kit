import 'package:flutter/material.dart';
import 'package:nomo_ui_generator/annotations.dart';
import 'package:nomo_ui_kit/components/elevatedBox/elevated_box.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

part 'nomo_card.theme_data.g.dart';

@NomoComponentThemeData('card')
class NomoCard extends StatelessWidget {
  final Widget child;

  @NomoSizingField(1.0)
  final double elevation;

  @NomoSizingField<Offset>(Offset.zero)
  final Offset? offset;

  @NomoColorField<Color>(Color(0x33000000))
  final Color? shadowColor;

  @NomoColorField<BoxBorder?>(null)
  final BoxBorder? border;

  @NomoSizingField<BorderRadiusGeometry>(BorderRadius.zero)
  final BorderRadiusGeometry? borderRadius;

  @NomoColorField(Colors.white)
  final Color? backgroundColor;

  @NomoSizingField(EdgeInsets.zero)
  final EdgeInsetsGeometry? padding;

  @NomoSizingField(EdgeInsets.zero)
  final EdgeInsetsGeometry? margin;

  const NomoCard({
    required this.child,
    super.key,
    this.elevation = 1,
    this.offset,
    this.shadowColor,
    this.border,
    this.borderRadius,
    this.backgroundColor,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    final theme = getFromContext(context, this);
    return Padding(
      padding: theme.margin,
      child: ElevatedBox(
        border: theme.border,
        offset: theme.offset,
        elevation: theme.elevation,
        shadowColor: theme.shadowColor,
        decoration: BoxDecoration(
          borderRadius: theme.borderRadius,
          color: theme.backgroundColor,
        ),
        child: Padding(
          padding: theme.padding,
          child: child,
        ),
      ),
    );
  }
}
