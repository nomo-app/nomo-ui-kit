import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nomo_ui_kit/components/button/button_const.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/dialog/nomo_dialog.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/drop_down_item.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/dropdownmenu.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
import 'package:nomo_ui_kit/nomo_ui_kit_base.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

class DialogWrapper extends StatelessWidget {
  const DialogWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageIndexNotifier = ValueNotifier(0);

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: const Color(0xFF272626)),
      ),
      child: Row(
        children: [
          NomoButton.text(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return NomoDialog(
                    title: "Nomo Dialog",
                    content: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10, // Number of items to generate
                          itemBuilder: (context, index) {
                            return Container(
                              height: 60,
                              color: Colors.blue,
                              margin: const EdgeInsets.symmetric(vertical: 8.0),
                              alignment: Alignment.center,
                              child: Text(
                                'Container ${index + 1}',
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                    actions: [
                      Expanded(
                        child: NomoButton.text(
                          onPressed: () => Navigator.pop(context),
                          text: "Cancel",
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            text: "Show Dialog",
            size: ButtonSize.small,
          ),
          const SizedBox(
            width: 20,
          ),
          NomoCard(
            color: context.colors.background,
            elevation: 3,
            borderRadius: const BorderRadius.all(Radius.circular(18.0)),
            width: 300,
            height: 300,
            child: Center(
              child: NomoText(
                "Nomo Card",
                style: context.typography.h1.copyWith(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 120,
          ),
          NomoDropDownMenu<int>(
            onChanged: (p0) {
              Logger().i("Selected item value: $p0");
            },
            items: const [
              NomoDropdownItem<int>(displayText: "Item 1", value: 1),
              NomoDropdownItem<int>(
                  displayText:
                      "Item 2 is a very long item and it will fit insid the dropdown menu",
                  value: 2),
              NomoDropdownItem<int>(
                  displayText: "Item 3 is kinda long", value: 3),
              NomoDropdownItem<int>(displayText: "Item 4", value: 4),
              NomoDropdownItem<int>(displayText: "Item 5", value: 5),
            ],
            height: 40,
            width: 140,
          ),
          NomoButton.text(
              onPressed: () {
                WoltModalSheet.show(
                  context: context,
                  pageListBuilder: (context) {
                    return [
                      page1(context, pageIndexNotifier),
                      page2(context, pageIndexNotifier),
                    ];
                  },
                  pageIndexNotifier: pageIndexNotifier,
                  modalTypeBuilder: (context) {
                    final size = MediaQuery.of(context).size.width;
                    if (size < 800.0) {
                      return WoltModalType.bottomSheet;
                    } else {
                      return WoltModalType.dialog;
                    }
                  },
                  //   routeSettings: RouteSettings(name: 'modal_sheet'),

                  onModalDismissedWithBarrierTap: () {
                    debugPrint('Closed modal sheet with barrier tap');
                    Navigator.of(context).pop();
                    pageIndexNotifier.value = 0;
                  },
                  maxDialogWidth: 560,
                  minDialogWidth: 400,
                  minPageHeight: 0.0,
                  maxPageHeight: 0.9,
                );
              },
              text: "Show Modal Sheet",
              size: ButtonSize.small),
        ],
      ),
    );
  }

  WoltModalSheetPage page2(
      BuildContext modalSheetContext, ValueNotifier<int> pageIndexNotifier) {
    return WoltModalSheetPage.withCustomSliverList(
      stickyActionBar: Padding(
        padding: const EdgeInsets.fromLTRB(50, 50 / 4, 50, 50),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(modalSheetContext).pop();
            pageIndexNotifier.value = 0;
          },
          child: const SizedBox(
            height: 10,
            width: double.infinity,
            child: Center(child: Text('Close')),
          ),
        ),
      ),
      pageTitle: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Text(
          'Material Colors',
        ),
      ),
      leadingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(30),
        icon: const Icon(Icons.arrow_back_rounded),
        onPressed: () => pageIndexNotifier.value = pageIndexNotifier.value - 1,
      ),
      trailingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(30),
        icon: const Icon(Icons.close),
        onPressed: () {
          Navigator.of(modalSheetContext).pop();
          pageIndexNotifier.value = 0;
        },
      ),
      sliverList: SliverList(
        delegate: SliverChildBuilderDelegate(
          (_, index) => Container(
            height: 60,
            color: Colors.blue,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            alignment: Alignment.center,
            child: Text(
              'Container ${index + 1}',
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          childCount: 10,
        ),
      ),
    );
  }

  WoltModalSheetPage page1(
      BuildContext modalSheetContext, ValueNotifier<int> pageIndexNotifier) {
    return WoltModalSheetPage.withSingleChild(
      hasSabGradient: false,
      stickyActionBar: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(modalSheetContext).pop(),
              child: const SizedBox(
                height: 20,
                width: double.infinity,
                child: Center(child: Text('Cancel')),
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () =>
                  pageIndexNotifier.value = pageIndexNotifier.value + 1,
              child: const SizedBox(
                height: 20,
                width: double.infinity,
                child: Center(child: Text('Next page')),
              ),
            ),
          ],
        ),
      ),
      topBarTitle: Text(
        'Pagination',
      ),
      isTopBarLayerAlwaysVisible: true,
      trailingNavBarWidget: IconButton(
        padding: const EdgeInsets.all(18),
        icon: const Icon(Icons.close),
        onPressed: Navigator.of(modalSheetContext).pop,
      ),
      child: const Padding(
          padding: EdgeInsets.fromLTRB(
            10,
            30,
            30,
            100,
          ),
          child: Text(
            '''
Pagination involves a sequence of screens the user navigates sequentially. We chose a lateral motion for these transitions. When proceeding forward, the next screen emerges from the right; moving backward, the screen reverts to its original position. We felt that sliding the next screen entirely from the right could be overly distracting. As a result, we decided to move and fade in the next page using 30% of the modal side.
''',
          )),
    );
  }
}
