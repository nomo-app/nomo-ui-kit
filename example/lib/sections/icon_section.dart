import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app/app.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/icons/nomo_icons.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

final icons = allIcons.entries.toList();

class IconSection extends StatefulWidget {
  const IconSection({Key? key}) : super(key: key);

  @override
  State<IconSection> createState() => _IconSectionState();
}

class _IconSectionState extends State<IconSection> {
  late final ValueNotifier<String> searchNotifier;

  @override
  void initState() {
    searchNotifier = ValueNotifier('');

    super.initState();
  }

  @override
  void dispose() {
    searchNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      slivers: [
        NomoText(
          "Icons",
          style: context.typography.h3,
        ).toBox,
        12.vSpacing.toBox,
        NomoText(
          "We provide a huge set of icons of existing Design Libraries",
          style: context.typography.b1,
        ).toBox,
        32.vSpacing.toBox,
        NomoInput(
          valueNotifier: searchNotifier,
          style: context.typography.b3,
        ).toBox,
        16.vSpacing.toBox,
        ValueListenableBuilder(
          valueListenable: searchNotifier,
          builder: (context, searchText, child) {
            final filteredList = searchText.isNotEmpty
                ? icons
                    .where((element) =>
                        element.key.toLowerCase().contains(searchText))
                    .toList()
                : icons;

            return SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100,
                crossAxisSpacing: 16,
              ),
              itemCount: filteredList.length,
              itemBuilder: (context, index) {
                final entry = filteredList[index];

                return Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          entry.value,
                          color: context.colors.foreground1,
                        ),
                        4.vSpacing,
                        NomoText(
                          entry.key,
                          maxLines: 1,
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
