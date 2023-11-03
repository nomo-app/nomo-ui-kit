import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NomoText(
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        'Hello World',
      ),
    );
  }
}
