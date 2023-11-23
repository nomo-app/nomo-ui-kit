import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/loading/shimmer/loading_shimmer.dart';

class LoadingContainer extends StatelessWidget {
  final Widget? child;
  final bool isLoading;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;
  final Color background;
  final BorderRadiusGeometry borderRadius;

  const LoadingContainer({
    this.isLoading = true,
    this.padding,
    this.child,
    this.height,
    this.width,
    this.background = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(8)),
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ShimmerLoading(
      isLoading: isLoading,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          color: background,
          borderRadius: borderRadius,
        ),
        child: child,
      ),
    );
  }
}
