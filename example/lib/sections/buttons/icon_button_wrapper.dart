import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nomo_ui_kit/components/button/button_const.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';

class IconButtonWrapper extends StatelessWidget {
  const IconButtonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color(0xFF272626)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              NomoButton.icon(
                size: ButtonSize.small,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                size: ButtonSize.medium,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                size: ButtonSize.large,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.icon(
                size: ButtonSize.small,
                borderRadius: BorderRadius.circular(100.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                borderRadius: BorderRadius.circular(100.0),
                size: ButtonSize.medium,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                borderRadius: BorderRadius.circular(100.0),
                size: ButtonSize.large,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.icon(
                size: ButtonSize.small,
                borderRadius: BorderRadius.circular(8.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                size: ButtonSize.medium,
                borderRadius: BorderRadius.circular(8.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                size: ButtonSize.large,
                borderRadius: BorderRadius.circular(8.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.icon(
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 3.0,
                size: ButtonSize.small,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                size: ButtonSize.medium,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 3.0,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                size: ButtonSize.large,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(8.0),
                elevation: 3.0,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.icon(
                border: BorderSide.none,
                color: Colors.red,
                borderRadius: BorderRadius.circular(100.0),
                size: ButtonSize.small,
                elevation: 3.0,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                isEnabled: false,
                border: BorderSide.none,
                color: Colors.red,
                elevation: 3.0,
                borderRadius: BorderRadius.circular(100.0),
                size: ButtonSize.medium,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                elevation: 3.0,
                border: BorderSide.none,
                highlightColor: Colors.green,
                color: Colors.blue,
                borderRadius: BorderRadius.circular(100.0),
                size: ButtonSize.large,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.icon(
                size: ButtonSize.small,
                isLoading: true,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(100.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                isLoading: true,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(100.0),
                size: ButtonSize.medium,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
              const SizedBox(width: 16),
              NomoButton.icon(
                isLoading: true,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(100.0),
                size: ButtonSize.large,
                onPressed: () => Logger().i("Textbutton pressed"),
                icon: const Icon(Icons.download),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
