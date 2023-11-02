import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/button/button_const.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/components/dialog/dialog_const.dart';

class NomoDialog extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final List<Widget> content;
  final List<Widget> actions;
  final BorderSide? border;
  final double? elevation;
  final double? width;
  final double? height;
  final bool? showCloseButton;
  final NomoButton? closeButton;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? closeButtonColor;
  final Color? closeButtonIconColor;

  const NomoDialog({
    super.key,
    required this.title,
    required this.actions,
    required this.content,
    this.showCloseButton = true,
    this.border = DialogConst.border,
    this.closeButton,
    this.elevation = DialogConst.elevation,
    this.borderRadius = DialogConst.borderRadius,
    this.titleStyle = DialogConst.titleStyle,
    this.padding = DialogConst.padding,
    this.closeButtonColor = DialogConst.closeButtonColor,
    this.closeButtonIconColor = DialogConst.closeButtonIconColor,
    this.width,
    this.height,
    this.backgroundColor = const Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          side: border!,
          borderRadius: borderRadius!,
        ),
        elevation: elevation!,
        color: backgroundColor,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: height ?? DialogConst.height,
            maxWidth: width ?? DialogConst.width,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              if (showCloseButton!)
                Positioned(
                  top: 0,
                  right: 0,
                  child: closeButton == null
                      ? NomoButton.icon(
                          padding: const EdgeInsets.all(0),
                          color: closeButtonColor!,
                          elevation: 0,
                          size: ButtonSize.small,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(100.0),
                          ),
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.close,
                            color: closeButtonIconColor,
                          ),
                        )
                      : closeButton!,
                ),
              Positioned(
                top: 30,
                child: Text(
                  title,
                  style: titleStyle!,
                ),
              ),
              Positioned(
                top: 50,
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: padding!,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: content,
                  ),
                ),
              ),
              Positioned(
                left: 3,
                bottom: 3,
                right: 3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: actions,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
