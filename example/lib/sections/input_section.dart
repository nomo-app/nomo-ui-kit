import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/components/app/routebody/nomo_route_body.dart';
import 'package:nomo_ui_kit/components/buttons/primary/nomo_primary_button.dart';
import 'package:nomo_ui_kit/components/input/form/nomo_form.dart';
import 'package:nomo_ui_kit/components/input/textInput/nomo_input.dart';
import 'package:nomo_ui_kit/components/text/nomo_text.dart';
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

  late final NomoFormValues formValues = NomoFormValues();
  late final NomoFormValidator formValidator = NomoFormValidator();

  @override
  void dispose() {
    formValues.dispose();
    formValidator.dispose();
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
              background: context.colors.background1.darken(0.05),
              keyboardType: TextInputType.number,
              style: context.typography.h1,
              leading: Icon(
                Icons.search,
                color: context.colors.foreground1,
              ),
              trailling: Icon(
                Icons.abc,
                color: context.colors.foreground1,
              ),
              titleStyle: context.typography.b1,
              placeHolder: "Test",
              placeHolderStyle: context.typography.b1,
              title: "Title",
              usePlaceholderAsTitle: true,
              padding: const EdgeInsets.all(2),
              onChanged: (value) {
                debugPrint("Value changed $value");
              },
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
                  background: context.colors.background1.darken(0.05),
                  keyboardType: TextInputType.number,
                  style: context.typography.b3,
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(12), bottom: Radius.circular(4)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                  placeHolder: "Amount",
                  minLines: 1,
                  textAlign: TextAlign.end,
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
                    return null;
                  },
                  margin: const EdgeInsets.all(2),
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
                        background: context.colors.background1.darken(0.05),
                        keyboardType: TextInputType.number,
                        style: context.typography.b3,
                        borderRadius: BorderRadius.circular(4)
                            .copyWith(bottomLeft: const Radius.circular(12)),
                        margin: const EdgeInsets.all(2),
                      ),
                    ),
                    Expanded(
                      child: NomoInput(
                        background: context.colors.background1.darken(0.05),
                        keyboardType: TextInputType.number,
                        style: context.typography.b3,
                        borderRadius: BorderRadius.circular(4)
                            .copyWith(bottomRight: const Radius.circular(12)),
                        margin: const EdgeInsets.all(2),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        32.vSpacing,
        NomoText(
          "Form",
          style: context.typography.h2,
        ),
        16.vSpacing,
        NomoForm(
          values: formValues,
          validator: formValidator,
          child: Column(
            children: [
              NomoInput(
                formKey: "input1",
                placeHolder: "Input1",
                usePlaceholderAsTitle: false,
                placeHolderStyle: context.typography.b3.copyWith(
                    color: context.colors.foreground1.withOpacity(0.5)),
                titleStyle: context.typography.h1,
                title: "Input1",
                style: context.typography.b3,
                margin: const EdgeInsets.symmetric(vertical: 4),
                validator: (value) {
                  if (value.length < 10) {
                    return "Value to small";
                  }
                  return null;
                },
              ),
              const NomoInput(
                formKey: "input2",
              ),
              SizedBox(
                height: 100,
                child: NomoInput(
                  formKey: "input3",
                  placeHolder: "Aaaaaa",
                  placeHolderStyle: context.typography.h1,
                  minLines: null,
                  maxLines: null,
                ),
              ),
              PrimaryNomoButton(
                text: "Submit",
                textStyle: context.typography.b3,
                width: 160,
                height: 48,
                onPressed: () {
                  formValidator.validate();
                },
              ),
            ].spacingV(12),
          ),
        ),
        16.vSpacing,
        NomoText(
          "Form Values",
          style: context.typography.h1,
        ),
        8.vSpacing,
        ListenableBuilder(
          listenable: formValues,
          builder: (context, child) {
            return NomoText("${formValues.value}");
          },
        ),
        16.vSpacing,
        NomoText(
          "Form Validation",
          style: context.typography.h1,
        ),
        8.vSpacing,
        ListenableBuilder(
          listenable: formValidator,
          builder: (context, child) {
            return NomoText(
                "${formValidator.values}   =>   ${formValidator.isValid}");
          },
        ),
      ],
    );
  }
}
