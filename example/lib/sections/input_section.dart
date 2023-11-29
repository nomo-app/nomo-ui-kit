import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/icons/nomo_icons.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';
import 'package:nomo_ui_kit/utils/layout_extensions.dart';

class InputSection extends StatefulWidget {
  const InputSection({Key? key}) : super(key: key);

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  late final ValueNotifier<String> amount = ValueNotifier('')
    ..addListener(() {
      //   print("Amount changed ${amount.value}");
    });

  @override
  void dispose() {
    amount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NomoRouteBody(
      children: [
        Center(
          child: SizedBox(
            width: 400,
            child: NomoInput(
              background: context.colors.background.darken(0.05),
              keyboardType: TextInputType.number,
              style: context.typography.b3,
            ),
          ),
        ),
        16.vSpacing,
        Center(
          child: SizedBox(
            width: 400,
            child: Column(
              children: [
                NomoInput(
                  background: context.colors.background.darken(0.05),
                  keyboardType: TextInputType.number,
                  style: context.typography.b3,
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12), bottom: Radius.circular(4)),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  placeHolder: "Amount",
                  usePlaceholderAsTitle: true,
                  minLines: 1,
                  leading: Icon(
                    NomoIcons.magnifyingGlass,
                    color: context.colors.foreground1,
                    size: 18,
                  ),
                  valueNotifier: amount,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Value cannot be empty";
                    }
                    if (value.length < 3) {
                      return "Value to small";
                    }
                  },
                  trailling: PrimaryNomoButton(
                    backgroundColor: context.colors.primary,
                    text: "max",
                    width: 64,
                    height: 24,
                    elevation: 0,
                    borderRadius: BorderRadius.circular(12),
                    onPressed: () {
                      amount.value = "Max";
                    },
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: NomoInput(
                        background: context.colors.background.darken(0.05),
                        keyboardType: TextInputType.number,
                        style: context.typography.b3,
                        borderRadius: BorderRadius.circular(4).copyWith(bottomLeft: const Radius.circular(12)),
                      ),
                    ),
                    Expanded(
                      child: NomoInput(
                        background: context.colors.background.darken(0.05),
                        keyboardType: TextInputType.number,
                        style: context.typography.b3,
                        borderRadius: BorderRadius.circular(4).copyWith(bottomRight: const Radius.circular(12)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
