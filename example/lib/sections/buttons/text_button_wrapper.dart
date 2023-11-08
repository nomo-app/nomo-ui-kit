import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/button/button_const.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class TextButtonWrapper extends StatelessWidget {
  const TextButtonWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 12,
          ),
          NomoText(
            "Nomo Button Collection",
            style: context.typography.h3,
            fontWeight: FontWeight.bold,
            minFontSize: 28,
          ),
          const SizedBox(
            height: 12,
          ),
          NomoText(
            "Versatile buttons that can be used in any situation.",
            style: context.typography.b2,
          ),
          const SizedBox(
            height: 12,
          ),
          NomoText(
            "Common Button Types",
            style: context.typography.h3,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 12,
          ),
          NomoOutlineContainer(
            width: 600,
            border: Border.all(color: context.colors.primary),
            background: context.colors.background,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NomoText(
                      "Nomo Text Button",
                      style: context.typography.h2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    NomoButton.text(
                      onPressed: () {},
                      text: "Text Button",
                    ),
                  ],
                ),
                const SizedBox(
                  width: 12,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NomoText(
                      "Nomo Text Button",
                      style: context.typography.h2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    NomoButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          NomoText(
            "There are 3 pre defined sizes for buttons:",
            style: context.theme.typographyTheme.b2,
          ),
          const SizedBox(
            height: 12,
          ),
          dotRow("ButtonSize.small", context),
          dotRow("ButtonSize.medium", context),
          dotRow("ButtonSize.large", context),
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              NomoOutlineContainer(
                width: 600,
                border: Border.all(color: context.colors.primary),
                background: context.colors.background,
                child: buttonSectionText(context),
              ),
              const SizedBox(
                width: 12,
              ),
              NomoOutlineContainer(
                width: 600,
                border: Border.all(color: context.colors.primary),
                background: context.colors.background,
                child: buttonSectionIcon(context),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget dotRow(String text, BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.fiber_manual_record,
          size: 12,
        ),
        const SizedBox(width: 8),
        NomoText(
          text,
          style: context.typography.b3,
        ),
      ],
    );
  }

  Widget buttonSectionIcon(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            NomoButton.icon(
              size: ButtonSize.small,
              borderRadius: BorderRadius.circular(100.0),
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              borderRadius: BorderRadius.circular(100.0),
              size: ButtonSize.medium,
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              borderRadius: BorderRadius.circular(100.0),
              size: ButtonSize.large,
              onPressed: () => (),
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
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              size: ButtonSize.medium,
              borderRadius: BorderRadius.circular(8.0),
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              size: ButtonSize.large,
              borderRadius: BorderRadius.circular(8.0),
              onPressed: () => (),
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
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              size: ButtonSize.medium,
              border: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
              elevation: 3.0,
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              size: ButtonSize.large,
              border: BorderSide.none,
              borderRadius: BorderRadius.circular(8.0),
              elevation: 3.0,
              onPressed: () => (),
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
              onPressed: () => (),
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
              onPressed: () => (),
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
              onPressed: () => (),
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
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              isLoading: true,
              elevation: 3.0,
              border: BorderSide.none,
              borderRadius: BorderRadius.circular(100.0),
              size: ButtonSize.medium,
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
            const SizedBox(width: 16),
            NomoButton.icon(
              isLoading: true,
              elevation: 3.0,
              border: BorderSide.none,
              borderRadius: BorderRadius.circular(100.0),
              size: ButtonSize.large,
              onPressed: () => (),
              icon: const Icon(Icons.download),
            ),
          ],
        ),
      ],
    );
  }

  Widget buttonSectionText(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            NomoButton.text(
              elevation: 0.0,
              border: const BorderSide(color: Color(0xFF272626)),
              size: ButtonSize.small,
              onPressed: () {},
              text: "Search",
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              size: ButtonSize.medium,
              onPressed: () {},
              text: "Search",
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              color: Colors.red,
              textStyle: context.typography.h1.copyWith(
                color: Colors.black,
              ),
              size: ButtonSize.large,
              onPressed: () {},
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
              onPressed: () {},
              text: "Search",
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              size: ButtonSize.medium,
              borderRadius: BorderRadius.circular(12.0),
              onPressed: () {},
              text: "Search",
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              size: ButtonSize.large,
              borderRadius: BorderRadius.circular(12.0),
              onPressed: () => {},
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
              onPressed: () => {},
              text: "Search",
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              size: ButtonSize.medium,
              leading: const Icon(Icons.search),
              borderRadius: BorderRadius.circular(12.0),
              onPressed: () => {},
              text: "Search",
              trailing: const Icon(Icons.search),
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              size: ButtonSize.large,
              leading: const Icon(Icons.search),
              borderRadius: BorderRadius.circular(12.0),
              onPressed: () => {},
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
              onPressed: () => {},
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
              onPressed: () => {},
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
              onPressed: () => {},
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
              onPressed: () => {},
              text: "Search",
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              isLoading: true,
              size: ButtonSize.medium,
              elevation: 3.0,
              border: BorderSide.none,
              borderRadius: BorderRadius.circular(12.0),
              onPressed: () => {},
              text: "Search",
            ),
            const SizedBox(width: 16),
            NomoButton.text(
              isLoading: true,
              size: ButtonSize.large,
              elevation: 3.0,
              border: BorderSide.none,
              borderRadius: BorderRadius.circular(12.0),
              onPressed: () => {},
              text: "Search",
            ),
          ],
        ),
      ],
    );
  }
}
