import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:nomo_ui_kit/components/button/button_const.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/components/card/nomo_card.dart';
import 'package:nomo_ui_kit/components/dialog/nomo_dialog.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/drop_down_item.dart';
import 'package:nomo_ui_kit/components/dropdownmenu/dropdownmenu.dart';

class DialogWrapper extends StatelessWidget {
  const DialogWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 500,
      decoration: BoxDecoration(
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
          const NomoCard(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            elevation: 2,
            color: Colors.white,
            width: 300,
            height: 300,
            child: Center(
              child: Text("Nomo Card"),
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
        ],
      ),
    );
  }
}
