import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class NomoModalSheet extends StatelessWidget {
  final BuildContext context;
  final List<WoltModalSheetPage> pages;
  final ValueNotifier<int>? pageIndexNotifier;
  final Widget Function(Widget)? decorator;
  final bool? useSafeArea;
  final bool? barrierDismissible;
  final bool? enableDrag;
  final bool? showDragHandle;
  final RouteSettings? routeSettings;
  final Duration? transitionDuration;
  final void Function()? onModalDismissedWithBarrierTap;
  final void Function()? onModalDismissedWithDrag;
  final AnimationController? transitionAnimationController;
  final AnimatedWidget? bottomSheetTransitionAnimation;
  final AnimatedWidget? dialogTransitionAnimation;
  final double? minDialogWidth;
  final double? maxDialogWidth;
  final double? minPageHeight;
  final double? maxPageHeight;
  final Color? modalBarrierColor;

  const NomoModalSheet({
    Key? key,
    required this.context,
    required this.pages,
    this.pageIndexNotifier,
    this.decorator,
    this.useSafeArea,
    this.barrierDismissible,
    this.enableDrag,
    this.showDragHandle,
    this.routeSettings,
    this.transitionDuration,
    this.onModalDismissedWithBarrierTap,
    this.onModalDismissedWithDrag,
    this.transitionAnimationController,
    this.bottomSheetTransitionAnimation,
    this.dialogTransitionAnimation,
    this.minDialogWidth = 400,
    this.maxDialogWidth = 560,
    this.minPageHeight = 0.0,
    this.maxPageHeight = 0.9,
    this.modalBarrierColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
    //  WoltModalSheet.show(
    //   modalTypeBuilder: (context) {
    //               final size = MediaQuery.of(context).size.width;
    //               if (size < 800.0) {
    //                 return WoltModalType.bottomSheet;
    //               } else {
    //                 return WoltModalType.dialog;
    //               }
    //             },
    //   pageIndexNotifier: pageIndexNotifier,
    //   decorator: decorator,
    //   useSafeArea: useSafeArea,
    //   barrierDismissible: barrierDismissible,
    //   enableDrag: enableDrag,
    //   showDragHandle: showDragHandle,
    //   routeSettings: routeSettings,
    //   transitionDuration: transitionDuration,
    //   onModalDismissedWithBarrierTap: onModalDismissedWithBarrierTap,
    //   onModalDismissedWithDrag: onModalDismissedWithDrag,
    //   transitionAnimationController: transitionAnimationController,
    //   bottomSheetTransitionAnimation: bottomSheetTransitionAnimation,
    //   dialogTransitionAnimation: dialogTransitionAnimation,
    //   minDialogWidth: minDialogWidth,
    //   maxDialogWidth: maxDialogWidth,
    //   minPageHeight: minPageHeight,
    //   maxPageHeight: maxPageHeight,
    //   modalBarrierColor: modalBarrierColor,
    //   context: context,
    //   pageListBuilder: (controller) => pages,
    // );
  }
}
