import 'dart:math';

import 'package:example/buttons/icon_button_wrapper.dart';
import 'package:example/buttons/text_button_wrapper.dart';
import 'package:example/dialogs/dialog_wrapper.dart';
import 'package:example/routes.dart';
import 'package:flutter/material.dart';
import 'package:nomo_ui_kit/app/nomo_app.dart';
import 'package:nomo_ui_kit/components/app_bar/nomo_app_bar.dart';
import 'package:nomo_ui_kit/components/button/nomo_button.dart';
import 'package:nomo_ui_kit/components/outline_container/nomo_outline_container.dart';
import 'package:nomo_ui_kit/theme/nomo_theme.dart';

void main() {
  // const savedColorMode = ColorMode.LIGHT;

  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return NomoApp(
      theme: NomoThemeData(
        colorTheme: ColorMode.LIGHT.theme,
        sizingTheme: SizingMode.LARGE.theme,
        textTheme: typography,
      ),
      supportedLocales: const [
        Locale('en', 'US'),
      ],
      routes: AppRoutes.routes,
      nestedRoutes: AppRoutes.nestedRoutes,
      nestedNavigatorWrapper: (nav, context) {
        return Scaffold(
          appBar: PreferredSize(
            preferredSize:
                Size.fromHeight(context.componentSizes.appBarTheme.height),
            child: NomoAppBar(
              title: const Text("Nested Navigator"),
              trailling: ElevatedButton(
                onPressed: () {
                  final rand = Random().nextInt(ColorMode.values.length);
                  ThemeProvider.of(context)
                      .changeColorTheme(ColorMode.values[rand]);
                },
                child: Text("Theme Switcher"),
              ),
            ),
          ),
          body: nav,
        );
      },
    );
  }
}

class MultiWrapper extends StatelessWidget {
  final Widget child;

  final List<Widget Function(BuildContext context, Widget child)> builders;

  const MultiWrapper({Key? key, required this.builders, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return builders.fold<Widget>(
      child,
      (previousValue, element) => element(context, previousValue),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(18.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // NomoOutlineContainer(
            //     //   background: Colors.amber,
            //     ),
            Text(
              "Text Button",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            TextButtonWrapper(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Icon Button",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            IconButtonWrapper(),
            SizedBox(
              height: 20,
            ),
            Text(
              "Dialog / Card",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 20,
            ),
            DialogWrapper(),
          ],
        ),
      ),
    );
  }
}
