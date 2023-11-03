import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nomo_ui_kit/components/button/button_const.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class TextButtonWrapper extends StatelessWidget {
  const TextButtonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
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
              NomoButton.text(
                elevation: 0.0,
                border: const BorderSide(color: Color(0xFF272626)),
                size: ButtonSize.small,
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                size: ButtonSize.medium,
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                color: Colors.red,
                textStyle: context.typography.h1.copyWith(
                  color: Colors.black,
                ),
                size: ButtonSize.large,
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.text(
                size: ButtonSize.small,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                size: ButtonSize.medium,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                size: ButtonSize.large,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.text(
                size: ButtonSize.small,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                size: ButtonSize.medium,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                size: ButtonSize.large,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.text(
                size: ButtonSize.small,
                leading: const Icon(Icons.search),
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                size: ButtonSize.medium,
                // leading: const Icon(Icons.search),
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
                trailing: const Icon(Icons.search),
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                size: ButtonSize.large,
                leading: const Icon(Icons.search),
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search for something good",
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.text(
                color: Colors.red,
                splashColor: Colors.green,
                textStyle: const TextStyle(color: Colors.white, fontSize: 16),
                size: ButtonSize.small,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                isEnabled: false,
                size: ButtonSize.medium,
                color: Colors.green,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                highlightColor: Colors.green,
                color: Colors.blue,
                size: ButtonSize.large,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              NomoButton.text(
                isLoading: true,
                size: ButtonSize.small,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                isLoading: true,
                size: ButtonSize.medium,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
              const SizedBox(width: 16),
              NomoButton.text(
                isLoading: true,
                size: ButtonSize.large,
                elevation: 3.0,
                border: BorderSide.none,
                borderRadius: BorderRadius.circular(12.0),
                onPressed: () => Logger().i("Textbutton pressed"),
                text: "Search",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
